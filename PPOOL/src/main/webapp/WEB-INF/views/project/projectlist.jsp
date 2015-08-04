<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function (){
		$('.odd, .even').click(function(){
			$(location).attr("href", "/ppool/projectdetailview.action?projectNo="+ $(this).attr('id') );
		});
		
		$('#search').click(function(){
			$('#searchfield').submit();
		});
		$('#writer').click(function(){
			if('${loginuser.userNo }' == ""){
				alert('로그인 해주세요')
				return;
			}
			$(location).attr("href", "/ppool/projectregister.action");
		});
	});
		
	</script>
	
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<c:set var="projects" value="${projects }"/>

<div  class="basic" ><br/>
	<form id="searchfield" action="searchproject.action" method="POST">
	<table class="tech">
	<caption>테스트</caption>
		<tr>
			<th >개발</th>
				<td class="w85" colspan="3">
				<table class="checkbox skill">
					<tr>
						<td><input type="checkbox" name="skill" value="100" > .NET</td>
						<td><input type="checkbox" name="skill" value="101" > ANDROID</td>
						<td><input type="checkbox" name="skill" value="102" > ASP</td>
						<td><input type="checkbox" name="skill" value="103" > C</td>
					</tr>	
					<tr>
						<td><input type="checkbox" name="skill" value="104" > C#</td>
						<td><input type="checkbox" name="skill" value="105" > C++</td>
						<td><input type="checkbox" name="skill" value="106" > CSS</td>
						<td><input type="checkbox" name="skill" value="107" > DB</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="108" > DELPHI</td>
						<td><input type="checkbox" name="skill" value="109" > HTML</td>
						<td><input type="checkbox" name="skill" value="110" > IOS</td>
						<td><input type="checkbox" name="skill" value="111" > JAVA</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="112" > JSP</td>
						<td><input type="checkbox" name="skill" value="113" > LINUX</td>
						<td><input type="checkbox" name="skill" value="114" > PHP</td>
						<td><input type="checkbox" name="skill" value="115" > PYTHON</td>
					</tr>
					<tr >	
						<td><input type="checkbox" name="skill" value="116" > RUBY</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<th >디자인</th>
			<td class="w85" colspan="3">
				<table class="checkbox skill">	
					<tr>
						<td><input type="checkbox" name="skill" value="200" > HTML5</td>
						<td><input type="checkbox" name="skill" value="201" > 그래픽디자인</td>
						<td><input type="checkbox" name="skill" value="202" > 모바일 </td>
						<td><input type="checkbox" name="skill" value="203" > 웹디자인 </td>
					</tr>
					<tr>
						<td><input type="checkbox" name="skill" value="204" > 파워포인트 </td>
						<td><input type="checkbox" name="skill" value="205" > 포토샵편집 </td>
						<td><input type="checkbox" name="skill" value="206" > 플래시 </td>
						<td><input type="checkbox" name="skill" value="207" > 3D </td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<th >지역</th>
			<td class="w85" colspan="3">
				<table class="check location">	
					<tr>
						<td><input type="checkbox" name="location" value="11" > 강북</td>
						<td><input type="checkbox" name="location" value="12" > 강동</td>
						<td><input type="checkbox" name="location" value="13" > 강남</td>
						<td><input type="checkbox" name="location" value="14" > 강서 </td>
						<td><input type="checkbox" name="location" value="15" > 용인 </td>
						<td><input type="checkbox" name="location" value="16" > 화성 </td>
					</tr>
					<tr>
						<td><input type="checkbox" name="location" value="17" > 일산 </td>
						<td><input type="checkbox" name="location" value="18" > 성남 </td>
						<td><input type="checkbox" name="location" value="19" > 수원 </td>
						<td><input type="checkbox" name="location" value="20" > 충북 </td>
						<td><input type="checkbox" name="location" value="21" > 충남 </td>
						<td><input type="checkbox" name="location" value="22" > 대전 </td>
					</tr>
					<tr>
						<td><input type="checkbox" name="location" value="23" > 강원 </td>
						<td><input type="checkbox" name="location" value="24" > 경북 </td>
						<td><input type="checkbox" name="location" value="25" > 경남 </td>
						<td><input type="checkbox" name="location" value="26" > 대구 </td>
						<td><input type="checkbox" name="location" value="27" > 전북 </td>
						<td><input type="checkbox" name="location" value="28" > 전남 </td>
					</tr>
					<tr>
						<td><input type="checkbox" name="location" value="29" > 광주 </td>
						<td><input type="checkbox" name="location" value="30" > 부산 </td>
						<td><input type="checkbox" name="location" value="31" > 울산 </td>
						<td><input type="checkbox" name="location" value="32" > 제주 </td>
						<td><input type="checkbox" name="location" value="33" > 해외 </td>
					</tr>
					</table>
			</td>
		</tr>
	</table>
	</form>
	
	<hr/>
	<table class="list">
			<tr class="head">
				<th id="pno">글번호</th>
				<th >프로젝트기간</th>
				<th >프로젝트정보</th>
				<th >지역</th>
				<th >마감일</th>
				<th >상태</th>
			</tr>
			<c:set var="r" value="1"/>
			<c:forEach var="project" items="${projects }" >
				<c:choose>
					<c:when test="${r == 0 }"><c:set var="r" value="1"/><tr class="odd" id="${project.projectNo}"  ></c:when>
					<c:when test="${r == 1 }"><c:set var="r" value="0"/><tr class="even" id="${project.projectNo}" ></c:when>
				</c:choose>
					
					<th class="projectno" >${project.projectNo}</th>
					<td class="date">
						<f:formatDate value="${ project.projectStartDay}" pattern="yy년 MM월 dd일" var="start"/>
						<f:formatDate value="${ project.projectEndDay}" pattern="yy년 MM월 dd일" var="end"/>
						${start} ~ <br/> ${end}
					</td>
					<td class="content">[${project.projectTeamCount}명] ${project.projectTitle}<br/>${project.projectContent}</td>
					<td class="location">서울</td>
					
					<c:choose>
						<c:when  test="${project.projectStatus gt 0}">
							<td class="dday">D - ${project.projectStatus}</td>
						</c:when>
						<c:when test="${project.projectStatus eq 0}">
							<td class="dday dead">마감일</td>
						</c:when>
						<c:when test="${project.projectStatus lt 0}">
							<f:formatDate value="${ project.projectExpire}" pattern="yy년 MM월 dd일" var="expire"/>
							<td class="dday">${expire}</td>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${project.projectStatus >= 0}">
							<td class="status com" >모집중</td>
						</c:when>
						<c:when test="${project.projectStatus < 0}">
							<td class="status">완료</td>
						</c:when>
					</c:choose>
					
				</tr>
			</c:forEach>
	</table>
	<br/>
	<div class="selector">
		<img src="/ppool/resources/images/search.png" id="search">
		<img src="/ppool/resources/images/writer.png" id="writer">
	</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>