<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<success/>
<link rel="stylesheet" href="resources/css/project.css" />
<% pageContext.setAttribute("enter", "\r\n"); %>
 
<tr id="tr${newComment.commentNo}">
    <td class="yescomment" style="padding-left:${newComment.commentDepth > 1? '10%' : '5px'};padding-right:5px">
		<div class="c_name" >${newComment.userName }</div>
		<br/>
		<div id="a${newComment.commentNo}" class="a" style="${loginuser.userNo eq project.userNo ? 'background-color:#ffeeee' : '' }">${fn:replace(newComment.commentContent , enter, '<br>')}</div>
		<form id="fo${newComment.commentNo}">
			<textarea id="b${newComment.commentNo}" class="b" 
					name="commentContent">${newComment.commentContent }</textarea>
			<input type="hidden" name="commentNo" value="${newComment.commentNo}"/>		
		</form>
		
		<br/>
		<f:formatDate value="${newComment.commentRegisterDay}" pattern="yyyy년 MM월 dd일 hh:mm" var="registerday"/>
		<div class="c_regi" >${registerday}</div>
     	<div class="sele" id="aa${newComment.commentNo}" >
	     	<c:if test="${loginuser.userNo eq newComment.userNo }">
	    		<input type="button" class="ed_bt" id="ed${newComment.commentNo}" value="편집"/>&nbsp;
	    		<input type="button" class="de_bt" id="de${newComment.commentNo}" value="삭제"/>&nbsp;
	     	</c:if>
	        <input type="button" class="re_bt" id="re${newComment.commentNo}" value="댓글"/>
        </div>
        <div class="sele2" id="bb${newComment.commentNo}" >
         	<input type="button" class="ok_bt" id="ok${newComment.commentNo}" value="확인"/>
         	<input type="button" class="ca_bt" id="ca${newComment.commentNo}" value="취소"/>
        </div>
            		
        <form id="commentform${newComment.commentNo}">
        	<input type="hidden" id="projectno" name="projectNo" value='${project.projectNo }' />
         	<input type="hidden" name="userNo" value='${loginuser.userNo}' />
         	<input type="hidden" name="commentNo" value='${newComment.commentNo}' />
         	<input type="hidden" name="commentStep" value='${newComment.commentStep}' />
         	<input type="hidden" name="commentDepth" value='${newComment.commentDepth}' />
         	<table id="reta${newComment.commentNo}" class="reta" style="width: 100%;border-top:solid 2px;margin-top:5px ;display: none">
             	<tr class="recom${newComment.commentNo}" style="width: 100%">
             		<td style="width: 10%">
             			<div style="text-align: center">+</div>
             		</td>
              		<td style="width: 80%">
						<textarea id="commentcontent${newComment.commentNo}" name="commentContent" rows="5" style="background-color:#eeffec;max-height: 600px;width:100%;resize:none;font-size: 15pt;"></textarea>
					</td>
					<td style="width: 10%">
						<input type="button" class="rr_bt" id="rr${newComment.commentNo}" value="등 록" style="background-color:#7d97d3;border:solid 3px #7d97d3;color:#fff;font-weight:bold;"/>
					</td>
             	</tr>
             </table>
        </form>
    </td>
</tr>
