
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="/ppool/resources/css/board.css">
   <title>Insert title here</title>
	<script src="//code.jquery.com/jquery-1.11.3.js"></script> <!-- jquery 사용하기 위해서 CDN삽입 -->
	<script type="text/javascript">
		 $(function(){
			$(".detailview").click(function(event){
				var projectno=$(this).attr('tag').split('/')
				var yes = confirm(projectno[0]+" 번 게시글 신고를 취소하시겠습니까?");
			  	if (yes) {
			  		$(location).attr('href',"minuswarningcount.action?projectNo="+projectno[0]+"&reportNo="+projectno[1]);
			  	}	
			
			})
		})
	</script>
</head>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<div>
	<c:set var="reports" value="${reports}"/>
	
		<div style="width: 79%; float: right;">	
			<table style="text-align:center; width:100%; margin-top:10px; ">
				<tbody>
					<tr>
						<td style="width:80%"  align="left"  >
							<!-- <img src="/ppool/resources/images/arrow.gif" height=13px> -->
												경고목록
								</td>
									<td style="width:20%" align="right">
												</td>
											</tr>
									</tbody>
							</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:15%; color: white;" align="center"  bgcolor="#FF9147" height="40"  >경고번호</td>
											<td style="width:15%; color: white;" align="center"  bgcolor="#FF9147" height="40" >게시글 번호</td>
											<td style="width:35%; color: white;" align="center"  bgcolor="#FF9147" height="40" >신고사유</td>
											<td style="width:15%; color: white;" align="center"  bgcolor="#FF9147" height="40">신고자</td>
											<td style="width:20%; color: white;" align="center"  bgcolor="#FF9147" height="40" >신고일자</td>
										</tr>
										
										<c:forEach var="report" items="${reports}">
										<tr class="detailview" tag="${report.projectNo}/${report.reportNo}">
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" ">${report.reportNo}</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" >${report.projectNo}</td>
											<td style="width:35%;" align="center"  bgcolor="F8F7F7" height="30" >${report.reportContent}</td>
											
										
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30">
												${report.userNo}
											</td>
											
											<fmt:formatDate value="${report.reportDay}" pattern="yy년 MM월 dd일" var="reportday"/>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30">${reportday}</td>
										
										</tr>
										</c:forEach>
								</tbody>
							</table>
							<br/>		
					<!-- 		<div style="width:100%;" align="right" >		
								<img src="/ppool/resources/images/writer.png" id="writer" style="cursor: pointer;">
							</div>							 -->
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
</body>
</html>
