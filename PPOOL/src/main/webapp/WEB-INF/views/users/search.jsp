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
#s_middle{
width:30px;
height:700px;
background-color:black;
float:right;

}

#s_center{
width:938px;
height:700px;
background-color:maroon;
float:left;
}

#s_inside{
width:920px;
height:500px;
background-color:yellow;
margin:10px;
}

#s_inside2{
width:900px;
height:200px;
background-color:lime;
margin:20px;
}


</style>



</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
		
		
				<div  id="s_top">공간바</div>
		
				<div id="s_left" >왼쪽바
					<div id="s_middle">가운데 끼인바</div>
				</div>
			
				
				<div id="s_center" >가운데 인물검색 사진 넣어야지 
					<hr/>
					<div id="s_inside">가운데 위에 개발분야라고 쓸부분 
							<div id="s_inside2">안에 안에</div>
					
					</div>
					
				</div>
				
			


</body>
</html>