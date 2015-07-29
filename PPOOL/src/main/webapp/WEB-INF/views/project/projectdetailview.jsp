<%@page import="com.ppool.dto.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<style type="text/css">
	th{
		font-weight: normal;
	}
	td{
		font-size:10pt;
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
	</style>
	
	<script type="text/javascript">
	
	$(document).ready(function (){
		$('#bookmark').click(function(){
			//북마크 버튼 눌렀을 때
			alert("북마크 미구현");
			//$(location).attr("href", "/ppool/projectlist.action");
		});
		$('#list').click(function(){
			$(location).attr("href", "/ppool/projectlist.action");
		});
		$('#modify').click(function(){
			$(location).attr("href", "/ppool/projectmodify.action?projectNo=${project.projectNo}");
		});
		$('#delete').click(function(){
			$(location).attr("href", "/ppool/projectdelete.action?projectNo=${project.projectNo}");
		});
		
		var skills = '${skills}'.split(",");
		var locations = '${locations}'.split(",");
		
		$.each(skills, function(index, obj){
			$('.skill input[value='+obj+']').attr('checked', true);
		})
		$.each(locations, function(index, obj){
			$('.location input[value='+obj+']').attr('checked', true);
		})
		
		var phone1 = '${phone1}'
		$('#phone1 option[value='+phone1+']').attr('selected', true);
		
		$('.table input, textarea').attr('readonly','readonly');
		$('.table select, .skill input, .location input').attr('disabled','disabled');
	});
	</script>
	
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<c:import url="/WEB-INF/views/include/sidemenu.jsp"/>
	<div style="width:72%; margin-right:5%;float: right" ><br/>
		<table style="text-align: center; width: 100%; border:groove;" class="table">
			<caption >상세뷰
			<img src="/ppool/resources/images/report.png" id="report" style="cursor: pointer;" align="right">
			</caption>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">프로젝트명</td>
				<td style="width: 85%" colspan="3">
					<input type="text" style="width: 100%;" name="projectTitle" id="projecttitle" value="${ project.projectTitle}"/>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">담당자</td>
				<td style="width: 35%">
					<!-- 세션에서 읽어올것 로그인 안되면 로그인창으로 이동 --> 
					<input type="text" style="width: 100%" value="${project.userName }" readonly="readonly"/>
				</td>
				<th style="width: 15%" bgcolor="#FF9147">연락처</td>
				<td style="width: 35%; font-size: 10pt;" align="left">
					<select name="phone1" id="phone1" >
						<option value="">----</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="0502">0502</option>
						<option value="0504">0504</option>
						<option value="0505">0505</option>
						<option value="0506">0506</option>
						<option value="0130">0130</option>
					</select> - 
					<input type="text" name="phone2" id="phone2" value='${phone2 }' style="width: 70px; text-align: center;"> - 
					<input type="text" name="phone3" id="phone3" value='${phone3 }' style="width: 70px; text-align: center;">
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">이메일</td>
				<td style="width: 15%" colspan="3" align="left">
					<input id="email1" type="text" name="email1" value="${email1 }" style="width: 150px;"> @ 
					<input id="email2" type="text" name="email2" value="${email2 }"  readonly=""
							style="width: 155px;  border: solid #CECFD0 1px; font-size: 10pt;"> 
					<select id="emailSelect" style="width: 150px; 
							font-size: 12px;">
						<option value="">선택해주세요</option>
						<option value="etc">직접입력</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="empal.com">empal.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="chol.com">chol.com</option>
						<option value="korea.com">korea.com</option>
						<option value="paran.com">paran.com</option>
						<option value="hanafos.com">hanafos.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="hanmail.net">hanmail.net</option>
					</select>
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
					<textarea name="projectContent" id="projectcontent" rows="20" style="max-height: 600px;width:100%;resize:none">${project.projectContent }</textarea>
				</td>
			</tr>
			<tr>
				<th style="width: 15%" bgcolor="#FF9147">모집인원</td>
				<td style="width: 35%">
					
					<input type="text" style="width: 100%" name="projectTeamCount" id="projectteamcount" value="${ project.projectTeamCount}"/>
				</td>
				<th style="width: 15%" bgcolor="#FF9147">모집 마감일</td>
				<td style="width: 35%" align="left">
					<f:formatDate value="${ project.projectExpire}" pattern="yyyy-MM-dd" var="expire"/>
					<input style="text-align: center" type="date" name="projectExpire" id="projectexpire" value="${expire}">
				</td>
			</tr>
			<tr>
				<th bgcolor="#FF9147">프로젝트 기간</td>
				<td align="left" style="width: 85%" colspan="3">
					<f:formatDate value="${ project.projectStartDay}" pattern="yyyy-MM-dd" var="start"/>
					<f:formatDate value="${ project.projectEndDay}" pattern="yyyy-MM-dd" var="end"/>
					<input style="text-align: center" type="date" name="projectStartDay" id="projectstartday" value="${start }"> ~ 
					<input style="text-align: center" type="date" name="projectEndDay" id="projectendday" value="${ end}">
				</td>
			</tr>
		</table>
		<br/>
		<div style="width:100%;" align="right" >
			<img src="/ppool/resources/images/list.png" id="list" style="cursor: pointer;">
			<img src="/ppool/resources/images/bookmark.png" id="bookmark" style="cursor: pointer;">
			<img src="/ppool/resources/images/modify.png" id="modify" style="cursor: pointer;">
			<img src="/ppool/resources/images/delete.png" id="delete" style="cursor: pointer;">
		</div>
	</div>
	
	<!------------------ comment 보여주기 영역 시작 -------------------->
			<br />
			<br />
			<c:if test="${comments != null} ">
				댓글있음
			</c:if>
				<!-- <h4 id="nodata" style="text-align: center">
				작성된 댓글이 없습니다.
				</h4> -->
				
				<!-- comment 있을경우 표시 영역 -->
				<table style="width: 750px; border: solid 1px; margin: 0 auto">
					<c:forEach var="comment" items="${comments }" > 
		        		<%-- <%if (!comment.getWriter().equals(member.getId())) {  %> --%>
		        		<!-- 작성자와 보는놈이 다른경우 : 댓댓글 작성 가능(미구현) -->
		        		<tr>
		        			<td style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
								<div style="color:#3333dd;font-weight: bold;">${comment.userNo }</div><br/><br/>
								<div >${comment.commentContent }</div><br/><br/>
								<div style="color: gray;">${ comment.commentRegisterDay}</div>
				        			<div >
					                    <div style="text-align: right;">
					                    	<a href="#" style="color:teal;">댓글</a>
					                    </div>
			                		</div>
		                	</td>
		                </tr>
		        		<%-- <%}else { %> --%>
		        		<!-- 작성자가 자기글을 보는경우 : 편집이나 삭제 가능-->
		        		<tr >
		        			<td id="commentview${ comment.commentNo}" 
		        						style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
								<div style="color:#3333dd;font-weight: bold; ">${comment.userNo }</div><br/><br/>
								<div >${comment.commentContent }</div><br/><br/>
								<div style="color: gray;">${ comment.commentRegisterDay}</div>
								<div >
				                    <div style="text-align: right;">
				                    	<a href="#" style="color: orange;">편집</a>
				                    	&nbsp;
				                    	<a href="#" style="color:maroon ;">삭제</a>
				                    </div>
		                		</div>
		                	</td>
			                <td id="commentedit${ comment.commentNo}" 
			                			style='display:none;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
								<form id="updatecommentform${ comment.commentNo}" action="updatecomment.action" method="post">
									<%-- <input type="hidden" name="boardno" value='<%=board.getBoardNo()%>' />
									<input type="hidden" name="pageno" value='<%=pageNo %>' />
									<input type="hidden" name="commentno" value='<%=comment.getCommentNo() %>' /> --%>
									
									<div style="color:#3333dd;font-weight: bold; ">${ comment.commentNo}</div><br/><br/>
									<textarea id="updatecontent${comment.commentNo }" name="updatecontent" rows="5"
											style="width:100%;background-color: lightyellow;resize:vertical;">${comment.commentContent }</textarea><br/><br/>
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
				</table>
			
			
			<!------------------ comment 쓰기 영역 시작 -------------------->
			<br />
			<br />

			<form id="commentform" action="comment.action" method="post">
				<%-- <input type="hidden" name="writer" value='<%= member.getId() %>' />
				<input type="hidden" name="boardno" value='<%=board.getBoardNo()%>' />
				<input type="hidden" name="pageno" value='<%=pageNo %>' /> --%>

				<table style="width: 750px; border: solid 1px; margin: 0 auto">
					<tr>
						<td style="width: 700px">
							<textarea id="content" name="content" rows="5"
									style="width: 700px;resize:vertical" ></textarea>
						</td>
						<td style="width: 50px; vertical-align: middle">
							<a href="javascript:doSubmit();" style="text-decoration: none">
							댓글<br />등록
							</a>
						</td>
					</tr>
				</table>
			</form>

			<hr align="center" style="width: 750px;" />


			<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	
	
	
	
	
</body>
</html>