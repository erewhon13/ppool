<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div align='center'>
        <div>인증페이지 입니다.</div>
		<form action="approval.action" method="POST">
			<input type="hidden" name="userNo" value="${userNo}"> <input
				type="submit" value="승인">
		</form>
	</div>
</body>
</html>