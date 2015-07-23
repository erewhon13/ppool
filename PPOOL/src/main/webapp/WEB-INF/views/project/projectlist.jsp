<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function (){
		$('.odd, .even').click(function(){
			alert("ff");
			location.replace("/ppool/projectDetailView.action?projectno="+$(".odd, .even").val());
			alert("33");
		});
	});
		
	</script>
	
</head>
<body>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>

<%
	pageContext.include("/WEB-INF/views/include/sidemenu.jsp");
%>
<c:set var="projects" value="${projects }"/>

<div style="width:800px;margin-right:5%;float: right" ><br/>
	<table class="ex1">
		<caption>테스트</caption>
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
					<c:when test="${r == 0 }"><c:set var="r" value="1"/><tr class="odd" value="${project.projectNo}"></c:when>
					<c:when test="${r == 1 }"><c:set var="r" value="0"/><tr class="even"></c:when>
				</c:choose>
					<th class="projectno">${project.projectNo}</th>
					<td class="date">
						${project.stampStart} ~ <br/> ${project.stampEnd}
					</td>
					<td class="content">[${project.projectTeamCount}명] ${project.projectTitle}<br/>${project.projectContent}</td>
					<td class="location">${project.projectLocation}</td>
					
					<c:choose>
						<c:when  test="${project.projectStatus gt 0}">
							<td class="dday">D - ${project.projectStatus}</td>
						</c:when>
						<c:when test="${project.projectStatus eq 0}">
							<td class="dday" style="color: red">마감일</td>
						</c:when>
						<c:when test="${project.projectStatus lt 0}">
							<td class="dday">${project.stampExpire}</td>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${project.projectStatus >= 0}">
							<td class="status" style="color: blue">모집중</td>
						</c:when>
						<c:when test="${project.projectStatus < 0}">
							<td class="status">완료</td>
						</c:when>
					</c:choose>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	<div style="width: 800px;" align="right">
		<input type="button" onclick="location.href='/ppool/registerproject.action'" value="프로젝트 등록">
	</div>
</div>
</body>
</html>