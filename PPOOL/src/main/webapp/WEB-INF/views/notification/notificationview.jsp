<%@page import="com.ppool.dto.Notification"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>Main Page</title>
</head>

<body>
	<%
		pageContext.include("/WEB-INF/views/include/header.jsp");
	%>
	<div>
				<%
					Notification notification = (Notification) request.getAttribute("notification");
				%>

				<form action='notificationupdate.action' method='post'>
					<!-- 상대경로표시 -->
					<table>
						<tr>
							<th>번호</th>
							<td><%=notification.getNotificationNo()%></td>
						</tr>

						<tr>
							<th>제목</th>
							<td><%=notification.getNotificationTitle()%></td>
						</tr>

						<tr>
							<th>내용</th>
							<td><%=notification.getNotificationContent()%></td>
						</tr>
						<tr>
							<th>작성일</th>
							<td><%=notification.getNotificationRegisterDay()%></td>
						</tr>

					</table>
					
					<div style='text-align: center'>
						[&nbsp;<a href='instructoreditform.action?NotificationNo=<%=notification.getNotificationNo() %>' style='text-decoration:none'>편집</a>&nbsp;]
						[&nbsp;<a href="javascript:deleteinstructor(<%= notification.getNotificationNo() %>);">삭제</a>&nbsp;]
						[&nbsp;<a href='notificationlist.action' style='text-decoration:none'>취소</a>&nbsp;]
					</div>
			</form>
		</div>
	</div>


</body>
</html>