
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="/ppool/resources/css/board.css">
   <title>Insert title here</title>
	<script src="//code.jquery.com/jquery-1.11.3.js"></script> <!-- jquery 사용하기 위해서 CDN삽입 -->
	<script type="text/javascript">
		/* $(function(){
			$("#register").click(function(event){
				location.href="historyRegister.action";})
		}) */
	</script>
</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<div>
	<div id="sidemenu">사이드 메뉴</div>
		<!-- <table cellpadding="0" cellspacing="0" border="0" class="search-list brd_directory" id="trove_list">
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
	</table> -->
	<c:set var="histories" value="${histories}"/>
		<div id="history">	
			<table style="text-align:center; width:70%; margin-top:10px; ">
				<tbody>
					<tr>
						<td style="width:80%"  align="left"  >
							<img src="/ppool/resources/images/arrow.gif" height=13px>
												이력사항
								</td>
									<td style="width:20%" align="right">
													<button style="float:right;">등록하기</button>
												</td>
											</tr>
									</tbody>
							</table>
							<table style="text-align:center; width:70%;">
								<tbody>
						
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">순번</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">프로젝트명</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">역할</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">수행기간</td>
										</tr>
										
										<c:forEach var="history" items="${histories}">
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">${history.historyNo}</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">${history.historyTitle}</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">
												<c:choose>
													<c:when test="${history.historyWork eq 'developer'}">개발자</c:when>
													<c:when test="${history.historyWork eq 'designer'}">디자이너</c:when>
													<c:otherwise>기타</c:otherwise>
												</c:choose>
											
											</td>
											
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">
												<c:choose>
													<c:when test="${history.historyOpened eq true}">yes</c:when>
													<c:otherwise>no</c:otherwise>
												</c:choose>
											</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">${history.startDay}~<br/>${history.endDay}</td>
										</tr>
										</c:forEach>
								</tbody>
							</table>		
					</div>
	
	
	<a href="historyRegister.action">[등록하기] </a>
	
	</div>
</body>
</html>