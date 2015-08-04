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
		<div id="personaldata">
			<div align="center">
				<table style="width: 100%;margin-top: 6%">
					<caption>회원가입 페이지</caption>
					<tr>
						<th>기본</th>
						<td><div id="user">
								<ul>
									<li><label>이메일 :</label> <input type="email"
										name="userEmail"></li>
									<li><label>비밀번호 :</label> <input type="password"
										name="userPasswd"></li>
									<li><label>비밀번호 확인 :</label> <input type="password"></li>
									<li><label>이름 :</label> <input type="text" name="userName"></li>
									<li><label>전화번호 :</label> <input type="tel"
										name="userPhone"></li>
									<li><label>생년월일 :</label> <input type="date"
										name="userBirth"></li>
									<li><label>성별 :</label> <label>남</label><input
										type="radio" name="userGender" value="1"> <label>여</label><input
										type="radio" name="userGender" value="0"></li>
									<li><label>주소 :</label> <input type="text"
										name="userAddress"></li>
									<li><label>프로젝트 경험여부 :</label> <label>유</label><input
										type="radio" name="userExperience" value="1"> <label>무</label><input
										type="radio" name="userExperience" value="0"></li>
									<li><label>최종학력 :</label> <select name="userAcademic">
											<option>대졸</option>
									</select></li>
									<li><label>전공 :</label> <select name="userMajor">
											<option>컴퓨터공학과</option>
									</select></li>
									<li></li>
								</ul>

								<!-- <div>
				<label>정보공개여부 :</label> <select name="userOpenLevel">
					<option value="1">1단계</option>
					<option value="2">2단계</option>
					<option value="3">3단계</option>
				</select>
			</div> -->


							</div></td>
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
</div>
</body>
</html>