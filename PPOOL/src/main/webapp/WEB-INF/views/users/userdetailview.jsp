<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
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
				<table  width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr><td colspan="4" height="2" bgcolor="#83D2A6"></td></tr>
							<tr><td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr><td width="23%" valign="top" style="padding-top:15px;">
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr><td align="center">
													<table width="138" border="0" cellpadding="0" cellspacing="1" bgcolor="#DCD1BC">
														<tr><td height="158" align="center" bgcolor="#FFFFFF"><img name="IMG1" src="/ppool/resources/images/${users.userPictureSavedName}"></td></tr>
													</table>
													</td>
												</tr>
											</table>
											</td>
									
								<td width="77%">
								<table width="100%"  border="0" cellspacing="0" cellpadding="0">
											<tr>
													<td bgcolor="#F8F7F7" style="padding-left:10px" width="125px">성 명 / 아이디</td>
													<td height="28" colspan="3" style="padding-left:8px">${users.userName}</td>
											</tr>
											<tr>
													<td colspan="4" height="1" bgcolor="#DADADA"></td>
											</tr>
											<tr>
												<td  bgcolor="#F8F7F7" style="padding-left:10px">생년월일</td>
												<td colspan="3" height="28" style="padding-left:8px">${users.userBirth}</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr>
												<td bgcolor="#F8F7F7" style="padding-left:10px">연락처</td>
												<td height="55" style="padding-left:8px" colspan="3">
													<table width="100%" border="0" align="right" cellpadding="0" cellspacing="0">
														<tr><td width="30%" align="center" bgcolor="#E1D7C5">${users.userPhone}</td>
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
											</tr>
											<tr>
												<td height="25" colspan="3" style="padding-bottom:3px;">&nbsp;&nbsp;${users.userEmail}
												<span style="font-size:11px;text-decoration: underline">비공개</span>
												</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td rowspan="1" bgcolor="#F8F7F7" style="padding-left:10px">주 소</td>
												<td height="25" colspan="3" style="padding-top:3px">&nbsp;&nbsp;${users.userAddress}
												&nbsp;&nbsp;<span style="font-size:11px;text-decoration: underline">비공개</span>
												</td>
											</tr>
											
											<tr><td colspan="4" bgcolor="#DADADA" height="1"></td></tr>
											<tr><td height="30" bgcolor="#F8F7F7" style="padding-left:10px">프로젝트 경험</td>
												<td colspan="4">&nbsp;&nbsp;${users.userExperience }<span style="font-size:11px;text-decoration: underline">&nbsp;&nbsp;비공개</span></td>
											</tr>
											<tr><td colspan="5" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td bgcolor="#F8F7F7" style="padding-left:10px">최종학력</td>
												   <td height="28" style="padding-left:8px" colspan="3">${users.userAcademic}</td>
											</tr>
											<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
											<tr><td bgcolor="#F8F7F7" style="padding-left:10px">전공</td>
												   <td height="28" colspan="3"  style="padding-left:8px">${users.userMajor}</td>
											</tr>
										</table>
								</td>
							</tr>
						</table>
						</td></tr>
								<tr><td colspan="2" height="2" bgcolor="#83D2A6"></td></tr>
								<tr><td colspan="2" height="25" align="center"></td></tr>
				</table>
				
		<tr><td style="padding-bottom:3px">&nbsp;<b>2. 개인 이력정보</b></td></tr>
					<tr><td>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr><td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr><td colspan="2" height="2" bgcolor="#83D2A6"></td></tr>
									<tr><td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr><td height="20"></td></tr>			
											<tr><td style="position:relative;">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td colspan="7" height="22">
															<table width="100%" border="0" cellspacing="0" cellpadding="0">
																<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>학력사항</b></td>
																		<td width="40%" align="right">&nbsp;&nbsp;</td>
																</tr>
															</table>
														  </td>
													</tr>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
													<tr><td width="20%" align="center" width="" bgcolor="#F8F7F7" height="30">학교명</td>
														   <td width="20%" align="center" width="" bgcolor="#F8F7F7">전 공</td>
														   <td width="40%" align="center" width="" bgcolor="#F8F7F7" colspan="3">기 간</td>
													</tr>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
													<c:forEach var="resumeSchool" items="${resumeSchools}">
															<tr><td style="text-align: center;" height="28">${resumeSchool.resumeUserSchool}</td>
																   <td align="center">${resumeSchool.resumeUserMajor}</td>
																   <f:formatDate value="${resumeSchool.resumeMajorStartDay}" pattern="yyyy년 MM월 dd일" var="day1" />
																	<f:formatDate value="${resumeSchool.resumeMajorEndDay}" pattern="yyyy년 MM월 dd일" var="day2" />
																	<td  align="center">${day1}</td>
																	<td>~</td>
																	<td align="center">${day2}</td>
															</tr>
													</c:forEach>
													 <tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
												</table>
											</td>
									  		</tr>									
											<tr><td height="20"></td></tr>
											<tr><td style="position:relative;">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td colspan="4" height="22">
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>교육사항</b></td>
																<td width="40%" align="right">&nbsp;&nbsp;</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
													<tr><td width="20%" align="center" width="" bgcolor="#F8F7F7" height="30">교육과정</td>
														   <td width="20%" align="center" width="" bgcolor="#F8F7F7">교육기관명</td>
														   <td width="40%" align="center" width="" bgcolor="#F8F7F7" colspan="3">기간</td>
													</tr>
													<c:forEach var="resumeEducation" items="${resumeEducations}">
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
																<tr><td align="center" height="28">${resumeEducation.resumeEducation}</td>
																	<td align="center">${resumeEducation.resumeEducationCenter}</td>
																	<f:formatDate value="${resumeEducation.resumeEducationStartDay}" pattern="yyyy년 MM월 dd일" var="day1" />
																	<f:formatDate value="${resumeEducation.resumeEducationEndDay}" pattern="yyyy년 MM월 dd일" var="day2" />
																	<td align="center">${day1}</td>
																	<td>~</td>
																	<td align="center">${day2}</td>
																</tr>
													</c:forEach>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
												</table>
												</td>
											</tr>
											<tr><td height="20"></td></tr>
											<tr><td style="position:relative;">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td colspan="4" height="22">
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>자격증</b></td>
																<td width="40%" align="right">&nbsp;&nbsp;</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
													<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">자격증명</td>
														<td align="center" width="" bgcolor="#F8F7F7">발행처</td>
														<td align="center" width="" bgcolor="#F8F7F7">취득일자</td>
													
													</tr>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
															<c:forEach var="resumeLicense" items="${resumeLicenses}">	
																	<tr><td align="center" height="28">${resumeLicense.resumeLicense}</td>
																	<td align="center">${resumeLicense.resumeLicenseCenter}</td>
																	<f:formatDate value="${resumeLicense.resumeLicenseDay}" pattern="yyyy년 MM월 dd일" var="day1" />
																	<td align="center">${day1}</td>
																</tr>
															</c:forEach>
													<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
												</table>
												</td>
											</tr>
											<tr><td height="20"></td></tr>
											<tr><td style="position:relative;">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr><td colspan="4" height="22">
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>외국어</b></td>
																<td width="40%" align="right">&nbsp;&nbsp;</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
													<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">외국어명</td>
															<td align="center" width="" bgcolor="#F8F7F7">수준</td>
													</tr>
													<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
															<c:forEach var="resumeLanguage" items="${resumeLanguages}">
																<tr><td align="center" height="28">${resumeLanguage.resumeLanguage}</td>
																		
																		<td align="center">
																		<c:choose>
																		<c:when test="${resumeLanguage.resumeLanguageGrade ==3}">상</c:when>
																		<c:when test="${resumeLanguage.resumeLanguageGrade ==2}">중</c:when>
																	    <c:otherwise>하</c:otherwise>
																		</c:choose>
																		</td>
																		
																</tr>
															</c:forEach>
													<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
												</table>
												</td>
											</tr>
												<tr><td height="20"></td></tr>
												<td style="position:relative;">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr><td colspan="4" height="22">
															<table width="100%" border="0" cellspacing="0" cellpadding="0">
																<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>프로젝트 수행정보</b></td>
																	<td width="40%" align="right">&nbsp;&nbsp;</td>
																</tr>
															</table>
															</td>
														</tr>
														<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
														
														<tr><td align="center" width="15%" bgcolor="#F8F7F7" height="30">프로젝트명</td>
															   <td align="center" width="30%" bgcolor="#F8F7F7" colspan="3">참여기간</td>
														       <td align="center" width="15%" bgcolor="#F8F7F7">작업구분</td>
														       <td align="center" width="15%" bgcolor="#F8F7F7">담당업무</td>
													    </tr>
													   
														<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
														<c:forEach var="history" items="${historys}">
																<tr><td align="center" height="28">
																			<c:url value="historydetailview.action" var="viewUrl">
																				<c:param name="historyNo" value="${history.historyNo}"/>
																			</c:url><a href='${viewUrl}'>${history.historyTitle}</a>
																		</td>
																		<f:formatDate value="${history.historyStartDay}" pattern="yyyy년 MM월 dd일" var="day1" />
																		<f:formatDate value="${history.historyEndDay}" pattern="yyyy년 MM월 dd일" var="day2" />
																	   <td align="center">${day1}</td><td>~</td>
																	   <td align="center">${day2}</td>
																	   <td align="center">${history.historyWork}</td>
																	   <td align="center">${history.historyService}</td>
																</tr>
														</c:forEach>	
														<tr><td colspan="7" height="1" bgcolor="#DADADA"></td></tr>
													</table>
												<tr><td height="20"></td></tr>
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr><td colspan="4" height="22">
															<table width="100%" border="0" cellspacing="0" cellpadding="0">
																<tr><td width="60%" align="left" class="text_green" height="22">&nbsp;&nbsp;<img src="" width="9" height="9"> <b>보유기술</b></td>
																	<td width="40%" align="right">&nbsp;&nbsp;</td>
																</tr>
															</table>
															</td>
														</tr>
														<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
														<tr><td align="center" width="" bgcolor="#F8F7F7" height="30">보유기술</td>
													  	   		<td align="center" width="" bgcolor="#F8F7F7">희망지역</td>
														</tr>
														<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
																<tr><td align="center" height="28"></td>
																		<td align="center"></td>
																</tr>
														<tr><td colspan="4" height="1" bgcolor="#DADADA"></td></tr>
														<tr><td height="65" align="center" style="position: relative">
												</table>
												<div style="position: absolute;top:-750px;left:-100px;display: none;">
									
								</div>
											<input type="button" value="쪽지보내기" onclick="location.href='home.action';">
											<input type="button" value="목록으로" onclick="location.href='search.action';">
						 </td>
				   </tr>
			</table>
		</table>


</body>
</html>