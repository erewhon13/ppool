<%@page import="com.ppool.dto.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/project.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script src='/ppool/resources/js/projectregister.js'></script>
	
	<script type="text/javascript">
	$(document).ready(function (){
		if('${loginuser.userNo}' != '${project.userNo}'){
			$(location).attr("href", "/ppool/projectdetailview.action?projectNo=${project.projectNo}");
			return;
		}
		if('${skills}'.length >0 ){
			var skills = '${skills}'.split(",");
			$.each(skills, function(index, obj){
				$('.skill input[value='+obj+']').attr('checked', true);
			})
		}
		
		if('${locations}'.length >0){
			var locations = '${locations}'.split(",");
			$.each(locations, function(index, obj){
				$('.location input[value='+obj+']').attr('checked', true);
			})
		}
		
		var phone1 = '${project.phone1}'
		$('#phone1 option[value='+phone1+']').attr('selected', true);
		
		$('#cancel').click(function(){
			$(location).attr("href", "/ppool/projectdetailview.action?projectNo=${project.projectNo}");
		});
		$('#modify').click(function(){
			var result = confirm('수정 하시겠습니까?');
			if(result){
				checkFormAndSubmit();	
			}
		});
	})
	</script>
	
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
	<form id="submitForm" action="projectmodify.action" method="POST"> 
	
	<input type="hidden" name="projectNo" value="${project.projectNo }">
	<input type="hidden" name='userNo' value="${project.userNo}">
	
	<div class="basic" ><br/>
		<table class="tech">
			<caption >상세뷰
				<img src="/ppool/resources/images/report.png" id="report" align="right">
			</caption>
			<tr>
				<th >프로젝트명</th>
				<td class="w85" colspan="3">
					<input type="text" name="projectTitle" id="projecttitle" value="${ project.projectTitle}"/>
				</td>
			</tr>
			<tr>
				<th >담당자</th>
				<td class="w35">
					<input type="hidden" name='userNo' value="${loginuser.userNo }">
					<div >${loginuser.userName }</div>
				</td>
				<th >연락처</th>
				<td class="w15" align="left">
					<select name="phone1" id="phone1">
						<option value="">----</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="0502">0502</option>
						<option value="0504">0504</option>
						<option value="0505">0505</option>
						<option value="0506">0506</option>
						<option value="0130">0130</option>
					</select> - 
					<input type="text" name="phone2" id="phone2" value="${project.phone2 }"> - 
					<input type="text" name="phone3" id="phone3" value="${project.phone3 }">
				</td>
			</tr>
			<tr>
				<th >이메일</th>
				<td class="w15" colspan="3">
					<input id="email1" type="text" name="email1" value="${project.email1 }" > @ 
					<input id="email2" type="text" name="email2" value="${project.email2 }" > 
					<select id="emailSelect" >
						<option value="">선택해주세요</option>
						<option value="etc">직접입력</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="empal.com">empal.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="chol.com">chol.com</option>
						<option value="korea.com">korea.com</option>
						<option value="paran.com">paran.com</option>
						<option value="hanafos.com">hanafos.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="hanmail.net">hanmail.net</option>
					</select>
				</td>
			</tr>
		</table>
		<br/>
		<table  class="tech">
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
			<tr>
				<th >프로젝트 설명</th>
				<td class="w85" colspan="3">
					<textarea name="projectContent" id="projectcontent" rows="20" >${project.projectContent}</textarea>
				</td>
			</tr>
			<tr>
				<th >모집인원</th>
				<td class="w35">
					<input type="text" name="projectTeamCount" id="projectteamcount" value="${ project.projectTeamCount}"/>
				</td>
				<th >모집 마감일</th>
				<td class="w35">
					<f:formatDate value="${ project.projectExpire}" pattern="yyyy-MM-dd" var="expire"/>
					<input type="date" name="projectExpire" id="projectexpire" value="${expire}">
				</td>
			</tr>
			<tr>
				<th >프로젝트 기간</th>
				<td class="w85" colspan="3">
					<f:formatDate value="${ project.projectStartDay}" pattern="yyyy-MM-dd" var="start"/>
					<f:formatDate value="${ project.projectEndDay}" pattern="yyyy-MM-dd" var="end"/>
					<input type="date" name="projectStartDay" id="projectstartday" value="${start }"> ~  
					<input type="date" name="projectEndDay" id="projectendday" value="${ end}">
				</td>
			</tr>
		</table>
		<div class="selector" >
			<input type="button" class="btn" id="cancel" value="취 소"/>
			<input type="button" class="btn" id="modify" value="수 정"/>
		</div>
	</div>
	</form>
<c:import url="/WEB-INF/views/include/footer.jsp"/>	
</body>
</html>