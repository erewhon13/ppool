<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script src='/ppool/resources/js/projectregister.js'></script>
	<style type="text/css">
		td{
			font-size:10pt;
			margin:5px;
			padding:10px;
		}
		caption {font-weight:700; font-size:20px; padding:5px; color:#FF9147; text-align:left; margin-bottom:5px}
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
	/* window.onload = function(){
		var area = document.getElementById("textarea");
		area.style.maxWidth = area.offsetParent.offsetWidth + "px";
		area.style.minWidth = area.offsetParent.offsetWidth + "px";
		
	} */
	</script>
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<c:import url="/WEB-INF/views/include/sidemenu.jsp"/>

	<form id="submitForm" action="projectregister.action" method="POST"> 
		<div style="width:72%; margin-right:5%;float: right" ><br/>
		<table style="text-align: center; width: 100%; border:groove;  ">
			<caption >테스트</caption>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">프로젝트명</td>
				<td style="width: 85%" colspan="3">
					<input type="text" style="width: 100%" name="projectTitle" id="projecttitle" />
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">담당자</td>
				<td style="width: 35%">
					<!-- 세션에서 읽어올것 로그인 안되면 로그인창으로 이동 --> 
					<input type="text" style="width: 100%" name="projectWriter" id="projectwriter" />
				</td>
				<td style="width: 15%" bgcolor="#FF9147">연락처</td>
				<td style="width: 35%; font-size: 10pt;" align="left">
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
					<input type="text" name="phone2" id="phone2" value=""style="width: 70px; text-align: center;"> - 
					<input type="text" name="phone3" id="phone3" value=""style="width: 70px; text-align: center;">
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">이메일</td>
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
		<table style="text-align: center; width: 100%; border:groove;  ">
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">개발</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox"  >				
						<li><input type="checkbox" name="develop" value=".NET" > .NET</li>
						<li><input type="checkbox" name="develop" value="ANDROID" > ANDROID</li>
						<li><input type="checkbox" name="develop" value="ASP" > ASP</li>
						<li><input type="checkbox" name="develop" value="C" > C</li>
						<br>	
						<li><input type="checkbox" name="develop" value="C#" > C#</li>
						<li><input type="checkbox" name="develop" value="C++" > C++</li>
						<li><input type="checkbox" name="develop" value="CSS" > CSS</li>
						<li><input type="checkbox" name="develop" value="DB" > DB</li>
						<br>
						<li><input type="checkbox" name="develop" value="DELPHI" > DELPHI</li>
						<li><input type="checkbox" name="develop" value="HTML" > HTML</li>
						<li><input type="checkbox" name="develop" value="IOS" > IOS</li>
						<li><input type="checkbox" name="develop" value="JAVA" > JAVA</li>
						<br>
						<li><input type="checkbox" name="develop" value="JSP" > JSP</li>
						<li><input type="checkbox" name="develop" value="LINUX" > LINUX</li>
						<li><input type="checkbox" name="develop" value="PHP" > PHP</li>
						<li><input type="checkbox" name="develop" value="PYTHON" > PYTHON</li>
						<li><input type="checkbox" name="develop" value="RUBY" > RUBY</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">디자인</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox">	
						<li><input type="checkbox" name="design" value="HTML5" > HTML5</li>
						<li><input type="checkbox" name="design" value="그래픽디자인" > 그래픽디자인</li>
						<li><input type="checkbox" name="design" value="모바일" > 모바일 </li>
						<li><input type="checkbox" name="design" value="웹디자인" > 웹디자인 </li>
						<br/>
						<li><input type="checkbox" name="design" value="파워포인트" > 파워포인트 </li>
						<li><input type="checkbox" name="design" value="포토샵편집" > 포토샵편집 </li>
						<li><input type="checkbox" name="design" value="플래시" > 플래시 </li>
						<li><input type="checkbox" name="design" value="3D" > 3D </li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">지역</td>
				<td style="width: 85%" colspan="3">
					<ul class="ul_checkbox">	
						<li><input type="checkbox" name="location" value="강북" > 강북</li>
						<li><input type="checkbox" name="location" value="강동" > 강동</li>
						<li><input type="checkbox" name="location" value="강남" > 강남</li>
						<li><input type="checkbox" name="location" value="강서" > 강서 </li>
						<li><input type="checkbox" name="location" value="용인" > 용인 </li>
						<li><input type="checkbox" name="location" value="화성" > 화성 </li>
						<li><input type="checkbox" name="location" value="일산" > 일산 </li>
						<br>
						<li><input type="checkbox" name="location" value="수원" > 수원 </li>
						<li><input type="checkbox" name="location" value="충북" > 충북 </li>
						<li><input type="checkbox" name="location" value="충남" > 충남 </li>
						<li><input type="checkbox" name="location" value="대전" > 대전 </li>
						<li><input type="checkbox" name="location" value="강원" > 강원 </li>
						<li><input type="checkbox" name="location" value="경북" > 경북 </li>
						<li><input type="checkbox" name="location" value="경남" > 경남 </li>
						<br>
						<li><input type="checkbox" name="location" value="대구" > 대구 </li>
						<li><input type="checkbox" name="location" value="전북" > 전북 </li>
						<li><input type="checkbox" name="location" value="전남" > 전남 </li>
						<li><input type="checkbox" name="location" value="광주" > 광주 </li>
						<li><input type="checkbox" name="location" value="부산" > 부산 </li>
						<li><input type="checkbox" name="location" value="울산" > 울산 </li>
						<li><input type="checkbox" name="location" value="제주" > 제주 </li>
						<li><input type="checkbox" name="location" value="해외" > 해외 </li>
					</ul>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">프로젝트 설명</td>
				<td style="width: 85%" colspan="3">
					<textarea name="projectContent" id="projectcontent" rows="20" style="max-height: 600px;width:100%;resize:none"></textarea>
				</td>
			</tr>
			<tr>
				<td style="width: 15%" bgcolor="#FF9147">모집인원</td>
				<td style="width: 35%">
					<input type="text" style="width: 100%" name="projectTeamCount" id="projectteamcount"/>
				</td>
				<td style="width: 15%" bgcolor="#FF9147">모집 마감일</td>
				<td style="width: 35%" align="left">
					<input style="text-align: center" type="date" name="projectExpire" id="projectexpire">
				</td>
			</tr>
			<tr>
				<td bgcolor="#FF9147">프로젝트 기간</td>
				<td align="left" style="width: 85%" colspan="3">
					<input style="text-align: center" type="date" name="projectStartDay" id="projectstartday"> ~ 
					<input style="text-align: center" type="date" name="projectEndDay" id="projectendday">
				</td>
			</tr>
		</table>
		<br/>
		<div style="width:100%;" align="right" >
			<img src="/ppool/resources/images/register.png" id="writer" style="cursor: pointer;">
			<img src="/ppool/resources/images/rewriter.png"  id="rewriter" style="cursor: pointer;">
			<img src="/ppool/resources/images/cancel.png" id="cancel" style="cursor: pointer;margin-right: 5%">
		</div>
	</div>
	</form>
	
</body>
</html>