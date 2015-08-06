
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					$('#form').submit();
					/*$(location).attr('href',"historylist.action"); */
					return;
		  })
		   $('#close').click(function(event){
					$(location).attr('href',"historylist.action?userNo=${loginuser.userNo}");
			   })
		  
	   })
   	</script>
   	<style type="text/css">
   	.button{
   		background-color:#7d97d3;
   		border:solid 3px #7d97d3;
   		color:#fff;font-weight:bold; 
   		cursor: pointer;
   		font-size: 16pt;
    width: 65pt;
    margin-left: 2px;
    padding: 1px 6px;
   	}
   	
   	
   	</style>
</head>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<div>
	<div id="history" style="width:79%;float: right"><br/>
	  <form action="historywrite.action" method="post" enctype="multipart/form-data" id="form">
	 	 <input type="hidden" id="userNo" name="userNo" value='${loginuser.userNo }'/>
			<table style="width:100%; margin:0 auto; text-align:center; border: groove">
			<caption style="color:#7d97d3;text-align: left;">프로젝트 이력등록</caption>
			<tr>
				<td style="width: 15%; background-color:#7d97d3">프로젝트명</td>
				<td style="width: 85%; text-align:center;" colspan="3">
					<input type="text" style="width:98%" name="historyTitle">
				</td>
			</tr>
			<tr>
				<td style="background-color:#7d97d3; width: 15%">작업구분</td>
				<td>
				개발<input type="radio" name="historyWork" value="developer"> 				
				디자인<input	type="radio" name="historyWork" value="designer"> 
				기타<input type="radio"	name="historyWork" value="etc"></td>
				<td style="background-color:#7d97d3">공개여부</td>
				<td>공개<input type="radio" name="historyOpened" value="true"> 
				        비공개<input type="radio" name="historyOpened" value="false"></td>				
			</tr>
			<tr>
				<td style="background-color:#7d97d3">담당업무</td>
				<td><input type="text" style="width:98%" name="historyService"></td>
				<td style="background-color:#7d97d3">참여인원</td>
				<td><input type="text" id="historystaff" style="width:95%" name="historyStaff"/></td>				
			</tr>
			<tr>
				<td style="background-color:#7d97d3">프로젝트<br/>상세설명</td>
				<td colspan="3"><textarea name="historyContent" rows="20" style="max-height: 600px;width:98%; resize:none"></textarea></td>
			</tr>		
			<tr>
				<td style="background-color:#7d97d3">기간</td>
				<td><input type="date" name="historyStartDay"> ~ <input type="date" name="historyEndDay"></td>
			</tr>			
			<tr>
				<td style="background-color:#7d97d3">첨부파일</td>
				<td><input type="file" name="attach"></td>
			</tr>
					
		<tr>		<td></td>
				
		</tr>
		</table>
		<div style="float: right;">
				<input class="button" type="button" id="register2" value="등록">
				<input class="button" type="button" id="close" value="취소">	
		</div>		
		</form>
	</div>
</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>

</body>
</html>