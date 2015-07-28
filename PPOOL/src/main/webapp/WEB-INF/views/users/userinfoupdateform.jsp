<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<script type='text/javascript' src='/ppool/resources/js/filereader.js'></script>
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script type="text/javascript">
	$(function() {
		$("#imageview").css({
			"display" : "none",
		});
		FileReaderJS.setupInput($("#fileinput")[0], {
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
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	<div>
	
		<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
	</div>
	<form action="userinfoupdate.action" method="POST"
		enctype="multipart/form-data">
		<input type="hidden" value="${user.getUserNo()}" name="userNo">
		<div id="personaldata">
			<div id="imageview"></div>
			<div>
				<input type="file" accept="image/**" id="fileinput"
					name="userProfile">
			</div>
			<div>

				<label>이름 : </label><input type="text" value="${user.getUserName()}"
					name="userName">
			</div>
			<div>
				<label>휴대전화 : </label><input type="text"
					value="${user.getUserPhone()}" name="userPhone">
			</div>
			<div>
				<%-- <input type="date" value="${user.getStampRegisterDay()}"> --%>
				<label>생년월일 : </label><input type="date" name="userBirth">
			</div>
			<div>
				<label>성별 : </label><label>남</label><input type="radio"
					name="userGender" value="1"> <label>여</label><input
					type="radio" name="userGender" value="0">
			</div>
			<div>
				<label>주소 : </label><input type="text"
					value="${user.getUserAddress()}" name="userAddress">
			</div>
			<div>
				<label>경험유무 : </label><label>유</label><input type="radio"
					name="userExperience" value="1"> <label>무</label><input
					type="radio" name="userExperience" value="0">
			</div>
			<div>
				<label>최종학력 :</label> <select name="userAcademic">
					<option>대졸</option>
				</select>
			</div>
			<div>
				<label>전공 :</label> <select name="userMajor">
					<option>컴퓨터공학과</option>
				</select>
			</div>
			<input type="submit" value="전송">
		</div>

	</form>
</body>
</html>