<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

	<div>
	<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
	</div>
	<form action="userinfoupdateform.action" method="POST">
		<div id="personaldata">
			<c:choose>
				<c:when test="${user.isUserPictureExist() eq true}">
					<div id="imageview"></div>
				</c:when>
				<c:otherwise>
					<div id="defaultimage">
						<img src="/ppool/resources/images/default_image.png" />
					</div>
				</c:otherwise>
			</c:choose>
			<div>
				<label>이름 : </label>${user.getUserName()}</div>
			<div>
				<label>휴대전화 : </label>${user.getUserPhone()}</div>
			<div>
				<label>생년월일 : </label>${user.getStampRegisterDay()}</div>
			<div>
				<label>성별 : </label>${user.isUserGender() eq true ? "남" : "여"}</div>
			<div>
				<label>주소 : </label>${user.getUserAddress()}</div>
			<div>
				<label>경험유무 : </label>${user.isUserExperience() eq true ? "유" : "무"}</div>
			<div>
				<label>최종학력 : </label>${user.getUserAcademic()}</div>
			<div>
				<label>전공 : </label>${user.getUserMajor()}</div>

		</div>
	</form>
</body>
</html>