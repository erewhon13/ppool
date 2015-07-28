<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<!-- 페이징하는 자바 스크립트 -->
<script type="text/javascript">
function goPage(pageNo){
	location.href = '/syacademy/instructor/instructorlist.action?pageNo='+pageNo;
}
</script>
</head>
<body>

<div class="paginate">
	<a href="javascript:goPage(${param.firstPageNo})" class="first">◀◀</a>
    <a href="javascript:goPage(${param.prevPageNo})" class="prev">◀</a>
    <span>
        <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
            <c:choose>
                <c:when test="${i eq param.pageNo}"><a href="javascript:goPage(${i})" class="choice">${i}</a></c:when>
                <c:otherwise><a href="javascript:goPage(${i})">${i}</a></c:otherwise>
            </c:choose>
        </c:forEach>
    </span>
    <a href="javascript:goPage(${param.nextPageNo})" class="next">▶</a>
    <a href="javascript:goPage(${param.finalPageNo})" class="last">▶▶</a>
</div>
</body>
</html>