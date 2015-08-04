<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<link rel="stylesheet" href="/ppool/resources/css/sidemenustyles.css">

<div align="left">
	<div id="logo" >
		<img src="/ppool/resources/images/ppoollogo.png"
			onclick="location.href='/ppool/home.action'" style="width:250px; margin-left: 2%;">
	</div>
</div>
<div id="cast">
	<div id='cssmenu'>
		<ul>
			<li><a href='/ppool/home.action'>홈</a></li>
			<li><a href='/ppool/notificationlist.action'>공지사항</a></li>
			<li><a href='/ppool/projectlist.action'>프로젝트</a></li>
			<li><a href='/ppool/search.action'>인물검색</a></li>
			<li><a href='/ppool/reportlist.action'>신고목록</a></li>
		</ul>
	</div>
	<div id="side">
		<div id="sidelogin">
			<div id="topbar" class="nonelogined"
				style='display : ${loginuser eq null ? "block" : "none"}'>
				<form action="userlogin.action" method="POST">
					<div id="email">
						<label>이메일 : </label><input type="text" id="userEmail"
							name="userEmail"/>
					</div>
					<div id="passwd">
						<label>비밀번호 : </label><input type="password" id="userPasswd"
							name="userPasswd" />
					</div>
					<div id="userinfo">
						<input type="submit" value="로그인">
					</div>
				</form>
				<div id="userinfo">
					<a href="/ppool/registerview.action">회원가입</a>
				</div>
			</div>
			<div id="topbar" class="logined"
				style='display : ${loginuser eq null ? "none" : "block"}'>
				<span id="mid"> 
				<a href="/ppool/userinfo.action?userNo=${loginuser.userNo}">${loginuser ne null ? loginuser.userName : ""}</a></span>님
				환영합니다. <a href='/ppool/userlogout.action'>로그아웃</a>
			</div>
		</div>
		<div id="sidemenu">
			<ul>
				<li><a href='/ppool/home.action'><span>홈</span></a></li>
				<li><a href='/ppool/notificationlist.action'>공지사항</a></li>
				<c:if test="${loginuser ne null}">

					<li><a href='/ppool/resume.action?userNo=${loginuser.userNo}'>이력/경력사항
							관리</a></li>
					<li><a href='/ppool/historylist.action'>프로젝트이력등록</a></li>
					<li><a
						href='/ppool/projectbookmarklist.action?userNo=${loginuser.userNo }'>북마크
							리스트</a></li>
					<c:if test="${uri eq '/ppool/userinfo.action'}">
						<li><a
							href='/ppool/userinfoupdateform.action?userNo=${user.getUserNo() }'><span>회원정보수정</span></a></li>
					</c:if>
				</c:if>
			</ul>
		</div>
		<div id="sidebottom">
			<img src="/ppool/resources/images/sidephone.png" />
		</div>
	</div>