
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
     <table width="724" border="0" cellspacing="0" cellpadding="0" style="margin-top: 15px">
		<tbody><tr><td colspan="11">
			<table width="724" border="1" cellspacing="0" cellpadding="0">
				<tbody>
				 <tr><td width="40" align="center" style="padding-top:5px">순번</td>
					<td width="1"></td>
					<td width="40" align="center" style="padding-top:5px">공개</td>
					<td width="1"></td>
					<td width="291" align="center" style="padding-top:5px">프로젝트명</td>
					<td width="1"></td>
					<td width="118" align="center" style="padding-top:5px">수행기간</td>
					<td width="1"></td>
					<td width="110" align="center" style="padding-top:5px">역할</td>
					</tr>
				 </tbody>
				</table>
				</td>	
				</tr>
			<tr><td colspan="11">
			</td></tr>
			<tr><td bgcolor="orange" height="25" align="center" colspan="11">등록된 프로젝트 수행정보가 없습니다.</td></tr>
			</tbody></table>
			<input type="button" value="등록하기">
	</div>
</div>
</body>
</html>