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
<style type="text/css">
#dd{
font-weight: 700;font-size: 20px;padding: 5px;color: #1BA6B2;text-align: left; margin-bottom: 5px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#writer').click(function() {
			$(location).attr("href", "/ppool/notificationwriteform.action");
		});
	});
</script>
<title>목록보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"/>
	<div style="width: 79%;float: right">
	<br/>
		<form id="notification" action="" method="post">
				<table style="text-align: center; width:100% ">
					<caption id="dd">공지사항</caption>
					<tr class="head" style="background-color: #7d97d3; color: #ffffff; height: 30px;">
						<th style="width: 5%">글번호</th>
						<th style="width: 20%">제목</th>
						<th style="width: 10%">등록일</th>
						<th style="width: 5%">관리자번호</th>
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
				<br />
				<c:if test="${loginuser.userNo == 1}">	
				<div style="width: 99%;" align="right">
					<img src="/ppool/resources/images/writer.png" id="writer"
						style="cursor: pointer;">
				</div>
				</c:if>
			</form>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
