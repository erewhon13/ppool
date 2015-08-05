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
<title>상세보기</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	
	
	<div align="center"  style="margin-top: 1.1%">
				<input type="hidden" c:out value="${ requestScope.notification}"/>

				<form action='notificationupdate.action' method='post'>
					<!-- 상대경로표시 -->
					<table style=" width: 79%; border:groove;margin-left: 1%; ">
						<caption style="text-align:left;font-size:15pt; color:#1BA6B2;font-weight: 700;">상세보기</caption>
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3"   >번호</th>
							<td style="text-align: left;font-size: 13pt; background-color: #c0c0c0;">${ notification.notificationNo }</td>
						</tr>
						<br />
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3">제목</th>
							<td style="text-align: left;font-size: 13pt; background-color: #c0c0c0""> 
								${ notification.notificationTitle }
								
							</td>
						</tr>
						<tr>
							<th style="width: 100; color: #ffffff; font-size: 15pt" bgcolor="#7d97d3">작성일</th>
							<td style="text-align: left;font-size: 13pt; background-color: #c0c0c0">
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
					
					<div style='margin-left: 1100px'>
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
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>