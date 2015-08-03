<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<script type='text/javascript' src='/ppool/resources/js/filereader.js'></script>
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script type="text/javascript">
	$(function() {

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

		var skills = '${skills}'.split(",");
		var locations = '${locations}'.split(",");

		$.each(skills, function(index, obj) {
			$('.userskill input[value=' + obj + ']').attr('checked', true);
		});
		$.each(locations, function(index, obj) {
			$('.userlocation input[value=' + obj + ']').attr('checked', true);
		});

	});
</script>
<title>Insert title here</title>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	<form action="userinfoupdate.action" method="POST"
		enctype="multipart/form-data">
		<input type="hidden" value="${user.getUserNo()}" name="userNo">
		<div id="personaldata">
			<div align="center">
				<table>
					<caption>회원정보수정</caption>
					<tr>
						<th>기본</th>
						<td><div id="user">
								<ul>
									<li><input type="file" accept="image/**" id="fileinput"
										name="userProfile"></li>
									<li><label>이름 : </label><input type="text"
										value="${user.getUserName()}" name="userName"></li>
									<li><label>휴대전화 : </label><input type="text"
										value="${user.getUserPhone()}" name="userPhone"></li>
									<li><label>생년월일 : </label><input type="date"
										name="userBirth"></li>
									<li><label>성별 : </label><label>남</label><input
										type="radio" name="userGender" value="1"> <label>여</label><input
										type="radio" name="userGender" value="0"></li>
									<li><label>주소 : </label><input type="text"
										value="${user.getUserAddress()}" name="userAddress"></li>
									<li><label>경험유무 : </label><label>유</label><input
										type="radio" name="userExperience" value="1"> <label>무</label><input
										type="radio" name="userExperience" value="0"></li>
									<li><label>최종학력 :</label> <select name="userAcademic">
											<option>대졸</option>
									</select></li>
									<li><label>전공 :</label> <select name="userMajor">
											<option>컴퓨터공학과</option>
									</select></li>
								</ul>
							</div></td>
						<td><div id="imageview"></div></td>
					</tr>
					<tr>
						<th>유저 스킬</th>
						<td><div class="userskill">
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
							</div></td>
					</tr>
					<tr>
						<th>유저 스킬</th>
						<td><div class="userskill">
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
							</div></td>
					</tr>
					<tr>
						<th>유저 지역</th>
						<td><div class="userlocation">
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
							</div></td>
					</tr>
					<tr style="text-align: center;">
						<td><input type="submit" value="전송"></td>
					</tr>
				</table>
			</div>

		</div>
	</form>
</body>
</html>