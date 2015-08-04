<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Search Page</title>
		<link rel="stylesheet" href="resources/css/project.css" />
		<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
		
<style type="text/css">

#s_top{
height:30px;
margin-left:64px;
}
#s_center{


}


.li-style1 li{display:inline;}

</style>


<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
		
	<c:set var="users"  value="${users}"/>
 		<!-- <div id="s_top"></div> 공간바 -->
		
		<!-- 	
			<div id="s_center" >가운데
			
			<hr border-top:1px solid />
					 -->
			<div  class="basic" ><br/>
				<form id="searchfield" action="searchUser.action" method="POST">
				<img src="/ppool/resources/images/usersearchlogo.png" style="height:40px; margin-top: 8px;" >
				<table class="tech">
					<tr>
						<th >개발</th>
							<td class="w85" colspan="3">
							<table class="checkbox skill">
								<tr>
									<td><input type="checkbox" name="skill" value="100" > .NET</td>
									<td><input type="checkbox" name="skill" value="101" > ANDROID</td>
									<td><input type="checkbox" name="skill" value="102" > ASP</td>
									<td><input type="checkbox" name="skill" value="103" > C</td>
								</tr>	
								<tr>
									<td><input type="checkbox" name="skill" value="104" > C#</td>
									<td><input type="checkbox" name="skill" value="105" > C++</td>
									<td><input type="checkbox" name="skill" value="106" > CSS</td>
									<td><input type="checkbox" name="skill" value="107" > DB</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="skill" value="108" > DELPHI</td>
									<td><input type="checkbox" name="skill" value="109" > HTML</td>
									<td><input type="checkbox" name="skill" value="110" > IOS</td>
									<td><input type="checkbox" name="skill" value="111" > JAVA</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="skill" value="112" > JSP</td>
									<td><input type="checkbox" name="skill" value="113" > LINUX</td>
									<td><input type="checkbox" name="skill" value="114" > PHP</td>
									<td><input type="checkbox" name="skill" value="115" > PYTHON</td>
								</tr>
								<tr >	
									<td><input type="checkbox" name="skill" value="116" > RUBY</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th >디자인</th>
						<td class="w85" colspan="3">
							<table class="checkbox skill">	
								<tr>
									<td><input type="checkbox" name="skill" value="200" > HTML5</td>
									<td><input type="checkbox" name="skill" value="201" > 그래픽디자인</td>
									<td><input type="checkbox" name="skill" value="202" > 모바일 </td>
									<td><input type="checkbox" name="skill" value="203" > 웹디자인 </td>
								</tr>
								<tr>
									<td><input type="checkbox" name="skill" value="204" > 파워포인트 </td>
									<td><input type="checkbox" name="skill" value="205" > 포토샵편집 </td>
									<td><input type="checkbox" name="skill" value="206" > 플래시 </td>
									<td><input type="checkbox" name="skill" value="207" > 3D </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th >지역</th>
						<td class="w85" colspan="3">
							<table class="check location">	
								<tr>
									<td><input type="checkbox" name="location" value="11" > 강북</td>
									<td><input type="checkbox" name="location" value="12" > 강동</td>
									<td><input type="checkbox" name="location" value="13" > 강남</td>
									<td><input type="checkbox" name="location" value="14" > 강서 </td>
									<td><input type="checkbox" name="location" value="15" > 용인 </td>
									<td><input type="checkbox" name="location" value="16" > 화성 </td>
								</tr>
								<tr>
									<td><input type="checkbox" name="location" value="17" > 일산 </td>
									<td><input type="checkbox" name="location" value="18" > 성남 </td>
									<td><input type="checkbox" name="location" value="19" > 수원 </td>
									<td><input type="checkbox" name="location" value="20" > 충북 </td>
									<td><input type="checkbox" name="location" value="21" > 충남 </td>
									<td><input type="checkbox" name="location" value="22" > 대전 </td>
								</tr>
								<tr>
									<td><input type="checkbox" name="location" value="23" > 강원 </td>
									<td><input type="checkbox" name="location" value="24" > 경북 </td>
									<td><input type="checkbox" name="location" value="25" > 경남 </td>
									<td><input type="checkbox" name="location" value="26" > 대구 </td>
									<td><input type="checkbox" name="location" value="27" > 전북 </td>
									<td><input type="checkbox" name="location" value="28" > 전남 </td>
								</tr>
								<tr>
									<td><input type="checkbox" name="location" value="29" > 광주 </td>
									<td><input type="checkbox" name="location" value="30" > 부산 </td>
									<td><input type="checkbox" name="location" value="31" > 울산 </td>
									<td><input type="checkbox" name="location" value="32" > 제주 </td>
									<td><input type="checkbox" name="location" value="33" > 해외 </td>
								</tr>
								</table>
						</td>
					</tr>
				</table>
		    </form>		
		  		 <div class="selector" style="margin-top:10px">
					<img src="/ppool/resources/images/search.png" id="search">
				</div>		
				<div style="margin-top:20px">
	   				 <table>
	   					 <tr style="background-color: #FF9147; color: #ffffff;height: 30px;">
							<th style="width: 10%">회원정보</th>
							<th style="width: 25%">이력사항</th>
							<th style="width: 10%">희망지역</th>
							<th style="width: 10%">프로젝트 경험여부</th>
						</tr>
						<c:forEach var="user" items="${ users }">
						<tr style='text-align: center; height: 30px; background-color: #F1F1F1;'>
							<td style="text-align: center">
									<c:url value="userdetailview.action" var="viewUrl">
										<c:param name="userNo"  value="${ user.userNo }"/>
									</c:url> <a href='${viewUrl}'> ${user.userEmail} </a>
							</td>
							<td style="text-align: center">${ user.userSkill }</td>
							<td style="text-align: center">${ user.userAddress }</td>
							<td style="text-align: center">${ user.userExperience }</td>
						</tr>
					</c:forEach>
						
						
	  	 	 	</table>
	    		</div>
	    </div>	
	    
	    
	    		
   </div>
 </body>
</html>
