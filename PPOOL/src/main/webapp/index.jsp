<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

div#s_left{
width:200px;
height:700px;
background-color:gray;
float:left;
margin-left:64px;

}

#s_middle{
width:30px;
height:700px;
background-color:white;
float:right;

}


</style>

	
<title>Main Page</title>
</head>

<body>
	<%pageContext.include("/WEB-INF/views/include/header.jsp"); %>
	<div id="main" >가나다라마바사아자차카타파하</div>
	
	
	<div id="s_left" >왼쪽바
		<div id="s_middle"></div><!-- 가운데 끼인바 -->
	</div>
	
	
	
	
</body>
</html>