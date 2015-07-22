<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/test.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	
	<!-- <link rel="stylesheet" href="/ppool/resources/css/board.css"> -->
	
</head>
<body>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>

<c:set var="projects" value="${projects }"/>

<div style="width:1030px;margin-right:5%;float: right" ><br/>
	<table class="ex1">
		<caption>테스트</caption><br/>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">프로젝트기간</th>
				<th scope="col">프로젝트정보</th>
				<th scope="col">지역</th>
				<th scope="col">마감일</th>
				<th scope="col">상태</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="r" value="1"/>
			<c:forEach var="project" items="${projects }" >
				<c:choose>
					<c:when test="${r == 0 }"><c:set var="r" value="1"/><tr class="odd"></c:when>
					<c:when test="${r == 1 }"><c:set var="r" value="0"/><tr></c:when>
				</c:choose>
					<th scope="row">${project.projectNo}</th>
					<td class="date1">${project.projectStartDay} ~ ${project.projectEndDay}</td>
					<td class="desc">${project.projectContent}</td>
					<td>${project.projectLocation}</td>
					<td>${project.projectExpire}</td>
					<td>${project.projectStatus}</td>
				</tr>
			</c:forEach>
			
			<tr>
				<th scope="row">JAVA2</th>
				<td class="date1">날짜다2</td>
				<td class="desc">엄청난 프로젝트2</td>
				<td>조건들2</td>
				<td>내일까지2</td>
				<td>모집중2</td>
			</tr>
			<tr class="odd">
				<th scope="row">JAVA2</th>
				<td class="date1">날짜다2</td>
				<td class="desc">엄청난 프로젝트2</td>
				<td>조건들2</td>
				<td>내일까지2</td>
				<td>모집중2</td>
			</tr>
			
		</tbody>
	</table>
	<div style="width: 1024px;" align="right">
		<input type="button" onclick="location.href='/ppool/registerproject.action'" value="프로젝트 등록">
	</div>
</div>
</body>
</html>