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
	
	
	<div align="center"  style="margin-top: 2%">
				<input type="hidden" c:out value="${ requestScope.notification}"/>

				<form action='notificationupdate.action' method='post'>
					<!-- 상대경로표시 -->
					<table style=" width: 79%; border:groove;  ">
						<caption style="text-align: left;">상세보기</caption>
						<tr>
							<th style="width: 10%" bgcolor="#FF9147">번호</th>
							<td style="text-align: left;">${ notification.notificationNo }</td>
						</tr>
						<br />
						<tr>
							<th style="width: 10%" bgcolor="#FF9147">제목</th>
							<td style="width: 85%" colspan="3"> 
								${ notification.notificationTitle }
								
							</td>
						</tr>
						<tr>
							<th style="width: 10%" bgcolor="#FF9147">작성일</th>
							<td>
								${ notification.stampRegisterDay }
							</td>
						</tr>

						<tr>
							<th style="width: 15%" bgcolor="#FF9147">내용</th>
							<td style="width: 85%" colspan="3">
								<textarea name="projectContent" id="projectcontent" rows="20" 
									style="max-height: 600px;width:99%;resize:none;font-size: 15pt;" readonly="readonly;">${ notification.notificationContent }</textarea>
							</td>
							
						</tr>
						
						
					</table>
					<br />
					<div style='margin-right: -88%;'>
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