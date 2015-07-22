<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.include("/WEB-INF/views/include/header.jsp");
	%>
	<div>
	<%
		pageContext.include("/WEB-INF/views/include/sidemenu.jsp");
	%>
	</div>
	<div id="personaldata">
		<div>${user.getUserName()}</div>
		<div>${user.getUserEmail()}</div>
		<div>${user.getUserPhone()}</div>
		<div>${user.getUserBirth()}</div>
		<div>${user.isUserGender()}</div>
		<div>${user.getUserAddress()}</div>
		<div>${user.isUserExperience()}</div>
		<div>${user.getUserAcademic()}</div>
		<div>${user.getUserMajor()}</div>
	</div>
</body>
</html>