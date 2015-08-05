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
	<script src='/ppool/resources/js/projectdetail.js'></script>
	
	<script type="text/javascript">
	$(document).ready(function (){
		$(".bookmark").click(function(){

			if ('${favoriteProjects}' == '0') { 

		        var result = confirm('${project.projectTitle}를 북마크에 등록하시겠습니까?');
		        if(result) {
		        	//yes
		        	var url = "/ppool/projectbookmarks.action?userNo=" + "${loginuser.userNo}" + "&projectNo="+"${project.projectNo}";
		        	$(location).attr("href",url);
		        }else{
		        }
			 }else if('${favoriteProjects}' == '1'){
				var result2 = confirm('${project.projectTitle}를 북마크에서 삭제하시겠습니까?');
				if(result2) {
					var url ="/ppool/projectbookmarkdelete.action?projectNo="+"${project.projectNo}";
					$(location).attr("href",url);
				}else{
				}
			 }
		});
		
		$('#modify').click(function(){
			$(location).attr("href", "/ppool/projectmodify.action?projectNo=${project.projectNo}");
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
				// $("#reportform").submit();
		       
		     
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
			 }
							        
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
	 	    
	 	    
	 	    
	 	//////////////////////////////////////////프로젝트 참여//////////////////////////
	 	$("#join").click(function(event){
	 		/* $(location).attr("href","insertjoin.action"); */
	 		//alert($(this).attr("tag"));
	 		var join=$(this).attr('tag').split('/')
	 		var yes= confirm('프로젝트에 참여하시겠습니까?')
	 		if(yes){	 			
	 			
	 			$.ajax({
					url:"/ppool/insertjoin.action",
					method:"POST",
					async:true,
					data:{
						userNo: join[0],
						projectNo: join[1]
					}, 
					success: function(result){
						alert('프로젝트 참여신청이 완료되었습니다');
						$("#join").css('display','none');
						$("#joincancel").css('display','inline');
						
					},
					error:function(){
						alert('오류');
					}				
				})
	 			
	 		}
	 		
	 	})
	 	
 	 $("#joincancel").click(function(event){
	 		/* $(location).attr("href","insertjoin.action"); */
	 		//alert($(this).attr("tag"));
	 		var join=$(this).attr('tag').split('/')
	 		var yes= confirm('프로젝트에 참여 취소하시겠습니까?')
	 		if(yes){	 			
	 			
	 			$.ajax({
					url:"/ppool/deletejoin.action",
					method:"POST",
					async:true,
					data:{
						userNo: join[0],
						projectNo: join[1]
					}, 
					success: function(result){						
							alert('프로젝트 참여취소가 완료되었습니다');
							$("#join").css('display','inline');
							$("#joincancel").css('display','none');
					},
					error:function(){
						alert('오류');
					}				
				})
	 			
	 		}
	 		
	 	}) 
	 	
	 	
	 	    
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

	<div class="basic" ><br/>
		<table class="tech" >
			<caption >상세뷰
		
		
		
		<!-- 참여하기  -->
		
		<c:set var="showjoinbutton" value="false"></c:set>
		<c:set var="showcanclebutton" value="false"></c:set>
		
		<c:choose>
			<c:when test="${empty joinlists}">
				<c:set var="showjoinbutton" value="true"></c:set>
			 </c:when>
			 <c:otherwise>			 
			 <c:set var="count" value="0"></c:set>
			<c:forEach var="joinlist" items="${joinlists}">	
				<c:if test="${joinlist.userNo eq loginuser.userNo}">
					<c:set var="count" value="${count+1}"></c:set>
				</c:if>
			</c:forEach>
				<c:choose>
					<c:when test="${count>0}">
						<c:set var="showcanclebutton" value="true"></c:set>
					</c:when>
					<c:otherwise>
					 	<c:set var="showjoinbutton" value="true"></c:set>
					</c:otherwise>
				</c:choose>
				</c:otherwise>
			</c:choose>	
			
			<input type="button" class="btn" id="join" value="참 여" tag="${loginuser.userNo}/${project.projectNo}" style="display: ${showjoinbutton ? 'inline' : 'none'}"/>
			<input type="button" class="btn" id="joincancel" value="취 소" tag="${loginuser.userNo}/${project.projectNo}" style="display: ${showcanclebutton ? 'inline' : 'none'}"/>
			
			
		<!-- 참여하기 마무리 -->		
			
				<c:if  test="${loginuser.userNo != null}">
					<c:if test="${loginuser.userNo ne project.userNo}">
							<c:if test="${favoriteProjects == '1'}">
								<img src="/ppool/resources/images/bookmark_on.png" align="right" class="bookmark">&nbsp;
							</c:if>
							<c:if test="${favoriteProjects == '0'}">
								<img src="/ppool/resources/images/bookmark_off.png" align="right" class="bookmark">&nbsp;
							</c:if>
					</c:if>
				</c:if>
				<img src="/ppool/resources/images/report.png" id="report" align="right">
			</caption>
		<tr>
			<th >프로젝트명</th>
			<td class="w85" colspan="3">
				<div>${ project.projectTitle}</div>
			</td>
		</tr>
		<tr>
			<th >담당자</th>
			<td class="w35">
				<div>${project.userName}</div>
			</td>
			<th >연락처</th>
			<td class="w15" align="left">
				<div>${ project.projectPhone}</div>
			</td>
		</tr>
		<tr>
			<th >이메일</th>
			<td class="w15" colspan="3">
				<div>${ project.projectEmail}</div>
			</td>
		</tr>
	</table>
	<br/>
	<table  class="tech">
		<tr>
			<th >개발</th>
			<td class="w85" colspan="3">
				<table class="checkbox skill">
					<tr>
						<td><input type="checkbox" name="skill" value="100" > .NET</td>
						<td><input type="checkbox" name="skill" value="101" > ANDROID</td>
						<td><input type="checkbox" name="skill" value="102" > ASP</td>
						<td><input type="checkbox" name="skill" value="103" > C</td>
					</tr>	
					<tr>
						<td><input type="checkbox" name="skill" value="104" > C#</td>
						<td><input type="checkbox" name="skill" value="105" > C++</td>
						<td><input type="checkbox" name="skill" value="106" > CSS</td>
						<td><input type="checkbox" name="skill" value="107" > DB</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="108" > DELPHI</td>
						<td><input type="checkbox" name="skill" value="109" > HTML</td>
						<td><input type="checkbox" name="skill" value="110" > IOS</td>
						<td><input type="checkbox" name="skill" value="111" > JAVA</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="112" > JSP</td>
						<td><input type="checkbox" name="skill" value="113" > LINUX</td>
						<td><input type="checkbox" name="skill" value="114" > PHP</td>
						<td><input type="checkbox" name="skill" value="115" > PYTHON</td>
					</tr>
					<tr >	
						<td><input type="checkbox" name="skill" value="116" > RUBY</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<th >디자인</th>
			<td class="w85" colspan="3">
				<table class="checkbox skill">	
					<tr>
						<td><input type="checkbox" name="skill" value="200" > HTML5</td>
						<td><input type="checkbox" name="skill" value="201" > 그래픽디자인</td>
						<td><input type="checkbox" name="skill" value="202" > 모바일 </td>
						<td><input type="checkbox" name="skill" value="203" > 웹디자인 </td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="204" > 파워포인트 </td>
						<td><input type="checkbox" name="skill" value="205" > 포토샵편집 </td>
						<td><input type="checkbox" name="skill" value="206" > 플래시 </td>
						<td><input type="checkbox" name="skill" value="207" > 3D </td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<th >지역</th>
			<td class="w85" colspan="3">
				<table class="check location">	
				<tr>
					<td><input type="checkbox" name="location" value="11" > 강북</td>
					<td><input type="checkbox" name="location" value="12" > 강동</td>
					<td><input type="checkbox" name="location" value="13" > 강남</td>
					<td><input type="checkbox" name="location" value="14" > 강서 </td>
					<td><input type="checkbox" name="location" value="15" > 용인 </td>
					<td><input type="checkbox" name="location" value="16" > 화성 </td>
				</tr>
				<tr>
					<td><input type="checkbox" name="location" value="17" > 일산 </td>
					<td><input type="checkbox" name="location" value="18" > 성남 </td>
					<td><input type="checkbox" name="location" value="19" > 수원 </td>
					<td><input type="checkbox" name="location" value="20" > 충북 </td>
					<td><input type="checkbox" name="location" value="21" > 충남 </td>
					<td><input type="checkbox" name="location" value="22" > 대전 </td>
				</tr>
				<tr>
					<td><input type="checkbox" name="location" value="23" > 강원 </td>
					<td><input type="checkbox" name="location" value="24" > 경북 </td>
					<td><input type="checkbox" name="location" value="25" > 경남 </td>
					<td><input type="checkbox" name="location" value="26" > 대구 </td>
					<td><input type="checkbox" name="location" value="27" > 전북 </td>
					<td><input type="checkbox" name="location" value="28" > 전남 </td>
				</tr>
				<tr>
					<td><input type="checkbox" name="location" value="29" > 광주 </td>
					<td><input type="checkbox" name="location" value="30" > 부산 </td>
					<td><input type="checkbox" name="location" value="31" > 울산 </td>
					<td><input type="checkbox" name="location" value="32" > 제주 </td>
					<td><input type="checkbox" name="location" value="33" > 해외 </td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<th >프로젝트 설명</th>
			<td class="w85" colspan="3">
				<textarea name="projectContent" id="projectcontent" 
				rows="20" readonly="readonly">${project.projectContent}</textarea>
			</td>
		</tr>
		<tr>
			<th >모집인원</th>
			<td class="w35">
				<div>${ project.projectTeamCount}명</div>
			</td>
			<th >모집 마감일</th>
			<td class="w35">
				<f:formatDate value="${ project.projectExpire}" pattern="yyyy년 MM월 dd일" var="expire"/>
				<div >${expire}</div>
			</td>
		</tr>
		<tr>
			<th >프로젝트 기간</th>
			<td class="w85" colspan="3">
				<f:formatDate value="${ project.projectStartDay}" pattern="yyyy년 MM월 dd일" var="start"/>
				<f:formatDate value="${ project.projectEndDay}" pattern="yyyy년 MM월 dd일" var="end"/>
				<div >${start} ~ ${end}</div>
			</td>
		</tr>
	</table>
	<div class="selector">
		<c:if test="${loginuser.userNo != null}">
			<c:if test="${loginuser.userNo eq project.userNo}">
				<form id="deleteform" action="/ppool/projectdelete.action" method="POST">
					<input type="hidden" name="projectNo" value="${project.projectNo }"/>
				</form>
				<input type="button" class="btn" id="modify" value="수 정"/>
				<input type="button" class="btn" id="delete" value="삭 제"/>
			</c:if>
		</c:if>
		<input type="button" class="btn" id="list" value="목 록"/>
	</div>
	
	<!----------------------------------------- 참여자 확인 ------------------------------------------------>
	<table id="tab2">
		<!-- 신청자 있을 때 표시 영역 -->	
		<c:if test="${!empty joinlists}">
			<c:forEach var="joinlist" items="${joinlists}">
				<tr>
					<td>이름 :${joinlist.user.userName}</td>
					<td>이메일 :${joinlist.user.userEmail}</td>
					<td>프로젝트 경험여부: 
						<c:choose>
							<c:when test="${joinlist.user.userExperience eq true}"> yes </c:when>
							<c:otherwise>no</c:otherwise>						
						</c:choose>
					</td>
					<td>성별:
						<c:choose>
							<c:when test="${joinlist.user.userGender eq true}">남자</c:when>
							<c:otherwise>여자</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
	
		</c:if>
		<!-- 신청자 없을 때 보여줄 목록 -->
		<c:if test="${empty joinlists}">
				<tr >
	       			<td class="nocomment" >
						참여신청자가 없습니다.
	               	</td>
	               </tr>
			</c:if>
	</table>
	
	<br/>
	<br/>
	
	<!------------------ comment 보여주기 영역 시작 -------------------->
	<c:set var="comments" value="${project.comments }"/>
	<table id="tab">
	<% pageContext.setAttribute("enter", "\r\n"); %>
		<!-- comment 있을경우 표시 영역 -->
		<c:if test="${!empty comments}">
			<c:forEach var="comment" items="${comments }" > 
        		<tr id="tr${comment.commentNo}">
        			<td class="yescomment">
						<div class="c_name" >${comment.userName }</div>
						<br/>
						<div id="a${comment.commentNo}" class="a">${fn:replace(comment.commentContent , enter, '<br>')}</div>
						<form id="fo${comment.commentNo}">
							<textarea id="b${comment.commentNo}" class="b" 
									name="commentContent">${comment.commentContent }</textarea>
							<input type="hidden" name="commentNo" value="${comment.commentNo}"/>		
						</form>
						<br/>
						<f:formatDate value="${ comment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
						<div class="c_regi" >${registerday}</div>
	        			<div class="sele" id="aa${comment.commentNo}" >
	        				<c:if test="${loginuser.userNo eq comment.userNo }">
		        				<input type="button" class="ed_bt" id="ed${comment.commentNo}" value="편집"/>&nbsp;
		        				<input type="button" class="de_bt" id="de${comment.commentNo}" value="삭제"/>&nbsp;
		        				<input type="button" class="re_bt" value="댓글"/>
	        				</c:if>
	        				<c:if test="${loginuser.userNo ne comment.userNo }">
			                    <input type="button" class="re_bt" value="댓글"/>
		                    </c:if>
                		</div>
                		<div class="sele2" id="bb${comment.commentNo}" >
                			<input type="button" class="ok_bt" id="ok${comment.commentNo}" value="확인"/>
                			<input type="button" class="ca_bt" id="ca${comment.commentNo}" value="취소"/>
                		</div>
                	</td>
                </tr>
               
			</c:forEach>
		</c:if>
		
		<!-- comment 없을경우 표시 영역 -->
		<c:if test="${empty comments}">
			<tr >
       			<td class="nocomment" >
					작성된 댓글이 없습니다.
               	</td>
               </tr>
		</c:if>
	</table>
		
	<!------------------ comment 쓰기 영역 시작 -------------------->
	<br /><br />
	<form id="commentform">
		<input type="hidden" id="projectno" name="projectNo" value='${project.projectNo }' />
		<input type="hidden" id="userno" name="userNo" value='${loginuser.userNo }' />
		<table id="re_form" >
			<tr>
				<td id="w90">
					<textarea id="commentcontent" name="commentContent" rows="5" ></textarea>
				</td>
				<td id="w10" >
					<input type="button" class="btn" id="commentregister" value="등 록"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
