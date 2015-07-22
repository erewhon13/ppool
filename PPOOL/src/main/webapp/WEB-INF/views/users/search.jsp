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
background-color:white;
float:right;

}

#s_center{
width:938px;
height:700px;
background-color:white;
float:left;
}

#s_inside{
width:920px;
height:500px;
background-color:rgb(191,195,199);
margin:10px;
}

#s_inside2{
width:925px;
height:150px;
background-color:red;
margin-top: 20px;
}



</style>



</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
		
				<div  id="s_top"></div> <!-- 공간바 -->
		
				<div id="s_left" >왼쪽바
					<div id="s_middle"></div><!-- 가운데 끼인바 -->
				</div>
			
				
				<div id="s_center" ><!-- 가운데 -->
					<img src="/ppool/resources/images/search.gif">
					  <hr style="border:inset 1px black; width:99%;"/>
					
						<div id="s_inside" style="margin-top:10px">
							<div id="s_inside2" style="padding-top: 10px">
										
								 <table border="0" cellpacing="0" cellpadding="0" width="700" valign="top">
								 
								 </table>
										
										<li>
											<input type="checkbox" name="" value=".NET">
										</li>
											<li>
											<input type="checkbox" name="" value=".NET">
										</li>
											<li>
											<input type="checkbox" name="" value=".NET">
										</li>
											<li>
											<input type="checkbox" name="" value=".NET">
										</li>
											<li>
											<input type="checkbox" name="" value=".NET">
										</li>
											<li>
											<input type="checkbox" name="" value=".NET">
										</li>
										
										
										
									</div>
								
							</div>
							 <hr style="border:inset 1px black; width:100%;"/>
						</div>
					
				</div>
			


</body>
</html>
