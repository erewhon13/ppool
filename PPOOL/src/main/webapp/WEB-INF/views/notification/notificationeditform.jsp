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
<link rel="stylesheet" href="resources/css/project.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#update").click(function(){
				var result = confirm('${notification.notificationTitle}를 수정하시겠습니까?');
		        if(result) {
		        	//yes
		        	var url = "/ppool/notificationdelete.action?notificationNo="+"${notification.notificationNo}";
		        	$(location).attr("href",url);
		        }else{
		        }
		 });
	});
</script>

<title>편집</title>
</head>

<body>
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	
	<div>
		<div align="center" style="margin-top: 2%;" >
			<div id="pageContainer">	
				<form id="editform" action="notificationupdate.action" method="post">
				<input type="hidden" c:out value="${ requestScope.notification}"/>
				<input type="hidden" name="notificationNo" value="${ notification.notificationNo }" />
				<table  style="border: groove; width: 79%; margin-left: 1%">
				<caption style="text-align:left;font-size:14pt; color:#1BA6B2;font-weight: 700;">수정하기</caption>
					<tr style="color: #ffffff; width: 100%" >
		                <th bgcolor="#7d97d3" style="font-size: 14pt; width: 100pt;">제목</th>
		                <td>
		                	<input type="text" name="notificationTitle" style='width:825px; font-size: 13pt' value="${ notification.notificationTitle }" />
		                </td>
		            </tr>
		            <tr style="color: #ffffff">
		                <th bgcolor="#7d97d3" style="font-size: 14pt">내용</th>
		                <td>
							<textarea 
		                    	name="notificationContent" style="width:825px; font-size: 13pt" 
		                    	rows="20" >${ notification.notificationContent }</textarea>
		                </td>
		            </tr>
				</table>
				<br />
				<div style="width: 100%;" align="right">        	
					<input type="submit" class="btn" id="update" value="수정"/>
					<input type="button" class="btn" id="cancel" value="취소" onclick="location.href='notificationlist.action';"/>
				</div>
				</form>
			</div>
		</div>   	
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>