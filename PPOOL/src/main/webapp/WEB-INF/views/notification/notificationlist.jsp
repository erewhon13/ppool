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
	<%
		pageContext.include("/WEB-INF/views/include/header.jsp");
	%>

	
	<div>
		<div id="sidemenu">사이드 메뉴</div>
		<div align="center" style="margin-top: 3%">
			<form id="notification" action="" method="post">
				<table width="70%" style="text-align: center;">
					<tr
						style="background-color: #d3d3d3; color: #ffffff; height: 30px; margin-top: 10px;">
						<th style="width: 10%">번호</th>
						<th style="width: 25%">제목</th>
						<th style="width: 15%">등록일</th>
						<th style="width: 10%">관리자번호</th>


					</tr>
					
				</table>




				</table>


				<div>
					<a href="notificationwriteform.action">등록</a>
				</div>
			</form>
		</div>
	</div>



</body>
</html>