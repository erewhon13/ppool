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
<div id="register">
	회원가입 페이지
	<div>
		<label>이메일 :</label> <input type="text" name="userEmail">
	</div>
	<div>
		<label>비밀번호 :</label> <input type="password" name="userPasswd">
	</div>
	<div>
		<label>비밀번호 확인 :</label> <input type="password">
	</div>
	<div>
		<label>이름 :</label> <input type="text" name="userName">
	</div>
	<div>
		<label>성별 :</label> <label>남</label><input type="radio" name="userGender" value="1">
		<label>여</label><input type="radio" name="userGender" value="0">
	</div>
	<div>
		<label>비밀번호 확인 :</label> <input type="password">
	</div>
	<div>
		<label>비밀번호 확인 :</label> <input type="password">
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