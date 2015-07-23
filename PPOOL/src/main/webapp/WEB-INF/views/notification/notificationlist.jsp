<%@page import="com.ppool.dto.Notification"%>
<%@page import="java.util.List"%>
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
		pageContext.include("/WEB-INF/views/include/sidemenu.jsp");
	%>
	</div>
	<div>
		<%
			List<Notification> notifications = (List<Notification>) request.getAttribute("notifications");
		%>
		<div align="center" style="margin-top: 3%" >
			<form id="notification" action="" method="post">
				<table border="1" width="70%" style="text-align: center;">
					<tr
						style="background-color: #FF9147; color: #ffffff; height: 30px; margin-top: 10px;">
						<th style="width: 10%">번호</th>
						<th style="width: 25%">제목</th>
						<th style="width: 15%">등록일</th>
						<th style="width: 10%">관리자번호</th>
					</tr>
					<%
						for (Notification notification : notifications) {
					%>
					<tr
						style='text-align: center; height: 30px; background-color: #F1F1F1;'>
						<td><%=notification.getNotificationNo()%></td>
						<td><a
							href='notificationview.action'>
								<%=notification.getNotificationTitle()%></a></td>
						<td><%=notification.getNotificationRegisterDay()%></td>
						<td><%=notification.getAdminNo()%></td>
					</tr>
					<%
						}
					%>
					
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