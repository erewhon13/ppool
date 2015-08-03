<%@page import="com.ppool.dto.Notification"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
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
<script type="text/javascript">
	
	$(document).ready(function (){
		$('#writer').click(function(){
			$(location).attr("href", "/ppool/notificationwriteform.action");
		});
	});
		
	</script>
<title>목록보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	<div style="margin-right: -3%">

		<div align="center" style="margin-top: 3%">
			<form id="notification" action="" method="post">
				<table width="75%" style="text-align: center;">
					<caption style="text-align: left;">공지사항</caption>
					<tr style="background-color: #FF9147; color: #ffffff;height: 30px;">
						<th style="width: 10%">글번호</th>
						<th style="width: 25%">제목</th>
						<th style="width: 15%">등록일</th>
						<th style="width: 10%">관리자번호</th>
					</tr>

					<c:forEach var="notification" items="${ notifications }">
						<tr
							style='text-align: center; height: 30px; background-color: #F1F1F1;'>
							<td>${ notification.notificationNo }</td>
							<td><c:url value="notificationview.action" var="viewUrl">
									<c:param name="notificationNo"
										value="${ notification.notificationNo }" />
								</c:url> <a href='${ viewUrl }'>${ notification.notificationTitle }</a>
							</td>
							<td>${ notification.stampRegisterDay }</td>
							<td>${ notification.adminNo }</td>
						</tr>
					</c:forEach>

				</table>
				<div style='text-align: center'>${pager.toString()}</div>

				<br />
				<div style="width: 94%;" align="right">
					<img src="/ppool/resources/images/writer.png" id="writer" style="cursor: pointer;">
				</div>
			</form>
		</div>
	</div>



</body>
</html>