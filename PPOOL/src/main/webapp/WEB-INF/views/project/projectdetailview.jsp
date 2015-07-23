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
프로젝트 번호 : ${ project.projectNo}<br/>
프로젝트 명 : ${ project.projectTitle}<br/>
프로젝트 팀원 :${ project.projectTeamCount}<br/>
프로젝트 시작일 :${ project.projectStartDay}<br/>
프로젝트 종료 :${ project.projectEndDay}<br/>
프로젝트 장소 :${ project.projectLocation}<br/>
프로젝트 마감 :${ project.projectExpire}<br/>
프로젝트 등록일 :${ project.projectRegisterDay}<br/>
프로젝트 상태 :${ project.projectStatus}<br/>
등록 유저 :${ project.userNo}<br/>


</body>
</html>