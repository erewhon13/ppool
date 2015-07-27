<%@page import="com.ppool.dto.Notification"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<title>목록보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

	<div>
	<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
	</div>
	<div>
		<%
			List<Notification> notifications = (List<Notification>) request.getAttribute("notifications");
		%>
		<div align="center" style="margin-top: 3%" >
			<form id="notification" action="" method="post">
				<table  width="70%" style="text-align: center;">
					<tr
						style="background-color: #FF9147; color: #ffffff; height: 30px; margin-top: 10px;">
						<th style="width: 10%">글번호</th>
						<th style="width: 25%">제목</th>
						<th style="width: 15%">등록일</th>
						<th style="width: 10%">관리자번호</th>
					</tr>
				
				<c:forEach var="notification" items="${ notifications }">
					<tr style='text-align: center; height: 30px; background-color: #F1F1F1;'>
						<td>${ notification.notificationNo }</td>
						<td>
							<c:url value="notificationview.action" var="viewUrl">
								<c:param name="notificationtitle" value="${ notification.notificationTitle }" />
							</c:url>
							<a href='${ viewUrl }'>${ notification.notificationNo }</a>
						</td>
						<td>${ notification.stampRegisterDay }</td>
						<td>${ notification.adminNo }</td>
					</tr>
				</c:forEach>
					
			</table>
				

				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				
				<div>
					<a href="notificationwriteform.action">등록</a>
				</div>
			</form>
		</div>
	</div>



</body>
</html>