<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<title>Main Page</title>
</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<div>
<div id="sidemenu">
사이드 메뉴
</div>
<div id="history">

	회원가입 페이지
	<div>
		프로젝트명 : <input type="text">
	</div>
	<div>
		<label>비밀번호 :</label> <input type="password">
	</div>
	<div>
		<label>비밀번호 확인 :</label> <input type="password">
	</div>
	<div>
		<input type="submit" value="OK" />
	</div>
</div>
</div>
</body>
</html>