
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
		<table >
			<tr style="width: 95%">
				<td style="width: 15%">프로젝트명</td>
				<td style="width: 85%" colspan="3">
				<input type="text"
					></td>
			</tr>
			<tr>
				<td>작업구분</td>
				<td>개발<input type="radio" name="historywork"> 디자인<input
					type="radio" name="historywork"> 기타<input type="radio"
					name="historywork"></td>
			</tr>
			<tr>
				<td>담당업무</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>프로젝트 상세설명</td>
				<td><input type="text" ></td>
			</tr>
			<tr>
				<td>참여인원</td>
				<td><input type="number" /></td>
			</tr>
			<tr>
				<td>기간</td>
				<td><input type="date"> ~ <input type="date"></td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><input type="date"></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file"></td>
			</tr>
			<tr>
				<td>공개여부</td>
				<td>공개<input type="radio" name="historyopened"> 비공개<input
					type="radio" name="historyopened"></td>
			</tr>
		
		<tr>
			<td align="center">
				<input type="submit" value="등록하기">
				<input type="submit" value="창닫기">
			</td>
		</tr>
		</table>
	</div>
</div>
</body>
</html>