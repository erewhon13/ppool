
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>   
   	<script type="text/javascript">
	   $(document).ready(function (){
		 	 $('#register2').click(function(){
					var r = /^[0-9]+$/;
					var e = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
					
					if(!r.test( $('#historystaff').val().trim())){
						alert("숫자만 입력하세요");
						$('#historystaff').focus();
						return;
					}
					$('#register2').submit();
					return;
		  })
		   $('#close').click(function(event){
					$(location).attr('href',"historylist.action");
			   })
		  
	   })
   	</script>
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
				<td><input type="text" id="historystaff" name="historyStaff"/></td>
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
		
		<tr>		<td></td>
				<td><input type="button" id="register2" value="등록하기">
				<input type="button" id="close" value="창닫기"></td>		
		</tr>
		</table>
		</form>
	</div>
</div>
</body>
</html>