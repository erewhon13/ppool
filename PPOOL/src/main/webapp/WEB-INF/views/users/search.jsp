<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset='utf-8'>
<title>Search Page</title>
<style type="text/css">

#s_top{
height:30px;
margin-left:64px;
}

div#s_left{
width:200px;
height:700px;
background-color:gray;
float:left;
margin-left:64px;
}

#s_center{
width:938px;
height:700px;
background-color:maroon;
float:left;
}


</style>



</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
		
		
				<div  id="s_top">공간바
				</div>
		
				<div id="s_left" >왼쪽바
				</div>
		
				<div id="s_center" >가운데
				</div>
		


</body>
</html>