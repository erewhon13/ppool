<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/ppool/resources/css/sidemenustyles.css">
<script src="/ppool/resources/js/sidemenuscript.js"></script>
</head>
<body>
<div id="side">
<div id="sidelogin"><div id="topbar" class="nonelogined"
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
		<span id="mid">
		<a href="/ppool/userinfo.action?userNo=${loginuser.getUserNo()}">${loginuser ne null ? loginuser.getUserName() : ""}</a></span>님 환영합니다.
		<a href='/ppool/userlogout.action'>로그아웃</a>
		<ul>
		<li>
		<a href='/ppool/resume.action'>이력/경력사항 관리</a>
		</li>
		<li>
		<a href='/ppool/historylist.action'>프로젝트이력등록</a>
		</li>
		</ul>
		
		
	</div>
	</div>
	<div id="sidemenu">
		<ul>
			<li><a href='#'><span>홈</span></a></li>

			<li><a href='#'><span>공지사항</span></a></li>

			<li><a href='#'><span>1</span></a></li>
			<c:if test='${loginuser ne null && uri eq "/ppool/userinfo.action"}'>
				<li class='last'><a href='/ppool/userinfoupdateform.action?userNo=${user.getUserNo()}'><span>회원정보수정</span></a></li>
			</c:if>
		</ul>
	</div>
	</div>
</body>
</html>