<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function (){
		$('.odd, .even').click(function(){
			$(location).attr("href", "/ppool/projectdetailview.action?projectNo="+ $(this).find($('.pno')).val() );
		});
		
		$('#search').click(function(){
			alert("미구현입니다");
		});
		$('#writer').click(function(){
			$(location).attr("href", "/ppool/projectregister.action");
		});
	});
		
	</script>
	
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<c:import url="/WEB-INF/views/include/sidemenu.jsp"/>
<c:set var="projects" value="${projects }"/>

<div style="width:72%;margin-right:5%;float: right" ><br/>
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
					<c:when test="${r == 0 }"><c:set var="r" value="1"/><tr class="odd" style="cursor: pointer;" ></c:when>
					<c:when test="${r == 1 }"><c:set var="r" value="0"/><tr class="even" style="cursor: pointer;" ></c:when>
				</c:choose>
					<input class="pno" type="hidden" value="${project.projectNo}">
					<th class="projectno" >${project.projectNo}</th>
					<td class="date">
						<f:formatDate value="${ project.projectStartDay}" pattern="yy년 MM월 dd일" var="start"/>
						<f:formatDate value="${ project.projectEndDay}" pattern="yy년 MM월 dd일" var="end"/>
						${start} ~ <br/> ${end}
					</td>
					<td class="content">[${project.projectTeamCount}명] ${project.projectTitle}<br/>${project.projectContent}</td>
					<td class="location">서울</td>
					
					<c:choose>
						<c:when  test="${project.projectStatus gt 0}">
							<td class="dday">D - ${project.projectStatus}</td>
						</c:when>
						<c:when test="${project.projectStatus eq 0}">
							<td class="dday" style="color: red;font-weight: bold;">마감일</td>
						</c:when>
						<c:when test="${project.projectStatus lt 0}">
							<f:formatDate value="${ project.projectExpire}" pattern="yy년 MM월 dd일" var="expire"/>
							<td class="dday">${expire}</td>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${project.projectStatus >= 0}">
							<td class="status" style="color: blue;font-weight: bold;">모집중</td>
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
	<div style="width:100%;" align="right">
		<img src="/ppool/resources/images/search.png" id="search" style="cursor: pointer;">
		<img src="/ppool/resources/images/writer.png" id="writer" style="cursor: pointer;">
	</div>
</div>
</body>
</html>