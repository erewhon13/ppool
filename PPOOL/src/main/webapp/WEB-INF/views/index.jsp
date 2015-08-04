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
<!-- <script type="text/javascript">
$(function(){
	var userEmail = $("#userEmail").val();
	console.log(userEmail);
	var userPasswd = $("#userPasswd").val();
	var url = "/ppool/userlogin.action?userEmail="+ userEmail+"&userPasswd=" +userPasswd;
	$("#login").click(function() {
		$("#login").attr("href",url);
	})
})
</script> -->
<title>Main Page</title>
</head>

<body>
	<%pageContext.include("/WEB-INF/views/include/header.jsp"); %>
	<div id="main" style="float: right; width: 79%;">
		<img src="/ppool/resources/images/main.png" style="width: 100%">
		
		
		<div >
		<hr style="  border: 0;    height: 0;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
    border-bottom: 1px solid rgba(255, 255, 255, 0.3);">공지사항</h3>
			<table border="1" >
			<tr>
				<td>dd</td>
				<td>제목</td>
			</tr>
			</table>
		</div>
		
	</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>