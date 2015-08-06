<%@page import="com.ppool.dto.Notification"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<link rel="stylesheet" href="resources/css/project.css" />
<script src="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#delete").click(function(){
				var result = confirm('${notification.notificationTitle}를 삭제하시겠습니까?');
		        if(result) {
		        	//yes
		        	var url = "/ppool/notificationdelete.action?userNo=" + "${loginuser.userNo == 1}" + "&projectNo="+"${notification.notificationNo}";
		        	$(location).attr("href",url);
		        }else{
		        }
		 });
	});
</script>
<title>상세보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	
	
	<div align="center" style="margin-top: 0.5%">
				<input type="hidden" c:out value="${ requestScope.notification}"/>

				<form action='notificationupdate.action' method='post'>
					<!-- 상대경로표시 -->
					<table style=" width: 79%; border:groove;margin-left: 1%; ">
						<caption style="text-align:left;font-size:15pt; color:#1BA6B2;font-weight: 700;">상세보기</caption>
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3"   >번호</th>
							<b><td style="text-align: left;font-size: 13pt; color:  #008000;">${ notification.notificationNo }</td></b>
						</tr>
						<br />
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3">제목</th>
							<td style="text-align: left;font-size: 13pt; color:  #008000""> 
								${ notification.notificationTitle }
								
							</td>
						</tr>
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3">작성일</th>
							<td style="text-align: left;font-size: 13pt; color:  #008000">
								${ notification.stampRegisterDay }
							</td>
						</tr>

						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3">내용</th>
							<td style="width: 85%" colspan="3">
								<textarea name="projectContent" id="projectcontent" rows="20" 
									style="max-height: 400px;width:99%;resize:none;font-size: 14pt;" readonly="readonly;">${ notification.notificationContent }</textarea>
							</td>
							
						</tr>
						
						
					</table>
					<br />
					<c:if test="${loginuser.userNo == 1}">
					<div style="width: 100%;" align="right">
					<input type="button" class="btn" id="update" value="편집" onclick="location.href='notificationeditform.action?notificationNo=${notification.notificationNo}';"/>
					<input type="button" class="btn" id="delete" value="삭제"/>
					<input type="button" class="btn" id="cancel" value="취소" onclick="location.href='notificationlist.action';"/>
					</div>
					</c:if>
			</form>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>