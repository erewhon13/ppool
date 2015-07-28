<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<script src="/ppool/resources/js/userinfoscript.js"></script>
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<body>
	
	<div id="logo">
		<img src="/ppool/resources/images/PPOOL.png"
			onclick="location.href='/ppool/home.action'">
	</div>
	<div id='cssmenu'>
		<ul>
			<li><a href='/ppool/home.action'>홈</a></li>
			<li class='active'><a href='/ppool/notificationlist.action'>공지사항</a></li>
			<li><a href='/ppool/projectlist.action'>프로젝트</a></li>
			<li><a href='/ppool/search.action'>인물검색</a></li>
			<li><a href='/ppool/resume.action'>이력/경력사항 관리</a></li>
			<li><a href='/ppool/historylist.action'>프로젝트이력등록</a></li>
		</ul>
	</div>