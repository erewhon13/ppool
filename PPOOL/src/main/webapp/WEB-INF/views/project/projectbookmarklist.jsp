<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>북마크 목록</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function (){
		$('.odd, .even').click(function(){
			$(location).attr("href", "/ppool/projectdetailview.action?projectNo="+ $(this).attr('id') );
		});
		
		$('#search').click(function(){
			alert("미구현입니다");
		});
		
	});
		
	</script>
	
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<c:set var="projects" value="${projects }"/>

<div style="width:72%;margin-right:0%;margin-top:5%;float: right;" >
	<table class="ex1">
		<caption>북마크목록</caption>
		<thead>
			<tr style="background-color: #FF9147">			
				<th style="font-size: 17pt" scope="col">글번호</th>
				<th style="font-size: 17pt" scope="col">프로젝트기간</th>
				<th style="font-size: 17pt" scope="col">프로젝트정보</th>
				<th style="font-size: 17pt" scope="col">지역</th>
				<th style="font-size: 17pt" scope="col">마감일</th>
				<th style="font-size: 17pt" scope="col">상태</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="r" value="1"/>
			<c:forEach var="project" items="${projects }" >
				<c:choose>
					<c:when test="${r == 0 }"><c:set var="r" value="1"/><tr style="font-size: 15pt; background-color: #c0c0c0"  class="odd" id="${project.projectNo}" style="cursor: pointer;" ></c:when>
					<c:when test="${r == 1 }"><c:set var="r" value="0"/><tr style="font-size: 15pt; background-color: #c0c0c0" class="even" id="${project.projectNo}" style="cursor: pointer;" ></c:when>
				</c:choose>
					
					<td class="projectno" style="text-align: center; font-size: 17pt">${project.projectNo}</td>
					<td style="font-size: 12pt" class="date" style="text-align: center;">
						<f:formatDate value="${ project.projectStartDay}" pattern="yy년 MM월 dd일" var="start"/>
						<f:formatDate value="${ project.projectEndDay}" pattern="yy년 MM월 dd일" var="end"/>
						${start} ~ <br/> ${end}
					</td>
					<td class="content" style="height: 60px;">[${project.projectTeamCount}명] ${project.projectTitle}<br/>${project.projectContent}</td>
					<td class="location" style="text-align: center; font-size: 16pt">서울</td>
					
					<c:choose>
						<c:when  test="${project.projectStatus gt 0}">
							<td class="dday" style="text-align: center;">D - ${project.projectStatus}</td>
						</c:when>
						<c:when test="${project.projectStatus eq 0}">
							<td class="dday" style="color: red;font-weight: bold;">마감일</td>
						</c:when>
						<c:when test="${project.projectStatus lt 0}">
							<f:formatDate value="${ project.projectExpire}" pattern="yy년 MM월 dd일" var="expire"/>
							<td style="text-align: center;" class="dday">${expire}</td>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${project.projectStatus >= 0}">
							<td class="status" style="color: blue;font-weight: bold;text-align: center; font-size: 16pt">모집중</td>
						</c:when>
						<c:when test="${project.projectStatus < 0}">
							<td class="status" style="text-align: center;">완료</td>
						</c:when>
					</c:choose>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	
		
	</div>
</div>
</body>
</html>