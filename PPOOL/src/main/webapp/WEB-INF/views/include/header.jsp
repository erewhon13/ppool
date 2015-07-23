<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<title>Main Page</title>
</head>
<body>
	<div id="topbar" class="nonelogined"
		style='display : ${loginuser eq null ? "block" : "none"}'>
		<div id="email">
			<label>이메일 : </label><input type="text" id="userEmail" />
		</div>
		<div id="passwd">
			<label>비밀번호 : </label><input type="password" id="userPasswd" />
		</div>
		<div id="userinfo">
			<a href="/ppool/userlogin.action" id="userLogin">로그인</a>
		</div>
		<div id="userinfo">
			<a href="/ppool/registerview.action">회원가입</a>
		</div>
	</div>
	<div id="topbar" class="logined"
		style='display : ${loginuser eq null ? "none" : "block"}'>
		<span id="mid"><a
			href="/ppool/userinfo.action?userNo=${loginuser.getUserNo()}">${loginuser ne null ? loginuser.getUserName() : ""}</a></span>님
		환영합니다. <a href='/ppool/userlogout.action'>로그아웃</a>
	</div>
	<div id="logo">
		<img src="/ppool/resources/images/PPOOL.png"
			onclick="location.href='/ppool/home.action'">
	</div>
	<div id='cssmenu'>
		<ul>
			<li><a href='/ppool/home.action'>홈</a></li>
			<li class='active'><a href='/ppool/notificationlist.action'>공지사항</a></li>
			<li><a href='/ppool/registerproject.action'>프로젝트</a></li>
			<li><a href='/ppool/search.action'>인물검색</a></li>
			<li><a href='#'>메뉴 3</a>
				<ul>
					<li><a href='#'>하위 메뉴 1</a>
						<ul>
							<li><a href='#'>콘텐츠</a></li>
							<li><a href='#'>콘텐츠</a></li>
						</ul></li>
					<li><a href='#'>하위 메뉴 2</a>
						<ul>
							<li><a href='#'>콘텐츠</a></li>
							<li><a href='#'>콘텐츠</a></li>
						</ul></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>
