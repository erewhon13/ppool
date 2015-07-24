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
<!-- <div id="sidemenu">
사이드 메뉴
</div> -->
<form action="registeruser.action" method="POST">
<div id="register">
	회원가입 페이지
	<div>
		<label>이메일 :</label> <input type="email" name="userEmail">
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
		<label>전화번호 :</label> <input type="tel" name="userPhone">
	</div>
	<div>
		<label>생년월일 :</label> <input type="date" name="userBirth">
	</div>
	<div>
		<label>성별 :</label> <label>남</label><input type="radio" name="userGender" value="1">
		<label>여</label><input type="radio" name="userGender" value="0">
	</div>
	<div>
		<label>주소 :</label> <input type="text" name="userAddress">
	</div>
	<div>
		<label>프로젝트 경험여부 :</label> <label>유</label><input type="radio" name="userExperience" value="1">
		<label>무</label><input type="radio" name="userExperience" value="0">
	</div>
	<div>
		<label>최종학력 :</label> 
		<select name="userAcademic">
			<option>대졸</option>
		</select>
	</div>
	<div>
		<label>전공 :</label>
		<select name="userMajor">
			<option>컴퓨터공학과</option>
		</select>
	</div>
	<div>
		<input type="submit" value="OK" />
	</div>
</div>
</form>
</div>
</body>
</html>