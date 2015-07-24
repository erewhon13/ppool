
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Insert title here</title>
</head>
</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<div>
	<div id="sidemenu">사이드 메뉴</div>
	<div id="history" >
	  <form action="historywrite.action" 
		        	method="post" enctype="multipart/form-data">
		<table style="margin: auto; width: 700px">
			<tr >
				<td style="width: 15%; background-color:#FF9147">프로젝트명</td>
				<td style="width: 85%" colspan="3">
				<input type="text" name="historyTitle"></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">작업구분</td>
				<td>
				개발<input type="radio" name="historyWork" value="developer"> 				
				디자인<input	type="radio" name="historyWork" value="designer"> 
				기타<input type="radio"	name="historyWork" value="etc"></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">담당업무</td>
				<td><input type="text" name="historyService"></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">프로젝트 상세설명</td>
				<td><input type="text" name="historyContent" ></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">참여인원</td>
				<td><input type="text" name="historyStaff"/></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">기간</td>
				<td><input type="date" name="historyStartDay"> ~ <input type="date" name="historyEndDay"></td>
			</tr>			
			<tr>
				<td style="background-color:#FF9147">첨부파일</td>
				<td><input type="file" name="attach"></td>
			</tr>
			<tr>
				<td style="background-color:#FF9147">공개여부</td>
				<td>공개<input type="radio" name="historyOpened" value="true"> 
				        비공개<input type="radio" name="historyOpened" value="false"></td>
			</tr>
		
		<tr>
		<td></td>
				<td><input type="submit" value="등록하기" onclick="document.forms[0].submit();">
				<input type="submit" value="창닫기"></td>
		
		</tr>
		</table>
		</form>
	</div>
</div>
</body>
</html>