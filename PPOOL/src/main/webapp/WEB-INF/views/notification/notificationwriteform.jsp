<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>Main Page</title>
</head>

<body>
	<%
		pageContext.include("/WEB-INF/views/include/header.jsp");
	%>
	<div>
		<div id="sidemenu">사이드 메뉴</div>
		<div align="center" style="margin-top: 3%">
			<div id="pageContainer">	
				<form id="writeform" action="write.action" method="post">
				<table>
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="title" style="width:280px" />
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
						</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>
							<input type="date" name="date" style="width:280px" />
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>		                    
							<textarea 
								name="content" cols="76" rows="15"></textarea>
						</td>
					</tr>
				</table>
				<div class="buttons">	        	
					<!--  <a href="#" onclick="">글쓰기</a> -->
					<a href="javascript:doSubmit();">글쓰기</a>
					&nbsp;&nbsp;
					<a href="notificationlist.action">목록보기</a>
				</div>
				</form>
			</div>
		</div>   	
	
	</div>
			

</body>
</html>