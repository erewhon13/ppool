
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					$(location).attr('href',"historylist.action");
			   })
		  $('#delete').click(function(event){
			  		  
			  	var yes = confirm("삭제하시겠습니까?");
			  	if (yes) {
			  		$(location).attr('href',"historydelete.action?historyNo=${history.historyNo}");
			  	}
			  	
			   })
	   })
   	</script>
</head>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<div>
	<div id="sidemenu">사이드 메뉴</div>
	<div id="history" style="width:72%; margin-right:5%;float: right"><br/>
	  <form action="historyupdate.action" method="post" enctype="multipart/form-data" id="form">
		<c:set var="history" value="${history}"/>
		<input type="hidden" name="historyNo" value="${history.historyNo}"/>
		<input type="hidden" id="userNo" name="userNo" value='${loginuser.userNo}' /> 
		
	<c:if test="${loginuser.userNo ne history.userNo }" >
		<table style="text-align: center; width: 100%; border:groove; ">
			<caption style="color:#FF9147;text-align: left;">프로젝트 이력등록</caption>
			<tr>
				<td style="width: 15%; background-color:#FF9147">프로젝트명</td>
				<td style="width: 85%; text-align:center;" colspan="3">
					<input type="text" style="width:98%" name="historyTitle" value="${history.historyTitle}"  ${ loginuser.userNo ne history.userNo ? "readonly" : ""}   >
				</td>
			</tr>
			<tr>
				<td style="background-color:#FF9147; width: 15%">작업구분</td>
				<td>
					개발<input type="radio" name="historyWork" value="developer" ${ history.historyWork eq "developer" ? "checked" : ""  } ${ loginuser.userNo ne history.userNo ? "disabled" : ""}> 				
					디자인<input	type="radio" name="historyWork" value="designer" ${history.historyWork eq 'designer' ? "checked" : "" }${ loginuser.userNo ne history.userNo ? "disabled" : ""}> 
					기타<input type="radio"	name="historyWork" value="etc" ${history.historyWork eq 'etc' ? "checked" : ""} ${ loginuser.userNo ne history.userNo ? "disabled" : ""}>
				</td>
				<td style="background-color:#FF9147">공개여부</td>
				<td>공개<input type="radio" name="historyOpened" value="true" ${history.historyOpened eq "true" ?  "checked" :""} ${ loginuser.userNo ne history.userNo ? "disabled" : ""}> 
				        비공개<input type="radio" name="historyOpened" value="false" ${history.historyOpened eq "false" ? "checked" :""} ${ loginuser.userNo ne history.userNo ? "disabled" : ""}></td>				
			</tr>
			<tr>
				<td style="background-color:#FF9147">담당업무</td>
				<td><input type="text" style="width:98%" name="historyService" value="${history.historyService}" ${ loginuser.userNo ne history.userNo ? "readonly" : ""}></td>
				<td style="background-color:#FF9147">참여인원</td>
				<td><input type="text" id="historystaff" style="width:95%" name="historyStaff" value="${history.historyStaff}" ${ loginuser.userNo ne history.userNo ? "readonly" : ""}/></td>				
			</tr>
			<tr>
				<td style="background-color:#FF9147">프로젝트<br/>상세설명</td>
				<td colspan="3"><textarea name="historyContent" rows="20" style="max-height: 600px;width:98%; resize:none" ${ loginuser.userNo ne history.userNo ? "readonly" : ""}>${history.historyContent} </textarea></td>
			</tr>		
			<tr>
				<td style="background-color:#FF9147">기간</td>
				<fmt:formatDate value="${history.historyStartDay}" pattern="yyyy-MM-dd" var="startdate"/>
				<fmt:formatDate value="${history.historyEndDay}" pattern="yyyy-MM-dd" var="enddate"/>
				<td><input type="date" name="historyStartDay" value="${startdate}" ${ loginuser.userNo ne history.userNo ? "disabled" : ""}> ~ <input type="date" name="historyEndDay" value="${enddate}" ${ loginuser.userNo ne history.userNo ? "disabled" : ""}></td>
			</tr>			
			<tr>
				<td style="background-color:#FF9147">첨부파일</td>
				<td>
					<c:choose>
					<c:when test="${history.file.uploadUserFileName ne null}">
					<a href='download.action?uploadFileNo=${history.file.uploadFileNo}'>
                		${history.file.uploadUserFileName }
			        </a>
			        </c:when>
			        <c:otherwise>
					
                		첨부파일이 없습니다
			        
			        </c:otherwise>
			        </c:choose>
			        
			    </td>
			</tr>
					
		<tr>		<td></td>
				
		</tr>
		</table>
	</c:if>	
<c:if test="${loginuser.userNo != null}">		
	<c:if test="${loginuser.userNo eq history.userNo}">
		<div style="float: right;">
			<input type="hidden" id="userNo" name="userNo" value='${loginuser.userNo}' /> 
				<img src="/ppool/resources/images/modify.png" id="register2" style="cursor: pointer;">&nbsp;
				<img src="/ppool/resources/images/delete.png" id="delete" style="cursor: pointer;">&nbsp;			
				<img src="/ppool/resources/images/list.png" id="close" style="cursor: pointer;" >
		</div>
	</c:if>
</c:if>	
		</form>
	</div>
</div>
</body>
</html>