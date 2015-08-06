<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>북마크 목록</title>
<link rel="stylesheet" href="resources/css/project.css" />
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<style type="text/css">
#rr{
font-weight: 700;font-size: 20px;padding: 5px;color: #1BA6B2;text-align: left; margin-bottom: 5px;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('.odd, .even').click(
						function() {
							$(location).attr(
									"href",
									"/ppool/projectdetailview.action?projectNo="
											+ $(this).attr('id'));
						});

				$('#search').click(function() {
					alert("미구현입니다");
				});

			});
</script>

</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<c:set var="projects" value="${projects }" />

	<div style="width: 79%;float: right">
	<br/>
		<table style="width: 100%">
			<caption id="rr">북마크목록</caption>
			<thead style="margin-left: 20%">
				<tr style="background-color: #7d97d3; width: 150px">
					<th style="width: 8%">글번호</th>
					<th style="width: 17%">프로젝트기간</th>
					<th style="width: 32%">프로젝트정보</th>
					<th style="width: 20%">지역</th>
					<th style="width: 15%">마감일</th>
					<th style="width: 8%">상태</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="r" value="1" />
				<c:forEach var="project" items="${projects }">
					<c:choose>
						<c:when test="${r == 0 }">
							<c:set var="r" value="1" />
							<tr style="font-size: 15pt; background-color: #c0c0c0"
								class="odd" id="${project.projectNo}" style="cursor: pointer;">
						</c:when>
						<c:when test="${r == 1 }">
							<c:set var="r" value="0" />
							<tr style="font-size: 15pt; background-color: #c0c0c0"
								class="even" id="${project.projectNo}" style="cursor: pointer;">
						</c:when>
					</c:choose>

					<td class="projectno" style="text-align: center; font-size: 14pt">${project.projectNo}</td>
					<td style="font-size: 12pt" class="date"
						style="text-align: center;"><f:formatDate
							value="${ project.projectStartDay}" pattern="yy년 MM월 dd일"
							var="start" /> <f:formatDate value="${ project.projectEndDay}"
							pattern="yy년 MM월 dd일" var="end" /> ${start} ~ <br /> ${end}</td>
					<td class="content" style="height: 60px;">[${project.projectTeamCount}명]
						${project.projectTitle}<br />${project.projectContent}</td>
					<td class="location" style="text-align: center; font-size: 14pt">서울</td>

					<c:choose>
						<c:when test="${project.projectStatus gt 0}">
							<td class="dday" style="text-align: center;">D -
								${project.projectStatus}</td>
						</c:when>
						<c:when test="${project.projectStatus eq 0}">
							<td class="dday"
								style="color: red; font-weight: bold; text-align: center;">마감일</td>
						</c:when>
						<c:when test="${project.projectStatus lt 0}">
							<f:formatDate value="${ project.projectExpire}"
								pattern="yy년 MM월 dd일" var="expire" />
							<td style="text-align: center;" class="dday">${expire}</td>
						</c:when>
					</c:choose>

					<c:choose>
						<c:when test="${project.projectStatus >= 0}">
							<td class="status"
								style="color: blue; font-weight: bold; text-align: center; font-size: 16pt">모집중</td>
						</c:when>
						<c:when test="${project.projectStatus < 0}">
							<td class="status" style="text-align: center;">완료</td>
						</c:when>
					</c:choose>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>