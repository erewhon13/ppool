<%@page import="com.ppool.dto.Notification"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

<title>편집</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	
	<div>
		<div align="center" style="margin-top: 4%; margin-left: 30%;" >
			<div id="pageContainer">	
				<form id="editform" action="notificationupdate.action" method="post">
				<input type="hidden" c:out value="${ requestScope.notification}"/>
				<input type="hidden" name="notificationNo" value="${ notification.notificationNo }" />
				<table  style="border: ridge;">
				<caption style="text-align:left;font-size:15pt; color:#1BA6B2;font-weight: 700;">수정하기</caption>
					<tr>
		                <th bgcolor="#FF9147" style="font-size: 14pt; width: 100pt">제목</th>
		                <td>
		                	<input type="text" name="notificationTitle" style='width:702px; font-size: 13pt' value="${ notification.notificationTitle }" />
		                </td>
		            </tr>
		            <tr>
		                <th bgcolor="#FF9147" style="font-size: 14pt">내용</th>
		                <td>
							<textarea 
		                    	name="notificationContent" style="width:702px; font-size: 13pt" 
		                    	rows="20" >${ notification.notificationContent }</textarea>
		                </td>
		            </tr>
				</table>
				<br />
				<div class="buttons">	        	
					<input type='submit' value='수정' style='height:25px' />
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