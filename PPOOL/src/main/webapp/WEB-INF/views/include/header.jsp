<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="/ppool/resources/js/menuscript.js"></script>
<title>Main Page</title>
</head>
<body>
	<div id="topbar">
		<div id="email">
			<label>이메일 : </label><input type="text" />
		</div>
		<div id="passwd">
			<label>비밀번호 : </label><input type="password" />
		</div>
		<div id="userinfo">
			<a href="#">로그인</a>
		</div>
		<div id="userinfo">
			<a href="/ppool/registerview.action">회원가입</a>
		</div>
	</div>
	<div id="logo" >
		<img src="/ppool/resources/images/PPOOL.png" onclick="location.href='/ppool/home.action'">
	</div>
	<div id='cssmenu'>
		<ul>
			<li><a href='/ppool/home.action'>홈</a></li>
			<li class='active'><a href='#'>공지사항</a></li>
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
