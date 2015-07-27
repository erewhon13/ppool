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
	<div id="sidemenu">
		<ul>
			<li><a href='#'><span>홈</span></a></li>

			<li><a href='#'><span>공지사항</span></a></li>

			<li><a href='#'><span>1</span></a></li>
			<li class='active has-sub'><a href='#'><span>2</span></a>
				<ul>
					<li class='has-sub'><a href='#'><span>Product 1</span></a>
						<ul>
							<li><a href='#'><span>Sub Product</span></a></li>
							<li class='last'><a href='#'><span>Sub Product</span></a></li>
						</ul></li>
					<li class='has-sub'><a href='#'><span>Product 2</span></a>
						<ul>
							<li><a href='#'><span>Sub Product</span></a></li>
							<li class='last'><a href='#'><span>Sub Product</span></a></li>
						</ul></li>
				</ul></li>
			<c:if test='${loginuser ne null && uri eq "/ppool/userinfo.action"}'>
				<li class='last'><a href='/ppool/userinfoupdateform.action?userNo=${user.getUserNo()}'><span>회원정보수정</span></a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>