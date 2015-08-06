
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#ff{
font-weight: 700;font-size: 20px;padding: 5px;color: #1BA6B2;text-align: left; margin-bottom: 5px;
}
	.cursor{
		cursor: pointer;
	}
	
	.history2 tr:HOVER {
	background:#49505a; 
}
.history2 tr:HOVER th{
	background:#49505a; 
}
.button{
   		background-color:#7d97d3;
   		border:solid 3px #7d97d3;
   		color:#fff;font-weight:bold; 
   		cursor: pointer;
   		font-size: 16pt;
    width: 65pt;
    margin-left: 2px;
    padding: 1px 6px;
   	}
   	
  .caption{
  font-weight: 700;
    font-size: 20px;
    padding: 5px;
    color: #1BA6B2;
    text-align: left;
    margin-bottom: 5px;
  
  }	
  table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
</style>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="/ppool/resources/css/board.css">
   <title>Insert title here</title>
	<script src="//code.jquery.com/jquery-1.11.3.js"></script> <!-- jquery 사용하기 위해서 CDN삽입 -->
	<script type="text/javascript">
		 $(function(){
			$(".detailview").click(function(event){
				location.href="historydetailview.action?historyNo="+$(this).find($('.hno')).val();})
				
			 $('#writer').click(function(event){
					$(location).attr('href',"historyRegister.action");
			   })	
		})
		
	</script>
	
	
</head>
<c:import url="/WEB-INF/views/include/header.jsp"/>
							<div>
	<c:set var="histories" value="${histories}"/>
	
		<div id="history" style="width: 79%; float: right;">	
				
		<%-- 	<table style="text-align:center; width:100%; margin-top:10px; ">
				<caption class="caption"> 프로젝트 이력관리 </caption>				
				<tbody>
				<tr>
					<td align="left"   >							
						<!-- <img src="/ppool/resources/images/historylogo.png" style="height:40px; margin-top: 8px;"  > -->
								
					</td>
					<td style="width:20%" align="right">
					</td>
				</tr>
		</tbody>
	</table> --%>
							<br/>
							<table class="history2" style="text-align:center; width:100%; ">
							<caption class="caption" id="ff"> 프로젝트 이력관리 </caption>
								<tbody>
									<input type="hidden" value="${user.userNo}"/>		
										<tr>
											<td style="width:15%; color: white;" align="center"  bgcolor="#7d97d3" height="40" width="20" >순번</td>
											<td style="width:30%; color: white;" align="center"  bgcolor="#7d97d3" height="40" width="20">프로젝트명</td>
											<td style="width:20%; color: white;" align="center"  bgcolor="#7d97d3" height="40" width="20">역할</td>
											<td style="width:15%; color: white;" align="center"  bgcolor="#7d97d3" height="40" width="20">공개</td>
											<td style="width:20%; color: white;" align="center"  bgcolor="#7d97d3" height="40" width="20">수행기간</td>
										</tr>
										
										<c:forEach var="history" items="${histories}">
										<tr class="detailview cursor" bgcolor="F8F7F7">
											<th style="width:15%;" align="center"  bgcolor="#e1e1e1" height="30" width="20">${history.historyNo}</th>
											<td style="width:30%;" align="center"   height="30" width="20">${history.historyTitle}</td>
											<td style="width:20%;" align="center"   height="30" width="20">
											
											<input type="hidden" class="hno" value="${history.historyNo}"/>									
												<c:choose>
													<c:when test="${history.historyWork eq 'developer'}">개발자</c:when>
													<c:when test="${history.historyWork eq 'designer'}">디자이너</c:when>
													<c:otherwise>기타</c:otherwise>
												</c:choose>
											
											</td>
											
											<td style="width:15%;" align="center"  height="30" width="20">
												<c:choose>
													<c:when test="${history.historyOpened eq true}">yes</c:when>
													<c:otherwise>no</c:otherwise>
												</c:choose>
											</td>
											
											<fmt:formatDate value="${ history.historyStartDay}" pattern="yy년 MM월 dd일" var="start"/>
											<fmt:formatDate value="${ history.historyEndDay}" pattern="yy년 MM월 dd일" var="end"/>
											<td style="width:20%;" align="center" height="30" width="20">${start}~<br/>${end}</td>
										
										</tr>
										</c:forEach>
								</tbody>
							</table>
							<br/>		
							<div style="width:100%;" align="right" >		
								<input type="button" class="button" value="글쓰기" id="writer">
							</div>							
					</div>
				
					
	
	<!-- <a href="historyRegister.action">[등록하기] </a> -->
	
<%-- 		<jsp:include page="paging.jsp" flush="false">
			<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
			<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
			<jsp:param name="startPageNo" value="${paging.startPageNo}" />
			<jsp:param name="pageNo" value="${paging.pageNo}" />
			<jsp:param name="endPageNo" value="${paging.endPageNo}" />
			<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
			<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
		</jsp:include> --%>
	
	</div>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>
