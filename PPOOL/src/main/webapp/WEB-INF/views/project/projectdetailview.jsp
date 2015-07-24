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
	<script type="text/javascript">
	
	$(document).ready(function (){
		
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

	<div style="margin: auto;">
		<div style="text-align: left">
		프로젝트 번호 : ${ project.projectNo}<br/>
		프로젝트 명 : ${ project.projectTitle}<br/>
		프로젝트 팀원 :${ project.projectTeamCount}<br/>
		프로젝트 시작일 :${ project.stampStart}<br/>
		프로젝트 종료 :${ project.stampEnd}<br/>
		프로젝트 장소 :${ project.projectLocation}<br/>
		프로젝트 마감 :${ project.stampExpire}<br/>
		프로젝트 등록일 :${ project.stampRegisterDay}<br/>
		프로젝트 상태 :${ project.projectStatus}<br/>
		등록 유저 :${ project.userNo}<br/>
		</div>
	</div>
	<div style="width:100%;" align="center">
		<img src="/ppool/resources/images/list.png" class="detailView" id="list" style="cursor: pointer;">
		<img src="/ppool/resources/images/modify.png" class="detailView" id="modify" style="cursor: pointer;">
	</div>
</body>
</html>