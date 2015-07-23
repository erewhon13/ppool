<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script type='text/javascript' src='/ppool/resources/js/filereader.js'></script>
<script type="text/javascript">
	$(function() {
		FileReaderJS.setupInput(document.getElementById("fileinput"), {
			readAsDefault : "DataURL",
			on : {
				load : function(e, file) {
					var img = new Image();
					img.onload = function() {
						$("#imageview").css({
							"margin" : "0 auto"
						}).html(img);
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
	<div id="personaldata">
		<div id="imageview" style="width: 130px;height: 150px;"></div>
		<div>
			<input type="file" accept="image/*" id="fileinput">
		</div>
		<div>
			<label>이름 : </label>${user.getUserName()}</div>
		<div>
			<label>이메일 : </label>${user.getUserEmail()}</div>
		<div>
			<label>휴대전화 : </label>${user.getUserPhone()}</div>
		<div>
			<label>생년월일 : </label>${user.getUserBirth()}</div>
		<div>
			<label>성별 : </label>${user.isUserGender()}</div>
		<div>
			<label>주소 : </label>${user.getUserAddress()}</div>
		<div>
			<label>경험유무 : </label>${user.isUserExperience()}</div>
		<div>
			<label>최종학력 : </label>${user.getUserAcademic()}</div>
		<div>
			<label>전공 : </label>${user.getUserMajor()}</div>
	</div>
</body>
</html>