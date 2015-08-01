<%@page import="java.util.List"%>
<%@page import="com.ppool.dto.ProjectComment"%>
<%@page import="com.ppool.dto.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.css">
 	<link rel="stylesheet" href="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.theme.css">
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script src="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.js"></script>
	<style type="text/css">
	th{
		text-align:center;
		font-weight: normal;
	}
	td{
		text-align:left;
		font-size:12pt;
		margin:5px;
		padding:6px;
	}
	caption {font-weight:700; font-size:20px; padding:5px; color:#1BA6B2; text-align:left; margin-bottom:5px}
	input.sub {
		font-size: 15pt;
	}
	.ul_checkbox{
		list-style:none;
		text-align: left;
	}
	.ul_checkbox li{
		margin:2 5 2 5;
		display:inline-block; 
	}
	textarea{
		font-size: 12pt
	} 
	</style>
	
	<script type="text/javascript">
	
	$(document).ready(function (){
		if ('${bookmarkable}' == '0') { 
			$("#bookmark").click(function(){
		        var result = confirm('${project.projectTitle}를 북마크에 등록하시겠습니까?');
		        if(result) {
		        	//yes
		        	var url = "/ppool/projectbookmarks.action?userNo=" + "${loginuser.userNo}" + "&projectNo="+"${project.projectNo}";
		        	$(location).attr("href",url);
		        }else{
		        	
		        }
			});
		 }
		$('#list').click(function(){
			$(location).attr("href", "/ppool/projectlist.action");
		});
		$('#modify').click(function(){
			$(location).attr("href", "/ppool/projectmodify.action?projectNo=${project.projectNo}");
		});
		$('#delete').click(function(){
			var result = confirm('삭제 하시겠습니까?');
			if(result){
				$('#deleteform').submit();
			}
		});
		
		if('${skills}'.length >0 ){
			var skills = '${skills}'.split(",");
			$.each(skills, function(index, obj){
				$('.skill input[value='+obj+']').attr('checked', true);
			})
		}
		
		if('${locations}'.length >0){
			var locations = '${locations}'.split(",");
			$.each(locations, function(index, obj){
				$('.location input[value='+obj+']').attr('checked', true);
			})
		}
		
		$('.skill input, .location input').attr('disabled','disabled');
		
		$("#commentregister").click(function() {
			if( $('#commentcontent').val().trim() == "" ){
				alert("댓글을 입력하고 등록하세요")
				$('#commentcontent').focus();
				return;
			}
			
			var form = $('#commentform').serialize();
			
			$.ajax({
				url : "/ppool/commentregister.action",
				async : true,
				method : "POST",
				data : form,
				success : function(result) {
					/* if (result != "success") {
						alert('입력 실패!');
						console.log(data);
					} else { */
						alert('입력 성공!');
						$('#commentcontent').val("");
						$( "#tab" ).append(result);
						$('.nocomment').css("display", "none");
					//}
				},
				error : function(xhr, status, error) {
					alert('입력이 에러');
				}
			});//ajax
		});	//click 함수
		
		$('.ed_bt').click(function(){
			var no = $(this).attr("id").substr(2);
			var hei = $('#a'+no).height();

			if(hei < 95){
				$('#b'+no).attr('rows', 5);
			}
			if(hei >= 95){
				$('#b'+no).height(hei);
			}
			
			$('#a'+no).css('display', 'none');
			$('#b'+no).css('display', 'block');
		})	
		
		
	});//ready
	
	
	////////////////////////////////////////////////////////// 신고기능
	
	$(function(){
		var dialog, form,
		
		reportcontent =$("#reportcontent"),
		tips = $( ".validateTips" );
		allFields = $( [] ).add( reportcontent );
		
		//console.log($("#dialog-form").dialog);
	 	
		 function updateTips( t ) {
		      tips
		        .text( t )
		        .addClass( "ui-state-highlight" );
		      setTimeout(function() {
		        tips.removeClass( "ui-state-highlight", 1500 );
		      }, 500 );
		    }
		
		function checkLength( o, n, min, max ) {
		      if ( o.val().length > max || o.val().length < min ) {
		        o.addClass( "ui-state-error" );
		        updateTips( "신고사유를 입력해주세요" );
		        return false;
		      } else {
		        return true;
		      }
		    }	

		function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		
		function addRegister(){
	    	 var valid = true;
			allFields.removeClass("ui-state-error");
			
			valid = valid && checkLength( reportcontent, "reportcontent",1,100);			
			
			//var form=$('#reportform').serialize();
			
			 if ( valid ) {
				 $("#reportform").submit();
		        dialog.dialog( "close" );
		      } 
				 //$(location).attr('href','insertreport.action?'+form);
				/*  $("#reportform").submit(); */
				
					$.ajax({
						url:"/ppool/insertreport.action",
						method:"POST",
						async:true,
						data:{
							userNo : $("#userNo").val(),
							projectNo :$("#projectNo").val(),
							reportContent : $("#reportcontent").val()
						}, 
						success: function(result){
							alert('신고되었습니다');
							dialog.dialog( "close" );
						},
						error:function(){
							alert('오류');
						}				
					})
							        
		      return valid; 
		}
		
		dialog = $("#dialog-form").dialog({
	 		  autoOpen: false,
	 	      height: 450,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"신고하기":addRegister,
	 	    	  		"취소": function(){
	 	    	  			dialog.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	 form[0].reset();
	 	    	  allFields.removeClass("ui-state-error");
	 	      }
	 	});
		
	 	
	 /*  form = dialog.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister();
	 	    }); */
	 	
	 	$("#report").on("click", function(event){
	 	     dialog.dialog( 'open' );
	 	    });
	});	
	
	</script>
	
</head>
<body>

<c:import url="/WEB-INF/views/include/header.jsp"/>

<!--------------------------------------------------- 신고 모달 ------------------------------------------------->

<div id="dialog-form" title="신고하기">
  <p class="validateTips"></p>
  	  <form id="reportform">
  	  	  <input type="hidden" id="projectNo" name="projectNo" value="${project.projectNo}">
  	  	  <input type="hidden" id="userNo" name="userNo" value="${loginuser.userNo}">
	      <label for="projectTitle2">제목</label>
	      <input type="text" name="projectTitle2" id="projecttitle2" value="${project.projectTitle}" style="width: 85%" class="text ui-widget-content ui-corner-all" readonly="readonly">
	      <br/>
	      <label for="projectUser">작성자</label>
	      <input type="text" name="projectUser2" id="projectuser2" value="${project.userName}" style="width: 80%" class="text ui-widget-content ui-corner-all" readonly="readonly">
	      <br/>
	      <label for="reportcontent">사유입력</label>
	      <br/>
	      <input type="text" name="reportContent" id="reportcontent" class="text ui-widget-content ui-corner-all" style="height: 150px; width: 100%;">
	 
	      <!-- Allow form submission with keyboard without duplicating the dialog button -->
	      <!-- <input type="submit" tabindex="-1" style="position:absolute; top:-1000px"> -->
	  </form>
</div>

<!--------------------------------------------------- 신고 모달 ------------------------------------------------->

	<div style="width:72%;float: right" ><br/>
		<table style="width: 100%; border:groove;" class="table">
			<caption >상세뷰
			<img src="/ppool/resources/images/report.png" id="report" style="cursor: pointer;" align="right">
			</caption>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">프로젝트명</th>
				<td style="width: 85%" colspan="3">
					<div style="width: 100%;">${ project.projectTitle}</div>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">담당자</td>
				<td style="width: 35%">
					<div style="text-align: left">${project.userName}</div>
				</td>
				<th style="width: 15%" bgcolor="#FF9147">연락처</td>
				<td style="width: 35%; " align="left">
					<div style="width: 100%;">${ project.projectPhone}</div>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">이메일</td>
				<td style="width: 15%" colspan="3" align="left">
					<div style="width: 100%;">${ project.projectEmail}</div>
				</td>
			</tr>
		</table>
		<br/>
		<table style="text-align: center; width: 100%; border:groove; " class="table">
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">개발</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox skill"  >				
						<li><input type="checkbox" name="skill" value="100" > .NET</li>
						<li><input type="checkbox" name="skill" value="101" > ANDROID</li>
						<li><input type="checkbox" name="skill" value="102" > ASP</li>
						<li><input type="checkbox" name="skill" value="103" > C</li>
						<br/>	
						<li><input type="checkbox" name="skill" value="104" > C#</li>
						<li><input type="checkbox" name="skill" value="105" > C++</li>
						<li><input type="checkbox" name="skill" value="106" > CSS</li>
						<li><input type="checkbox" name="skill" value="107" > DB</li>
						<br/>
						<li><input type="checkbox" name="skill" value="108" > DELPHI</li>
						<li><input type="checkbox" name="skill" value="109" > HTML</li>
						<li><input type="checkbox" name="skill" value="110" > IOS</li>
						<li><input type="checkbox" name="skill" value="111" > JAVA</li>
						<br/>
						<li><input type="checkbox" name="skill" value="112" > JSP</li>
						<li><input type="checkbox" name="skill" value="113" > LINUX</li>
						<li><input type="checkbox" name="skill" value="114" > PHP</li>
						<li><input type="checkbox" name="skill" value="115" > PYTHON</li>
						<li><input type="checkbox" name="skill" value="116" > RUBY</li>
					</ul>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">디자인</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox skill">	
						<li><input type="checkbox" name="skill" value="200" > HTML5</li>
						<li><input type="checkbox" name="skill" value="201" > 그래픽디자인</li>
						<li><input type="checkbox" name="skill" value="202" > 모바일 </li>
						<li><input type="checkbox" name="skill" value="203" > 웹디자인 </li>
						<br/>
						<li><input type="checkbox" name="skill" value="204" > 파워포인트 </li>
						<li><input type="checkbox" name="skill" value="205" > 포토샵편집 </li>
						<li><input type="checkbox" name="skill" value="206" > 플래시 </li>
						<li><input type="checkbox" name="skill" value="207" > 3D </li>
					</ul>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">지역</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox location">	
						<li><input type="checkbox" name="location" value="11" > 강북</li>
						<li><input type="checkbox" name="location" value="12" > 강동</li>
						<li><input type="checkbox" name="location" value="13" > 강남</li>
						<li><input type="checkbox" name="location" value="14" > 강서 </li>
						<li><input type="checkbox" name="location" value="15" > 용인 </li>
						<li><input type="checkbox" name="location" value="16" > 화성 </li>
						<li><input type="checkbox" name="location" value="17" > 일산 </li>
						<li><input type="checkbox" name="location" value="18" > 성남 </li>
						<br/>
						<li><input type="checkbox" name="location" value="19" > 수원 </li>
						<li><input type="checkbox" name="location" value="20" > 충북 </li>
						<li><input type="checkbox" name="location" value="21" > 충남 </li>
						<li><input type="checkbox" name="location" value="22" > 대전 </li>
						<li><input type="checkbox" name="location" value="23" > 강원 </li>
						<li><input type="checkbox" name="location" value="24" > 경북 </li>
						<li><input type="checkbox" name="location" value="25" > 경남 </li>
						<li><input type="checkbox" name="location" value="26" > 대구 </li>
						<br/>
						<li><input type="checkbox" name="location" value="27" > 전북 </li>
						<li><input type="checkbox" name="location" value="28" > 전남 </li>
						<li><input type="checkbox" name="location" value="29" > 광주 </li>
						<li><input type="checkbox" name="location" value="30" > 부산 </li>
						<li><input type="checkbox" name="location" value="31" > 울산 </li>
						<li><input type="checkbox" name="location" value="32" > 제주 </li>
						<li><input type="checkbox" name="location" value="33" > 해외 </li>
					</ul>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">프로젝트 설명</td>
				<td style="width: 85%" colspan="3">
					<textarea name="projectContent" id="projectcontent" rows="20" 
					style="max-height: 600px;width:100%;resize:none;font-size: 15pt;" readonly="readonly;">${project.projectContent}</textarea>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">모집인원</td>
				<td style="width: 35%">
					<div style="width: 100%;">${ project.projectTeamCount}명</div>
				</td>
				<th style="width: 15%" bgcolor="#FF9147">모집 마감일</td>
				<td style="width: 35%" align="left">
					<f:formatDate value="${ project.projectExpire}" pattern="yyyy년 MM월 dd일" var="expire"/>
					<div style="width: 100%;">${expire}</div>
				</td>
			</tr>
			<tr>
				<th bgcolor="#FF9147">프로젝트 기간</td>
				<td align="left" style="width: 85%" colspan="3">
					<f:formatDate value="${ project.projectStartDay}" pattern="yyyy년 MM월 dd일" var="start"/>
					<f:formatDate value="${ project.projectEndDay}" pattern="yyyy년 MM월 dd일" var="end"/>
					<div style="width: 100%;">${start} ~ ${end}</div>
				</td>
			</tr>
		</table>
		<br/>
		<div style="width:100%;" align="right" >
			<c:if test="${loginuser.userNo != null}">
				<c:choose>
					<c:when test="${loginuser.userNo eq project.userNo}">
						<form id="deleteform" action="/ppool/projectdelete.action" method="POST">
							<input type="hidden" name="projectNo" value="${project.projectNo }"/>
						</form>
						<img src="/ppool/resources/images/modify.png" id="modify" style="cursor: pointer;">&nbsp;
						<img src="/ppool/resources/images/delete.png" id="delete" style="cursor: pointer;">&nbsp;
					</c:when>
					<c:when test="${loginuser.userNo ne project.userNo}">
						<img src="/ppool/resources/images/bookmark.png" id="bookmark" style="cursor: pointer;">&nbsp;
					</c:when>
				</c:choose>
			</c:if>
			<img src="/ppool/resources/images/list.png" id="list" style="cursor: pointer;">
			
		</div>
		
	
	<!------------------ comment 보여주기 영역 시작 -------------------->
			<br />
			<br />
	
			<c:set var="comments" value="${project.comments }"/>
			<table style="width: 100%; border: solid 1px; margin: 0 auto" id="tab">
			
			<% pageContext.setAttribute("enter", "\n"); %>
			<!-- comment 있을경우 표시 영역 -->
				<c:if test="${!empty comments}">
					<c:forEach var="comment" items="${comments }" > 
		        		<tr>
		        			<td class="yescomment" style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
								<div style="color:#3333dd;font-weight: bold;">${comment.userName }</div>
								<input type="hidden" name="commentNo" value='${comment.userNo }' />
									<br/>
								<div id="a${comment.commentNo}" class="a" style="width:100%;background-color:#D4D4D4;display: block">
									${fn:replace(comment.commentContent , enter, '<br/>')}
								</div>
								<textarea id="b${comment.commentNo}" class="b" name="commentContent" 
											style="width:100%;background-color: lightyellow;resize:vertical ;display: none">${comment.commentContent }</textarea>
									<br/>
								
								<f:formatDate value="${ comment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
								<div style="color: gray;">${registerday}</div>
			        			<div >
			        				<c:if test="${loginuser.userNo eq comment.userNo }">
				        				<div style="text-align: right;">
				        				<input type="button" style="color: orange;" class="ed_bt" id="ed${comment.commentNo}" value="편집"/>&nbsp;
				        				<input type="button" style="color: maroon;" class="de_bt" value="삭제"/>&nbsp;
				        				<input type="button" style="color: cteal;" class="re_bt" value="댓글"/>
					                    </div>
			        				</c:if>
			        				<c:if test="${loginuser.userNo ne comment.userNo }">
					                    <div style="text-align: right;">
					                    	<input type="button" style="color: cteal;" class="ed_bt" value="댓글"/>
					                    </div>
				                    </c:if>
		                		</div>
		                	</td>
		                </tr>
		                
		        		<tr >
			                <td class="editform" style='display:none;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
								<form id="updatecommentform${ comment.commentNo}" action="updatecomment.action" method="post">
									<%-- <input type="hidden" name="boardno" value='<%=board.getBoardNo()%>' />
									<input type="hidden" name="pageno" value='<%=pageNo %>' />
									<input type="hidden" name="commentno" value='<%=comment.getCommentNo() %>' /> --%>
									
									<div style="color:#3333dd;font-weight: bold;" >${ comment.commentNo}</div><br/><br/>
									<textarea id="updatecontent${comment.commentNo }" name="updatecontent" rows="5" 
											style="width:100%; background-color: lightyellow; resize:vertical;">${comment.commentContent }</textarea><br/><br/>
									<div style="color: gray;">${ comment.commentRegisterDay}</div>
			                		<div >
										<div style="text-align: right;">
											<a href="javascript:updateComment(${ comment.commentNo});" style="color: red;">수정</a> 
											&nbsp; 
											<!-- 취소에서는 해당 form의 상태를 초기화(수정중에 취소하면 수정중이던것을 초기화하고 기존화면을 불러준다)  -->
											<!-- reset을 하지 않으면 다시 편집을 눌렀을 때 아까 수정하면 글자들이 나온다.-->
											<a href="javascript:document.getElementById('updatecommentform${ comment.commentNo}').reset();
													toggleCommentStatus(${ comment.commentNo},false)" style="color:blue;">취소</a>
										</div>
									</div>
								</form>
							</td>
		               </tr>
		               
					</c:forEach>
				</c:if>
				
						<!-- comment 없을경우 표시 영역 -->
				<c:if test="${empty comments}">
					<tr >
	        			<td class="nocomment" style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;background-color: #FAED7D'>
							<h4 style="text-align: center">
								작성된 댓글이 없습니다.
							</h4>
	                	</td>
	                </tr>
				</c:if>
				
			</table>
				
			<!------------------ comment 쓰기 영역 시작 -------------------->
			<br />
			<br />

			<form id="commentform">
					<input type="hidden" id="projectno" name="projectNo" value='${project.projectNo }' />
					<input type="hidden" id="userno" name="userNo" value='${loginuser.userNo }' />
				<table style="width: 100%; border: solid 1px; margin: 0 auto">
					<tr>
						<td style="width: 90%">
							<textarea id="commentcontent" name="commentContent" rows="5" style="width: 100%;resize:vertical" ></textarea>
						</td>
						<td style="width: 10%;" >
							<img src="/ppool/resources/images/register.png" id="commentregister" style="cursor: pointer;">
						</td>
					</tr>
				</table>
			</form>

			<hr align="center" style="width: 100%;" />
			<br/><br/>
</div>
	
</body>
</html>
