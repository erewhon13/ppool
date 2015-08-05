<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>관리자 로그인</title>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	<div>		
		<div align="center" style="margin-top: 2.7%" >
			<div id="pageContainer">	
				<form id="adminloginform" action="adminlogin.action" method="post">
				<table style="margin-right:18.5%;border: groove;">
				<caption style="text-align:left;font-size:14pt; color:#1BA6B2;font-weight: 700;">관리자 로그인</caption>
					<tr>
						<th bgcolor="#7d97d3" style="font-size: 14pt; color: #ffffff; width: 140px"  >아이디</th>
						<td>
							<input type="text" name="adminid" style="width:400px; font-size: 14pt" />
						</td>
					</tr>
					<tr>
						<th bgcolor="#7d97d3" style="font-size: 14pt; color: #ffffff;">비밀번호</th>
						<td>
						<input type="password" name="adminpasswd" style="width:400px; font-size: 14pt" />
						</td>
					</tr>
					
				</table>
				<br />
				<div class="buttons">	        	
					<input type='submit' value='등록' style='height:30px; margin-left: 250px' />
					&nbsp;&nbsp;
					<input type="button" value="취소" style="height: 30px" 
						onclick="location.href='notificationlist.action';"/>
				</div>
				</form>
			</div>
		</div>   	
	</div>
</body>
</html>