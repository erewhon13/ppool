<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Detail</title>

<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<style type="text/css">

#s_top{
height:30px;
margin-left:64px;
}
#s_center{


}


.li-style1 li{display:inline;}

</style>



</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
<div id="s_top"></div>
<img src="/ppool/resources/images/search.gif">
			<hr border-top:1px solid />
			
			<table width="75%" border="0" align="center" cellpadding="0" cellspacing="0"  style="margin-top: 22px">
<tr><td style="padding-bottom:3px">&nbsp;<B>1. 개인 기본정보 </B></td></tr>             
			<tr><td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<form name="" method="post" action="main.html" enctype="multipart/form-data" >
					<tr><td colspan="4" height="2" bgcolor="#83D2A6"></td></tr>
					<tr><td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr><td width="23%" valign="top" style="padding-top:15px;">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr><td align="center">
										<table width="138" border="0" cellpadding="0" cellspacing="1" bgcolor="#DCD1BC">
											<tr><td height="158" align="center" bgcolor="#FFFFFF"><img name="IMG1" src="/ppool/resources/images/PPOOL.png"></td></tr>
										</table>
										</td>
									</tr>
									
								</table>
								</td>
								<td width="77%">
								<table width="100%"  border="0" cellspacing="0" cellpadding="0">
									<tr><td bgcolor="#F8F7F7" style="padding-left:10px" width="125px">성 명 / 아이디</td>
																			<td height="28" colspan="3" style="padding-left:8px"></td>
									</tr>
									<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
									<tr>
										<td  bgcolor="#F8F7F7" style="padding-left:10px">나 이</td>
										<td colspan="3" height="28" style="padding-left:8px"></td>
									</tr>
									<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
									<tr><td bgcolor="#F8F7F7" style="padding-left:10px">연락처</td>
										<td height="55" style="padding-left:8px" colspan="3">
										<table width="100%" border="0" align="right" cellpadding="0" cellspacing="0">
											<tr><td width="16%" align="center" bgcolor="#E1D7C5">전&nbsp;&nbsp;화</td>
												<td width="84%">&nbsp;
												 <span style="font-size:11px;text-decoration: underline">비공개</span>
												</td>
											</tr>
											<tr><td bgcolor="#FFFFFF" colspan="4"></td></tr>
										</table>
										</td>
									</tr>
									<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
									<tr><td rowspan="2" bgcolor="#F8F7F7" style="padding-left:10px">E-Mail</td>
										<td height="25" colspan="3" style="padding-top:3px">
										</td>
									</tr>
									<tr>
										<td height="25" colspan="3" style="padding-bottom:3px">1111
										<span style="font-size:11px;text-decoration: underline">비공개</span>
										</td>
									</tr>
									<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
									<tr><td rowspan="1" bgcolor="#F8F7F7" style="padding-left:10px">주 소</td>
										<td height="25" colspan="3" style="padding-top:3px">
										&nbsp;&nbsp;<span style="font-size:11px;text-decoration: underline">비공개</span>
										</td>
									</tr>
									
									<tr><td colspan="4" bgcolor="#DADADA" height="1"></td></tr>
									<tr><td height="30" bgcolor="#F8F7F7" style="padding-left:10px">홈페이지</td>
										<td colspan="4">&nbsp;&nbsp;<span style="font-size:11px;text-decoration: underline">비공개</span></td>
									</tr>
									<tr><td colspan="5" height="1" bgcolor="#DADADA"></td></tr>
									<tr><td bgcolor="#F8F7F7" style="padding-left:10px">경력년수</td>
										<td height="28" style="padding-left:8px" colspan="3">
										
										</td>
										
									</tr>
									<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
									<tr><td bgcolor="#F8F7F7" style="padding-left:10px">전문분야</td>
										<td height="28" colspan="3"  style="padding-left:8px">
										
										</td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr><td colspan="2" height="2" bgcolor="#83D2A6"></td></tr>
					<tr><td colspan="2" height="25" align="center">
					
						</td>
					</tr>
				</form>
				</table>
				</td>
			</tr>
<tr><td style="padding-bottom:3px">&nbsp;<b>2. 개인 이력정보</b></td></tr>
			<tr><td>
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr><td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr><td colspan="2" height="2" bgcolor="#83D2A6"></td></tr>
							<tr><td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
													
									<tr><td style="position:relative;">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr><td colspan="7" height="22">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="../img03/bul_arrow1.gif" width="9" height="9"> <b>학력사항</b></td>
														<td width="40%" align="right">&nbsp;&nbsp;</td>
													</tr>
												</table>
												</td>
											</tr>
											<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">학교명</td>
												<td align="center" width="" bgcolor="#F8F7F7">전 공</td>
												<td align="center" width="" bgcolor="#F8F7F7">기 간</td>
												<td align="center" width="" bgcolor="#F8F7F7">기 간</td>
												
											</tr>
											<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
																<tr><td align="left" height="28"></td>
																	<td align="center"></td>
																	<td align="center"></td>
																	<td align="center"></td>
																	<td align="center"></td>
																</tr>
											<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
										</table>
										
										<span id="ResumePANNEL1" style="position:absolute; left:10px; top:-145px; width:660px; height:230px; z-index:1; display:none;">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<form method="post" name="ResumeFrame1" style="display:inline;" onSubmit="return false;">
											<input type="hidden" name="seluno" value="">
											<tr><td><iframe id="ResumeiFrame1" name="ResumeiFrame1" width="660" height="230" frameborder="0" scrolling="no"></iframe></td></tr>
										</form>
										</table>
										</span>
										</td>
									</tr>									
									
									<tr><td height="20"></td></tr>
									<tr><td style="position:relative;">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr><td colspan="4" height="22">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="../img03/bul_arrow1.gif" width="9" height="9"> <b>자격증</b></td>
														<td width="40%" align="right">&nbsp;&nbsp;</td>
													</tr>
												</table>
												</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">자격증명</td>
												<td align="center" width="" bgcolor="#F8F7F7">발행처</td>
												<td align="center" width="" bgcolor="#F8F7F7">취득일자</td>
											
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
														<tr><td align="center" height="28"></td>
															<td align="center"></td>
															<td align="center"></td>
														</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
										</table>
										<span id="ResumePANNEL5" style="position:absolute; left:10px; top:-175px; width:660px; height:264px; z-index:1; display:none;">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<form method="post" name="ResumeFrame5" style="display:inline;" onSubmit="return false;">
											<input type="hidden" name="seluno" value="">
											<tr><td><iframe id="ResumeiFrame5" name="ResumeiFrame5" width="660" height="264" frameborder="0" scrolling="no"></iframe></td></tr>
										</form>
										</table>
										</span>
										</td>
									</tr>
										<tr><td height="20"></td></tr>
										<td style="position:relative;">
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr><td colspan="4" height="22">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="../img03/bul_arrow1.gif" width="9" height="9"> <b>프로젝트 수행정보</b></td>
															<td width="40%" align="right">&nbsp;&nbsp;</td>
														</tr>
													</table>
													</td>
												</tr>
												<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">프로젝트명</td>
												<td align="center" width="" bgcolor="#F8F7F7">참여기간</td>
												<td align="center" width="" bgcolor="#F8F7F7">역할</td>
												<td align="center" width="" bgcolor="#F8F7F7">개발환경</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
														<tr><td align="center" height="28"></td>
															<td align="center"></td>
															<td align="center"></td>
														</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
												
										</table>
										<tr><td height="20"></td></tr>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr><td colspan="4" height="22">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="../img03/bul_arrow1.gif" width="9" height="9"> <b>보유기술</b></td>
															<td width="40%" align="right">&nbsp;&nbsp;</td>
														</tr>
													</table>
													</td>
												</tr>
												<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">보유기술</td>
												<td align="center" width="" bgcolor="#F8F7F7">역할</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
														<tr><td align="center" height="28"></td>
															<td align="center"></td>
															<td align="center"></td>
														</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
												
											<tr><td height="65" align="center" style="position: relative">
					
										</table>
										<div style="position: absolute;top:-750px;left:-100px;display: none;">
							<iframe src="" frameborder="0" name="view_main" class="main_div" ></iframe>
						</div>
									<input type="button" value="쪽지보내기" onclick="location.href='home.action';">
									<input type="button" value="목록으로" onclick="location.href='home.action';">
						</td>
					</tr>
										
										
	</table>
	
</table>



</body>
</html>