<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/ppool/resources/css/menustyles.css">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<link rel="stylesheet" href="/ppool/resources/css/sidemenustyles.css">
<div align="left">
	<div id="logo">
		<img src="/ppool/resources/images/ppoollogo.png"
			onclick="location.href='/ppool/home.action'"
			style="width: 250px; margin-left: 2%;"> <img
			src="/ppool/resources/images/ppoollogo2.png"
			style="width: 400px; margin-bottom: 2px;">
	</div>
</div>
<div id="cast">
	<div id='cssmenu'>
		<ul>
			<li><a href='/ppool/home.action'>홈</a></li>
			<li><a href='/ppool/notificationlist.action'>공지사항</a></li>
			<li><a href='/ppool/projectlist.action'>프로젝트</a></li>
			<li><a href='/ppool/search.action'>인물검색</a></li>

		</ul>
	</div>
	<div id="side">
		<c:choose>
			<c:when test="${message eq true}">
				<script type="text/javascript">
					alert('asd');
				</script>
			</c:when>
		</c:choose>
		<div id="sidelogin">
			<div class="nonelogined"
				style='display : ${loginuser eq null ? "block" : "none"};'>
				<form action="userlogin.action" method="POST">
					<div id="userinfo">
						<div>
							&nbsp;&nbsp;&nbsp;<label>이메일 : </label> <input type="text"
								id="userEmail" name="userEmail" size="10" />
						</div>
						<div>
							<label>비밀번호 : </label> <input type="password" id="userPasswd"
								name="userPasswd" size="10" />
						</div>
					</div>
					<div id="loginbutton">
						<input type="submit" value="로그인" style="height: 45px;">
					</div>
				</form>
				<br>
				<div>
					<a href="/ppool/registerview.action">회원가입</a> <a
						href="/ppool/registerview.action">이메일/비밀번호 찾기</a>
				</div>
			</div>
			<c:choose>
				<c:when test="${loginuser.userStatus eq true}">
					<div id="topbar" class="logined"
						style='display : ${loginuser eq null ? "none" : "block"}'>
						<span id="mid"><b> <a
								href="/ppool/userinfo.action?userNo=${loginuser.userNo}">${loginuser ne null ? loginuser.userName : ""}</a></b></span>님
						환영합니다. <a href='/ppool/userlogout.action'>로그아웃</a>
					</div>
				</c:when>
				<c:when test="${message eq false}">
					<script type="text/javascript">
						alert("승인받지 않은 이메일입니다.");
					</script>
				</c:when>
			</c:choose>
		</div>
		<div id="sidemenu">
			<ul>
				<li><a href='/ppool/home.action'><span>홈</span></a></li>
				<li><a href='/ppool/notificationlist.action'>공지사항</a></li>
				<c:if test="${loginuser ne null}">

					<li><a href='/ppool/resume.action?userNo=${loginuser.userNo}'>이력/경력사항
							관리</a></li>
					<li><a
						href='/ppool/historylist.action?userNo=${loginuser.userNo}'>프로젝트이력등록</a></li>
					<li><a
						href='/ppool/projectbookmarklist.action?userNo=${loginuser.userNo }'>북마크
							리스트</a></li>
					<c:if test="${uri eq '/ppool/userinfo.action'}">
						<li><a
							href='/ppool/userinfoupdateform.action?userNo=${user.getUserNo() }'><span>회원정보수정</span></a></li>
					</c:if>
					<c:if test="${loginuser.userNo == 1}">
						<li><a href='/ppool/reportlist.action'>신고목록</a></li>
					</c:if>
				</c:if>
			</ul>
		</div>
		<div id="sidebottom">
			<img src="/ppool/resources/images/sidephone.png" />
		</div>
	</div>