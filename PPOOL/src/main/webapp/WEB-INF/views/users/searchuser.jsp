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
height:2000px;
background-color:white;
float:left;
}

#s_inside{
width:920px;
height:940px;
background-color:rgb(191,195,199);
margin:10px;
}

#s_inside2{
width:920px;
height:940px;
background-color:rgb(191,195,199);
margin:10px;
}

.li-style1 li{display:inline;}

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
					
				
						<div id="s_inside" style="margin-top:10px; border:1px solid;">
							<table style="text-align:center; width:100%;  height:150px; ">		
								 		<tbody>
								 				<tr>
								 						<td style="width:20%">개발분야</td>
								 						<td style="width:80% " align="left" >
								 								
														<ul class="li-style1">				
																	
																	<li><input type="checkbox" name="100" value=".NET" > .NET</li>
																	<li><input type="checkbox" name="101" value="ANDROID" > ANDROID</li>
																	<li><input type="checkbox" name="102" value="ASP" > ASP</li>
																	<li><input type="checkbox" name="103" value="C" > C</li>	
																	<li><input type="checkbox" name="104" value="C#" > C#</li>
																	<li><input type="checkbox" name="105" value="C++" > C++</li>
																	<li><input type="checkbox" name="106" value="CSS" > CSS</li>
																	<li><input type="checkbox" name="107" value="DB" > DB</li>
																	<li><input type="checkbox" name="108" value="DELPHI" > DELPHI</li>
																	<br>
																	<li><input type="checkbox" name="109" value="HTML" > HTML</li>
																	<li><input type="checkbox" name="110" value="IOS" > IOS</li>
																	<li><input type="checkbox" name="111" value="JAVA" > JAVA</li>
																	<li><input type="checkbox" name="112" value="JSP" > JSP</li>
																	<li><input type="checkbox" name="113" value="LINUX" > LINUX</li>
																	<li><input type="checkbox" name="114" value="PHP" > PHP</li>
																	<li><input type="checkbox" name="115" value="PYTHON" > PYTHON</li>
																	<li><input type="checkbox" name="116" value="RUBY" > RUBY</li>
																	
														</ul>
														
								 						</td>
								 				</tr>
								 		</tbody>
							</table>	
								<hr style="border:outset 1px gray; width:98%;"/>
							<table  style="text-align:center; width:100%;  height:150px;">
										<tbody>
								 				<tr>
								 						<td style="width:20%">디자인/퍼블리싱 분야</td>
								 						<td style="width:80%" align="left" >
								 						
								 							<ul class="li-style1">	
								 								<li><input type="checkbox" name="200" value="HTML5" > HTML5</li>
																<li><input type="checkbox" name="201" value="그래픽디자인" >그래픽디자인</li>
																<li><input type="checkbox" name="202" value="모바일" > 모바일 </li>
																<li><input type="checkbox" name="203" value="웹디자인" > 웹디자인 </li>
								 								<li><input type="checkbox" name="204" value="파워포인트" > 파워포인트 </li>
								 								<li><input type="checkbox" name="205" value="포토샵편집" > 포토샵편집 </li>
								 								<li><input type="checkbox" name="206" value="플래시" > 플래시 </li>
								 								<li><input type="checkbox" name="207" value="3D" > 3D </li>
								 							</ul>
								 						</td>
								 				</tr>
								 		</tbody>
							</table>	
								 <hr style="border:outset 1px gray; width:98%;"/>
							<table  style="text-align:center; width:100%;  height:150px;">
										<tbody>
								 				<tr>
								 						<td style="width:20%">근무희망지역</td>
								 						<td style="width:80%" align="left" >
								 								<ul class="li-style1">	
								 								<li><input type="checkbox" name="200" value="강북" > 강북</li>
																<li><input type="checkbox" name="201" value="강동" >강동</li>
																<li><input type="checkbox" name="202" value="강남" >강남</li>
																<li><input type="checkbox" name="203" value="강서" > 강서 </li>
								 								<li><input type="checkbox" name="204" value="용인" > 용인 </li>
								 								<li><input type="checkbox" name="205" value="화성" > 화성 </li>
								 								<li><input type="checkbox" name="206" value="일산" > 일산 </li>
								 								<li><input type="checkbox" name="207" value="수원" > 수원 </li>
								 								<li><input type="checkbox" name="207" value="충북" > 충북 </li>
								 								<li><input type="checkbox" name="207" value="충남" > 충남 </li>
								 								<li><input type="checkbox" name="207" value="대전" > 대전 </li>
								 								<br>
								 								<li><input type="checkbox" name="207" value="강원" > 강원 </li>
								 								<li><input type="checkbox" name="207" value="경북" > 경북 </li>
								 								<li><input type="checkbox" name="207" value="경남" > 경남 </li>
								 								<li><input type="checkbox" name="207" value="대구" > 대구 </li>
								 								<li><input type="checkbox" name="207" value="전북" > 전북 </li>
								 								<li><input type="checkbox" name="207" value="전남" > 전남 </li>
								 								<li><input type="checkbox" name="207" value="광주" > 광주 </li>
								 								<li><input type="checkbox" name="207" value="부산" > 부산 </li>
								 								<li><input type="checkbox" name="207" value="울산" > 울산 </li>
								 								<li><input type="checkbox" name="207" value="제주" > 제주 </li>
								 								<li><input type="checkbox" name="207" value="해외" > 해외 </li>
								 								
								 							</ul>
								 								
								 						</td>
								 				</tr>
								 		</tbody>
							</table>		 
					 <hr style="border:outset 1px gray; width:98%;"/>	 
								 <table  style="text-align:center; width:100%;  height:100px; ">
										<tbody>
								 				<tr>
								 						<td style="width:20%">등급</td>
								 						<td style="width:80%" align="left" >
								 						
								 							<ul class="li-style1">	
								 								<li><input type="checkbox" name="r1" value="초급" > 초급</li>
																<li><input type="checkbox" name="r2" value="중급" >중급</li>
																<li><input type="checkbox" name="r3" value="고급" > 고급 </li>
								 							</ul>
								 						</td>
								 				</tr>
								 		</tbody>
								</table>	
						<hr style="border:outset 1px gray; width:98%;"/>	 
								<table  style="text-align:center; width:100%;  height:100px; ">
										<tbody>
								 				<tr>
								 						<td style="width:20%">학력</td>
								 						<td style="width:80%" align="left" >
								 							<select name="school">
								 									<option value="0" selected>전체</option>
								 									<option value="1">고등학교 졸업</option>
								 									<option value="2">대학교(2,3년)</option>
								 									<option value="3">대학교(4년)</option>
								 									<option value="4">대학원(석사)</option>
								 									<option value="5">대학원(박사)</option>
								 									
								 							</select>
								 						</td>
								 				</tr>
								 		</tbody>
								</table>	
						  <hr style="border:outset 1px gray; width:98%;"/>	 
								<table  style="text-align:center; width:100%;  height:100px; ">
										<tbody>
								 				<tr>
								 						<td style="width:20%">나이</td>
								 						<td style="width:80%" align="left" >
								 								<input type="text" name="ageto"  style="width:30px" maxlength="2">세 ~
								 								<input type="text" name="agefrom " style="width:30px" maxlength="2">세
								 						</td>
								 				</tr>
								 		</tbody>
								</table>
							<hr style="border:outset 1px gray; width:98%;"/>	 
								<table  style="text-align:center; width:100%;  height:100px; ">
									<td>
										<button>검색하기</button>
										<button>초기화</button>
									</td>
								</table>
						
						</div>
						<br>
						<div id="s_inside2" style="margin-top:10px; border:1px solid;" >
							<table style="text-align:center; width:100%; height:50px;" border="1px solid #bcbcbc" >
								<td style="text-align: center; width:15%; height:50px;">회원정보</td>
								<td style="text-align: center; width:15%; height:50px;">등급</td>
								<td style="text-align: center; width:40%; height:50px;">이력사항 </td>
								<td style="text-align: center; width:15%; height:50px;">희망지역</td>
								<td style="text-align: center; width:15%; height:50px;">엠블럼</td>
							</table>
							<table style="text-align:center; width:100%; height:80px;" border="1px solid #bcbcbc" >
								<td style="text-align: center; width:15%; height:50px;"></td>
								<td style="text-align: center; width:15%; height:50px;"></td>
								<td style="text-align: center; width:40%; height:50px;"></td>
								<td style="text-align: center; width:15%; height:50px;"></td>
								<td style="text-align: center; width:15%; height:50px;"></td>
							
							</table>
				
						
						
						</div>
						
				</div>
    </body>
</html>
