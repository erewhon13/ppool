<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>    
<tr>
	<td style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
		<div style="color:#3333dd;font-weight: bold;">${newComment.userName }</div><br/><br/>
		<div >${newComment.commentContent }</div><br/><br/>
		<f:formatDate value="${ newComment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
		<div style="color: gray;">${registerday}</div>
		<div >
			<div style="text-align: right;">
				<a href="#" style="color:teal;">댓글</a>
			</div>
			<div style="text-align: right;">
				<a href="#" style="color: orange;">편집</a>
					&nbsp;
				<a href="#" style="color:maroon ;">삭제</a>
			</div>
		</div>
	</td>
</tr>