<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<title>Main Page</title>
</head>
<c:import url="/WEB-INF/views/include/header.jsp" />
<div>
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
				<label>성별 :</label> <label>남</label><input type="radio"
					name="userGender" value="1"> <label>여</label><input
					type="radio" name="userGender" value="0">
			</div>
			<div>
				<label>주소 :</label> <input type="text" name="userAddress">
			</div>
			<div>
				<label>프로젝트 경험여부 :</label> <label>유</label><input type="radio"
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
			<!-- <div>
				<label>정보공개여부 :</label> <select name="userOpenLevel">
					<option value="1">1단계</option>
					<option value="2">2단계</option>
					<option value="3">3단계</option>
				</select>
			</div> -->
			<div>
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

			</div>
			<div>
				<input type="submit" value="OK" />
			</div>
		</div>
	</form>
</div>
</body>
</html>