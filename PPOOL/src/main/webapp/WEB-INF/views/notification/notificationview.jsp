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

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<title>상세보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	
	
	<div align="center" style="margin-top: 3%" >
				<input type="hidden" c:out value="${ requestScope.notification}"/>

				<form action='notificationupdate.action' method='post'>
					<!-- 상대경로표시 -->
					<table border="1" >
						
						<tr>
							<th>번호</th>
							<td>${ notification.notificationNo }</td>
						</tr>

						<tr>
							<th>제목</th>
							<td>${ notification.notificationTitle }</td>
						</tr>

						<tr>
							<th>내용</th>
							<td>${ notification.notificationContent }</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td>
								${ notification.stampRegisterDay }
							</td>
						</tr>
						
					</table>
					
					<div style='text-align: center'>
						<c:url value="notificationeditform.action" var="editformUrl">
        					<c:param name="notificationNo" value="${ notification.notificationNo }" />
        				</c:url>
        				[<a href="${ editformUrl }">편집</a>]
						<c:url value="notificationdelete.action" var="deleteUrl">
							<c:param name="notificationNo" value="${ notification.notificationNo }" />
						</c:url>
						[<a href="${ deleteUrl }">삭제</a>]
						<c:url value="notificationlist.action" var="cancel">
						</c:url>
						[<a href="${ cancel }">취소</a>]
						
					</div>
			</form>
		</div>
	</div>


</body>
</html>