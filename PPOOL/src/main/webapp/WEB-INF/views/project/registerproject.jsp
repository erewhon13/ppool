<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	td{
	padding:10px;
	}
	caption {font-weight:700; font-size:20px; padding:5px; color:#1BA6B2; text-align:left; margin-bottom:5px}
	input.sub {
	font-size: 15pt;
	}
	</style>
	<script type="text/javascript">
	function ChangeEmail() {
		var email1 = document.getElementById("email1");
		var email2 = document.getElementById("email2");
		var emailSel = document.getElementById("emailSelect");
		var selected = emailSel.options[emailSel.selectedIndex].value;
		if (selected == "etc") {
			email2.readOnly = false;
			email2.value = "";
			email2.focus();
		} else {
			email2.readOnly = true;
			email2.value = selected;
			email1.focus();
		}
	}
	
	window.onload = function(){
		var area = document.getElementById("textarea");
		area.style.maxWidth = area.offsetParent.offsetWidth + "px";
		area.style.minWidth = area.offsetParent.offsetWidth + "px";
		
	}
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
		<div style="width:1024px; margin-right:5%;float: right" ><br/>
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
				<td style="width: 35%" align="left">
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
					<input type="text" name="phone2" value=""style="width: 60px; text-align: center;"> - 
					<input type="text" name="phone3" value=""style="width: 60px; text-align: center;">
				</td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">이메일</td>
				<td colspan="3" align="left">
					<input id="email1" type="text" name="email1" value="" style="width: 150px;"> @ 
					<input id="email2" type="text" name="email2" value="" style="width: 155px; 
							border: solid #CECFD0 1px; font-size: 9pt;"readonly=""> 
					<select id="emailSelect" name="emailSelect" style="width: 150px; 
							font-size: 12px;"onchange="javascript:ChangeEmail();">
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
		<table style="text-align: center; width: 98%; border:groove;  ">
			<tr>
				<td style="width: 18%" bgcolor="#ddbbff">개발</td>
				<td style="width: 82%" colspan="3"></td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">디자인</td>
				<td></td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">지역</td>
				<td></td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">프로젝트 설명</td>
				<td colspan="4">
					<textarea name="projectContent" id="textarea" rows="20" cols="30" style="max-height: 600px;"></textarea>
				</td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">모집인원</td>
				<td>
					<input type="text" style="width: 100%" name="projectTeamCount" />
				</td>
				<td bgcolor="#ddbbff">마감일</td>
				<td align="left">
					<input style="text-align: center" type="date" name="projectExpire">
				</td>
			</tr>
			<tr>
				<td bgcolor="#ddbbff">기간</td>
				<td align="left">
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