<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$("#btn").click(function() {
		var result = confirm('Are you sure you want to do this?');
		if (result) {
			//yes
			alert("yes")
			
		}else{
			alert("no");
		}
	})
	var skills = '${skills}'.split(",");
	var locations = '${locations}'.split(",");
	console.log(locations);
	$.each(skills, function(index, obj){
		$('.userskill input[value='+obj+']').attr('checked', true);
	});
	$.each(locations, function(index, obj){
		$('.userlocation input[value='+obj+']').attr('checked', true);
	});
	$('.userskill input, .userlocation input').attr('disabled','disabled');
});
</script>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp"/>
	<input type="button" id="btn"> 
		<div id="personaldata">
			<c:choose>
				<c:when test="${user.isUserPictureExist() eq true}">
					<div id="imageview">
						<img src="/ppool/resources/images/${user.getUserPictureSavedName()}">
					</div>
				</c:when>
				<c:otherwise>
					<div id="defaultimage">
						<img src="/ppool/resources/images/default_image.png" />
					</div>
				</c:otherwise>
			</c:choose>
			<form action="userinfoupdateform.action" method="POST">
			<div>
				<label>이름 : </label>${user.getUserName()}</div>
			<div>
				<label>휴대전화 : </label>${user.getUserPhone()}</div>
			<div>
				<label>생년월일 : </label><f:formatDate value="${user.getUserBirth()}" pattern="yy년 MM월 dd일" var="stampDay"/>${stampDay}</div>			<div>
				<label>성별 : </label>${user.isUserGender() eq true ? "남" : "여"}</div>
			<div>
				<label>주소 : </label>${user.getUserAddress()}</div>
			<div>
				<label>경험유무 : </label>${user.isUserExperience() eq true ? "유" : "무"}</div>
			<div>
				<label>최종학력 : </label>${user.getUserAcademic()}</div>
			<div>
				<label>전공 : </label>${user.getUserMajor()}</div>
			<div class="userskill">
				<ul>
					<li><input type="checkbox" name="userSkill" value="100">.NET</li>
					<li><input type="checkbox" name="userSkill" value="101">
						ANDROID</li>
					<li><input type="checkbox" name="userSkill" value="102">
						ASP</li>
					<li><input type="checkbox" name="userSkill" value="103">
						C</li>
					<br />
					<li><input type="checkbox" name="userSkill" value="104">
						C#</li>
					<li><input type="checkbox" name="userSkill" value="105">
						C++</li>
					<li><input type="checkbox" name="userSkill" value="106">
						CSS</li>
					<li><input type="checkbox" name="userSkill" value="107">
						DB</li>
					<br />
					<li><input type="checkbox" name="userSkill" value="108">
						DELPHI</li>
					<li><input type="checkbox" name="userSkill" value="109">
						HTML</li>
					<li><input type="checkbox" name="userSkill" value="110">
						IOS</li>
					<li><input type="checkbox" name="userSkill" value="111">
						JAVA</li>
					<br />
					<li><input type="checkbox" name="userSkill" value="112">
						JSP</li>
					<li><input type="checkbox" name="userSkill" value="113">
						LINUX</li>
					<li><input type="checkbox" name="userSkill" value="114">
						PHP</li>
					<li><input type="checkbox" name="userSkill" value="115">
						PYTHON</li>
					<li><input type="checkbox" name="userSkill" value="116">
						RUBY</li>
				</ul>
			</div>
			<div class="userskill">
					<ul>
						<li><input type="checkbox" name="userSkill" value="200">
							HTML5</li>
						<li><input type="checkbox" name="userSkill" value="201">
							그래픽디자인</li>
						<li><input type="checkbox" name="userSkill" value="202">
							모바일</li>
						<li><input type="checkbox" name="userSkill" value="203">
							웹디자인</li>
						<br />
						<li><input type="checkbox" name="userSkill" value="204">
							파워포인트</li>
						<li><input type="checkbox" name="userSkill" value="205">
							포토샵편집</li>
						<li><input type="checkbox" name="userSkill" value="206">
							플래시</li>
						<li><input type="checkbox" name="userSkill" value="207">
							3D</li>
					</ul>
				</div>
				<div class="userlocation">
					<ul>
						<li><input type="checkbox" name="userLocation" value="11">
							강북</li>
						<li><input type="checkbox" name="userLocation" value="12">
							강동</li>
						<li><input type="checkbox" name="userLocation" value="13">
							강남</li>
						<li><input type="checkbox" name="userLocation" value="14">
							강서</li>
						<li><input type="checkbox" name="userLocation" value="15">
							용인</li>
						<li><input type="checkbox" name="userLocation" value="16">
							화성</li>
						<li><input type="checkbox" name="userLocation" value="17">
							일산</li>
						<li><input type="checkbox" name="userLocation" value="18">
							성남</li>
						<br />
						<li><input type="checkbox" name="userLocation" value="19">
							수원</li>
						<li><input type="checkbox" name="userLocation" value="20">
							충북</li>
						<li><input type="checkbox" name="userLocation" value="21">
							충남</li>
						<li><input type="checkbox" name="userLocation" value="22">
							대전</li>
						<li><input type="checkbox" name="userLocation" value="23">
							강원</li>
						<li><input type="checkbox" name="userLocation" value="24">
							경북</li>
						<li><input type="checkbox" name="userLocation" value="25">
							경남</li>
						<li><input type="checkbox" name="userLocation" value="26">
							대구</li>
						<br />
						<li><input type="checkbox" name="userLocation" value="27">
							전북</li>
						<li><input type="checkbox" name="userLocation" value="28">
							전남</li>
						<li><input type="checkbox" name="userLocation" value="29">
							광주</li>
						<li><input type="checkbox" name="userLocation" value="30">
							부산</li>
						<li><input type="checkbox" name="userLocation" value="31">
							울산</li>
						<li><input type="checkbox" name="userLocation" value="32">
							제주</li>
						<li><input type="checkbox" name="userLocation" value="33">
							해외</li>
					</ul>
				</div>
				</form>
		</div>
	
</body>
</html>