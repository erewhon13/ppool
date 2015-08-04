<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ppool/resources/css/mainpage.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript">
	</script>
<style type="text/css">

}

 
</style>
<script src="//code.jquery.com/jquery-1.11.3.js"></script>
<!-- <script type="text/javascript">
$(function(){
	var userEmail = $("#userEmail").val();
	console.log(userEmail);
	alert(userEmail);
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
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>
