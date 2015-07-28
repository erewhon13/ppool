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
<script src="/ppool/resources/js/menuscript.js"></script>

<title>등록하기</title>
</head>

<body>
	
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/sidemenu.jsp"></c:import>
	<div>
		
		<div align="center" style="margin-top: 3%" >
			<div id="pageContainer">	
				<form id="writeform" action="notificationwrite.action" method="post">
				<table  border="1">
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="notificationTitle" style="width:280px" />
						</td>
					</tr>
					<tr>
						<th>관리번호</th>
						<td>
						<input type="text" name="adminNo" style="width:280px" value="1" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>
							<input type="date" name="notificationRegisterDay" style="width:280px" />
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>		                    
							<textarea 
								name="notificationContent" cols="76" rows="15"></textarea>
						</td>
					</tr>
				</table>
				<br /><br />
				<div class="buttons">	        	
					<input type='submit' value='등록' style='height:25px' />
					&nbsp;&nbsp;
					<input type="button" value="취소" style="height: 25px" 
						onclick="location.href='notificationlist.action';"/>
				</div>
				</form>
			</div>
		</div>   	
	
	</div>
			

</body>
</html>