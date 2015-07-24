<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script type='text/javascript' src='/ppool/resources/js/filereader.js'></script>
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script type="text/javascript">
	$(function() {
		$("#imageview").css({
			"display" : "none",
		});
		FileReaderJS.setupInput(document.getElementById("fileinput"), {
			readAsDefault : "DataURL",
			on : {
				load : function(e, file) {
					var img = new Image();
					img.onload = function() {
						$("#imageview").css({
							"margin" : "0 auto",
							"display" : "block"
						}).html(img);
						$("#defaultimage").css({
							"display" : "none"
						})
					};
					img.src = e.target.result;
				}
			}
		});
	});
</script>
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
	<form action="userinfoupdateform.action" method="POST">
	<div id="personaldata">
			<div id="imageview"></div>
			<c:choose>
			<c:when test="${user.isUserPicture() eq true}">
				<div id="imageview"></div>
			</c:when>
			<c:otherwise>
				<div id="defaultimage">
					<img src="/ppool/resources/images/default_image.png" />
				</div>
			</c:otherwise>
		</c:choose>
		<div><input type="file" accept="image/**" value="1" id="fileinput"></div>
		<div>
			<label>이름 : </label>${user.getUserName()}</div>
		<div>
			<label>이메일 : </label>${user.getUserEmail()}</div>
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