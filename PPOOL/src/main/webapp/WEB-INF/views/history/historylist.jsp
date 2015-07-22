
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="/ppool/resources/css/board.css">
   <title>Insert title here</title>

</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<div>
	<div id="sidemenu">사이드 메뉴</div>
	<div id="history" >
	<table cellpadding="0" cellspacing="0" border="0" class="search-list brd_directory" id="trove_list">
		<thead>
			<tr><th class="left">프로젝트명</th><th>공개</th><th>순번</th><th>역할</th><th>수행기간</th><th class="right"></th></tr>
		</thead>
		<tbody>
				<tr class="">
			<td class="project left"><a href="#" title=" Unit Project">프로젝트명</a> - <span title=" Unit Project"> Unit Project</span></td>
			<td class="act_rank">Yes</td>
			<td class="issue">1</td>
			<td class="mem" >역할</td>
			<td class="start_date">수행기간</td>
		</tr>
		<tr class="">
			<td class="project left"><a href="#" title=" Unit Project">프로젝트명</a> - <span title=" Unit Project"> Unit Project</span></td>
			<td class="act_rank">Yes</td>
			<td class="issue">1</td>
			<td class="mem">역할</td>
			<td class="start_date">수행기간</td>
		</tr>

	
				</tbody>
	</table>
	<input type="button" value="등록하기" > 
	</div>
</div>
</body>
</html>