<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<style type="text/css">
	td{
	font-size:10pt;
	margin:5px;
	padding:10px;
	}
	caption {font-weight:700; font-size:20px; padding:5px; color:#1BA6B2; text-align:left; margin-bottom:5px}
	input.sub {
	font-size: 15pt;
	}
	.ul_checkbox{
		list-style:none;
		text-align: left;
	}
	.ul_checkbox li{
		margin:2 5 2 5;
		display:inline-block; 
	}
	</style>
	
	<script type="text/javascript">
	$(document).ready(function (){
		$('#emailSelect').change(function(){
			if($('#emailSelect').val() == "etc"){
				$('#email2').val("");
				$('#email2').attr("readonly", false);
				$('#email2').focus();
			}else if($('#emailSelect').val() != "etc"){
				$('#email2').val($('#emailSelect').val());
				$('#email2').attr("readonly", true);
				$('#email1').focus();
			}
			
		});
	});
	/* function WriteIt() {
		with(document.ProjectWriteFm) {
			if(!IsEmpty(fm_comname.value)) {
				alert("회사명을 입력하세요.");
				fm_comname.focus();
				return;
			}
			if(!IsEmpty(fm_korname.value)) {
				alert("담당자명을 입력하세요.");
				fm_korname.focus();
				return;
			}
			if(!IsEmpty(fm_tel2.value)) {
				alert("연락처를 입력하세요.");
				fm_tel2.focus();
				return;
			}
			if(!IsEmpty(fm_tel3.value)) {
				alert("연락처를 입력하세요.");
				fm_tel3.focus();
				return;
			}
			if(!IsEmpty(fm_name.value)) {
				alert("프로젝트명을 입력하세요.");
				fm_name.focus();
				return;
			}
			if(!IsEmpty(fm_essentialSkill.value)) {
				alert("필수 스킬을 입력하세요.");
				fm_essentialSkill.focus();
				return;
			}
			if(!IsEmpty(fm_assistSkill.value)) {
				alert("보조 스킬을 입력하세요.");
				fm_assistSkill.focus();
				return;
			}
			if(!IsEmpty(fm_preferential.value)) {
				alert("우대 사항을 입력하세요.");
				fm_preferential.focus();
				return;
			}
			if ((!IsEmpty(fm_fromAge.value)) && (!IsEmpty(fm_toAge.value))) {
				alert("연령을 선택하세요.");
				fm_fromAge.focus();
				return;
			}
			if(!IsEmpty(fm_school.value)) {
				alert("학력을 입력하세요.");
				fm_school.focus();
				return;
			}
			if(!IsEmpty(fm_content.value)) {
				alert("프로젝트 상세 내용을 입력하세요.");
				fm_content.focus();
				return;
			}
			if(!IsEmpty(fm_bidsdate.value)) {
				alert("프로젝트 모집 기간을 입력하세요.");
				fm_bidsdate.focus();
				return;
			}
			if(!IsEmpty(fm_bidedate.value)) {
				alert("프로젝트 모집 기간을 입력하세요.");
				fm_bidedate.focus();
				return;
			}
			if(!IsEmpty(fm_worksdate.value)) {
				alert("프로젝트 근무 기간을 입력하세요.");
				fm_worksdate.focus();
				return;
			}
			if(!IsEmpty(fm_workedate.value)) {
				alert("프로젝트 근무 기간을 입력하세요.");
				fm_workedate.focus();
				return;
			}
			action = "project_write.php";
			target = "ProjectWriteFm";
			submit();
		}
		}  */
	/* window.onload = function(){
		var area = document.getElementById("textarea");
		area.style.maxWidth = area.offsetParent.offsetWidth + "px";
		area.style.minWidth = area.offsetParent.offsetWidth + "px";
		
	} */
	</script>
</head>
<body>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<div>
<%
	pageContext.include("/WEB-INF/views/include/sidemenu.jsp");
%>
	<form action="registerproject.action" method="POST"> 
		<div style="width:800px; margin-right:5%;float: right" ><br/>
		<table style="text-align: center; width: 98%; border:groove;  ">
			<caption >테스트</caption><br/>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">프로젝트명</td>
				<td style="width: 85%" colspan="3">
					<input type="text" style="width: 100%" name="projectTitle" />
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">담당자</td>
				<td style="width: 35%">
					<!-- 세션에서 읽어올것 로그인 안되면 로그인창으로 이동 --> 
					<input type="text" style="width: 100%"  />
					<input type="hidden" >
				</td>
				<td style="width: 15%" bgcolor="#ddbbff">연락처</td>
				<td style="width: 35%; font-size: 10pt;" align="left">
					<select name="phone1">
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
					<input type="text" name="phone2" value=""style="width: 70px; text-align: center;"> - 
					<input type="text" name="phone3" value=""style="width: 70px; text-align: center;">
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">이메일</td>
				<td style="width: 15%" colspan="3" align="left">
					<input id="email1" type="text" name="email1" value="" style="width: 150px;"> @ 
					<input id="email2" type="text" name="email2" value=""  readonly=""
							style="width: 155px;  border: solid #CECFD0 1px; font-size: 10pt;"> 
					<select id="emailSelect" style="width: 150px; 
							font-size: 12px;">
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
		<table style="text-align: center; width: 98%; border:groove;  ">
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">개발</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox"  >				
						<li><input type="checkbox" name="100" value=".NET" > .NET</li>
						<li><input type="checkbox" name="101" value="ANDROID" > ANDROID</li>
						<li><input type="checkbox" name="102" value="ASP" > ASP</li>
						<li><input type="checkbox" name="103" value="C" > C</li>
						<br>	
						<li><input type="checkbox" name="104" value="C#" > C#</li>
						<li><input type="checkbox" name="105" value="C++" > C++</li>
						<li><input type="checkbox" name="106" value="CSS" > CSS</li>
						<li><input type="checkbox" name="107" value="DB" > DB</li>
						<br>
						<li><input type="checkbox" name="108" value="DELPHI" > DELPHI</li>
						<li><input type="checkbox" name="109" value="HTML" > HTML</li>
						<li><input type="checkbox" name="110" value="IOS" > IOS</li>
						<li><input type="checkbox" name="111" value="JAVA" > JAVA</li>
						<br>
						<li><input type="checkbox" name="112" value="JSP" > JSP</li>
						<li><input type="checkbox" name="113" value="LINUX" > LINUX</li>
						<li><input type="checkbox" name="114" value="PHP" > PHP</li>
						<li><input type="checkbox" name="115" value="PYTHON" > PYTHON</li>
						<li><input type="checkbox" name="116" value="RUBY" > RUBY</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">디자인</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox">	
						<li><input type="checkbox" name="200" value="HTML5" > HTML5</li>
						<li><input type="checkbox" name="201" value="그래픽디자인" > 그래픽디자인</li>
						<li><input type="checkbox" name="202" value="모바일" > 모바일 </li>
						<li><input type="checkbox" name="203" value="웹디자인" > 웹디자인 </li>
						<br/>
						<li><input type="checkbox" name="204" value="파워포인트" > 파워포인트 </li>
						<li><input type="checkbox" name="205" value="포토샵편집" > 포토샵편집 </li>
						<li><input type="checkbox" name="206" value="플래시" > 플래시 </li>
						<li><input type="checkbox" name="207" value="3D" > 3D </li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">지역</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox">	
						<li><input type="checkbox" name="200" value="강북" > 강북</li>
						<li><input type="checkbox" name="201" value="강동" > 강동</li>
						<li><input type="checkbox" name="202" value="강남" > 강남</li>
						<li><input type="checkbox" name="203" value="강서" > 강서 </li>
						<li><input type="checkbox" name="204" value="용인" > 용인 </li>
						<li><input type="checkbox" name="205" value="화성" > 화성 </li>
						<li><input type="checkbox" name="206" value="일산" > 일산 </li>
						<br>
						<li><input type="checkbox" name="207" value="수원" > 수원 </li>
						<li><input type="checkbox" name="207" value="충북" > 충북 </li>
						<li><input type="checkbox" name="207" value="충남" > 충남 </li>
						<li><input type="checkbox" name="207" value="대전" > 대전 </li>
						<li><input type="checkbox" name="207" value="강원" > 강원 </li>
						<li><input type="checkbox" name="207" value="경북" > 경북 </li>
						<li><input type="checkbox" name="207" value="경남" > 경남 </li>
						<br>
						<li><input type="checkbox" name="207" value="대구" > 대구 </li>
						<li><input type="checkbox" name="207" value="전북" > 전북 </li>
						<li><input type="checkbox" name="207" value="전남" > 전남 </li>
						<li><input type="checkbox" name="207" value="광주" > 광주 </li>
						<li><input type="checkbox" name="207" value="부산" > 부산 </li>
						<li><input type="checkbox" name="207" value="울산" > 울산 </li>
						<li><input type="checkbox" name="207" value="제주" > 제주 </li>
						<li><input type="checkbox" name="207" value="해외" > 해외 </li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">프로젝트 설명</td>
				<td style="width: 85%" colspan="3">
					<textarea name="projectContent" id="textarea" rows="20" style="max-height: 600px;width:100%;resize:none"></textarea>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#ddbbff">모집인원</td>
				<td style="width: 35%">
					<input type="text" style="width: 100%" name="projectTeamCount" />
				</td>
				<td style="width: 15%" bgcolor="#ddbbff">마감일</td>
				<td style="width: 35%" align="left">
					<input style="text-align: center" type="date" name="projectExpire">
				</td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">기간</td>
				<td align="left" style="width: 85%" colspan="3">
					<input style="text-align: center" type="date" name="projectStartDay"> ~ 
					<input style="text-align: center" type="date" name="projectEndDay">
				</td>
			</tr>
		</table>
		<br/>
		<div align="center" >
			<input class="sub" type="submit" value="등록"/>
			<input class="sub" type="button" value="다시작성"/>
			<input class="sub" type="button" value="취소"/>
		</div>
	</div>
	</form>
	
</body>
</html>