<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Resume</title>

<style type="text/css">

#r_top{
height:30px;
margin-left:64px;
}
div#r_left{
width:200px;
height:700px;
background-color:gray;
float:left;
margin-left:64px;
}
#r_middle{
width:30px;
height:700px;
background-color:white;
float:right;
}

#r_center{
width:938px;
height:2000px;
background-color:white;
float:left;
}
#r_inside{
width:920px;
height:1100px;
background-color:white;
margin:10px;
}

<!--rgb(191,195,199);-->


</style>



</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
<div  id="r_top"></div> <!-- 공간바 -->
		
				<div id="r_left" >왼쪽바
					<div id="r_middle"></div><!-- 가운데 끼인바 -->
				</div>
				
				<div id="r_center" ><!-- 가운데 -->
					<img src="/ppool/resources/images/resume.gif">
					  <hr border-top:1px solid  />

				<div id="r_inside" style="margin-top:20px; ">
						<table style="text-align:center; width:100%; height:80px; ">
								<tbody>
									<tr>
										<td style="padding-bottom:3px; float:left;" >
										1. 개인 이력정보
										</td><br>
										<td style="float:left;">
											<img src="/ppool/resources/images/topbar.png" width="100%" >
										</td>
									</tr>
								</tbody>
						</table>
					<div id="학력사항">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											학력사항
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">학교</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">전공계열</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">전공</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기간</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">소재지</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="7">등록된 학력사항 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
					
					<div id="교육사항">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											교육사항
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육과정</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기관명</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="4">등록된 교육사항 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
					
					<div id="경력사항">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											경력사항
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">회사명</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">근무부서</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">직위</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">근무기간</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">소재지</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="6">등록된 경력사항 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
					<hr border-top:1px solid />
						<td style="float:left;">
									<img src="/ppool/resources/images/topbar2.png" width="100%" >
						</td>
				
					
					<div id="보유기술">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											보유기술
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">보유기술명</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기능수준</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">사용경력기간</td>
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="6">등록된 보유기술 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
				
					<div id="자격증">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											자격증
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">자격증명</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">발행처</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">취득일자</td>
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="6">등록된 자격증현황 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
				
					<div id="외국어능력">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											외국어능력
											</td>
											<td style="width:20%" align="right">
												<button style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table style="text-align:center; width:100%;">
								<tbody>
						
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">외국어명</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">수준</td>
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공인인증시험</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">점수/등급</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">취득일자</td>
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
										<tr>
											<td align="center" height="28" colspan="6">등록된 외국어능력 정보가 없습니다.</td>
										</tr>
								</tbody>
							</table>		
					</div>
					<hr border-top:1px solid />
					<td style="padding-bottom:3px; float:left;" >
					2.자기소개서
					</td>
					<div style="margin-top:10px">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td bgcolor="#EEF8F3" style="padding:8px 0 8px 0" align="center" >
										<textarea name="user_introduction" style="width:665px; height:200px; font-size:9pt;
																	border:1px #DADADA solid; background:#FFFFFF; "></textarea>
								</td>
							</tr>
						</table>
					</div>
					<div align="center">
						<table>
							<tr>
								<td height="65" align="center">
								<button>수정하기</button>
								<button>취소</button>
								</td>
							</tr>
						</table>
					</div>
				
				</div>
				
				
					
				</div>
</body>
</html>