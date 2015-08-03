<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<tr>
	<td class="yescomment">
		<div class="c_name" >${newComment.userName }</div>
		<div id="a${newComment.commentNo}" class="a" >
			${fn:replace(newComment.commentContent , enter, '<br/>')}
		</div>
		<textarea id="b${newComment.commentNo}" class="b" 
		name="commentContent">${newComment.commentContent }</textarea>
		<br/>
		<f:formatDate value="${ newComment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
		<div class="c_regi" >${registerday}</div>
		<div class="sele" id="aa${newComment.commentNo}">
		<c:if test="${loginuser.userNo eq newComment.userNo }">
			<input type="button" class="ed_bt" id="ed${newComment.commentNo}" value="편집"/>&nbsp;
			<input type="button" class="de_bt" value="삭제"/>&nbsp;
			<input type="button" class="re_bt" value="댓글"/>
		</c:if>
		<c:if test="${loginuser.userNo ne newComment.userNo }">
			<input type="button" class="re_bt" value="댓글"/>
		</c:if>
		</div>
		<div class="sele2" id="bb${newComment.commentNo}">
			<input type="button" class="ok_bt" id="ok${newComment.commentNo}" value="확인"/>
			<input type="button" class="ca_bt" value="취소"/>
		</div>
	</td>
</tr>






