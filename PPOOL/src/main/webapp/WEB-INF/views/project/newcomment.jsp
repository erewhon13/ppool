<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>    
<tr>
	<td style='display:block;text-align:left;margin:5px;border-bottom: groove 1px;padding: 5pt;'>
		<div style="color:#3333dd;font-weight: bold;">${newComment.userName }</div><br/>
								
		<textarea id="a${newComment.commentNo}" class="a" name="updatecontent" rows="5"
					style="border:0;width:100%;background-color: lightyellow;resize:none ;display: block">${comment.commentContent }</textarea>
		<textarea id="b${newComment.commentNo}" class="b" name="updatecontent" rows="5"
					style="width:100%;background-color: lightyellow;resize:vertical;display: none">${comment.commentContent }</textarea>
		<br/>
		<f:formatDate value="${ newComment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
		<div style="color: gray;">${registerday}</div>
		<div >
			<div style="text-align: right;">
				<input type="button" style="color: orange;" value="편집"/>&nbsp;
				<input type="button" style="color: maroon;" value="삭제"/>&nbsp;
				<input type="button" style="color: cteal;" value="댓글"/>
           	</div>
		</div>
	</td>
</tr>