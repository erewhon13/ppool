<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>User Resume</title>

  <link rel="stylesheet" href="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.css">
  <link rel="stylesheet" href="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.theme.css">
  <script src="http://code.jquery.com/jquery-1.11.3.js"></script>
  <script src="/ppool/resources/jquery-ui-1.11.4.custom/jquery-ui.js"></script>

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

	label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
	h1 { font-size: 1.2em; margin: .6em 0; }
	

</style>

<script type="text/javascript">

	$(function(){
		var dialog, form,
	
		userMajor = $("#userMajor"),
		majorday = $("#majorDay"),
		locationNo = $("#locationNo"),
		userOpenLevel =$("#userOpenLevel"),
		tips = $( ".validateTips" );
		allFields = $( [] ).add( userMajor ).add( majorday ).add( locationNo ).add(userOpenLevel);
		
		//console.log($("#dialog-form").dialog);
	 	
		 function updateTips( t ) {
		      tips
		        .text( t )
		        .addClass( "ui-state-highlight" );
		      setTimeout(function() {
		        tips.removeClass( "ui-state-highlight", 1500 );
		      }, 500 );
		    }
		
		function checkLength( o, n, min, max ) {
		      if ( o.val().length > max || o.val().length < min ) {
		        o.addClass( "ui-state-error" );
		        updateTips( "Length of " + n + " must be between " +
		          min + " and " + max + "." );
		        return false;
		      } else {
		        return true;
		      }
		    }	

		function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		
		function addRegister(){
			 var valid = true;
			allFields.removeClass("ui-state-error");
			
			valid = valid && checkLength( userMajor, "userMajor",1,30);
			valid = valid && checkLength( majorday, "majorDay",1,30);
			valid = valid && checkLength( locationNo, "locationNo",1,5);
			valid = valid && checkLength( userOpenLevel, "userOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users tbody" ).append( "<tr>" +
		          "<td>" + userMajor.val() + "</td>" +
		          "<td>" + majorday.val() + "</td>" +
		          "<td>" + locationNo.val() + "</td>" +
		          "<td>" + userOpenLevel.val() + "</td>" +
		        "</tr>" );
		        dialog.dialog( "close" );
		      } 
		      return valid; 
		}
		
		dialog = $("#dialog-form").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister,
	 	    	  		"취소": function(){
	 	    	  			dialog.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form[0].reset();
	 	    	  	allFields.removeClass("ui-state-error");
	 	      }
	 	});
		
	 	
	 	form = dialog.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister();
	 	    });
	 	
	 	
	 	
	 	$("#register").on("click", function(event){
	 	     dialog.dialog( 'open' );
	 	    });
		
	});	
	
	$(function(){
		var dialog2, form2
	
		ResumeEducation =$("#ResumeEducation"),
		ResumeEducationStartDay =$("#ResumeEducationStartDay"),
		ResumeEducationEndDay =$("#ResumeEducationEndDay"),
		ResumeEducationCenter =$("#ResumeEducationCenter"),
		userOpenLevel =$("#userOpenLevel"),
		tips = $( ".validateTips" );
		allFields2 = $( [] ).add( ResumeEducation ).add( ResumeEducationStartDay ).add( ResumeEducationEndDay ).add(ResumeEducationCenter).add(userOpenLevel);
	
		 function updateTips( t ) {
		      tips
		        .text( t )
		        .addClass( "ui-state-highlight" );
		      setTimeout(function() {
		        tips.removeClass( "ui-state-highlight", 1500 );
		      }, 500 );
		    }
		
		function checkLength( o, n, min, max ) {
		      if ( o.val().length > max || o.val().length < min ) {
		        o.addClass( "ui-state-error" );
		        updateTips( "Length of " + n + " must be between " +
		          min + " and " + max + "." );
		        return false;
		      } else {
		        return true;
		      }
		    }	

		function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		function addRegister2(){
			 var valid = true;
			allFields2.removeClass("ui-state-error");
			
			valid = valid && checkLength( ResumeEducation, "ResumeEducation",1,30);
			valid = valid && checkLength( ResumeEducationStartDay, "ResumeEducationStartDay",1,30);
			valid = valid && checkLength( ResumeEducationEndDay, "ResumeEducationEndDay",1,30);
			valid = valid && checkLength( ResumeEducationCenter, "ResumeEducationCenter",1,5);
			valid = valid && checkLength( userOpenLevel, "userOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users2 tbody" ).append( "<tr>" +
		          "<td>" + ResumeEducation.val() + "</td>" +
		          "<td>" + ResumeEducationStartDay.val() + "</td>" +
		          "<td>" + ResumeEducationEndDay.val() + "</td>" + 
		          "<td>" + ResumeEducationCenter.val() + "</td>" +
		          "<td>" + userOpenLevel.val() + "</td>" +
		        "</tr>" );
		        dialog.dialog( "close" );
		      } 
		      return valid; 
		}
		dialog = $("#dialog-form2").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister2,
	 	    	  		"취소": function(){
	 	    	  			dialog.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form[0].reset();
	 	    	  	allFields2.removeClass("ui-state-error");
	 	      }
	 	});
		form2 = dialog.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister2();
	 	    });

		$("#register2").on("click", function(event){
	     dialog.dialog( 'open' );
		    });
		
	});	
</script>

</head>
<%
	//pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
<div id="dialog-form" title="등록하기">
		<form>
				<fieldset>
						<label for="userMajor">전공</label>
						<input type="text" name="userMajor" id="userMajor" class="text ui-widget-content ui-corner-all" style="width:25%">
						<label for="majorDay">기간</label>
						<input type="text" name="majorDay" id="majorDay" class="text ui-widget-content ui-corner-all" style="width:70%">
						<!-- ~<input type="date" name="majorDay" id="majorDay" class="text ui-widget-content ui-corner-all" style="width:70%">  -->
						<label for="locationNo">소재지</label>
						<input type="text" name="locationNo" id="locationNo" class="text ui-widget-content ui-corner-all">
						<label for="userOpenLevel">공개여부</label>
						<input type="text" name="userOpenLevel" id="userOpenLevel" class="text ui-widget-content ui-corner-all">
						
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
<div id="dialog-form2" title="등록하기">
		<form>
				<fieldset>
						<label for="ResumeEducation">교육과정</label>
						<input type="text" name="ResumeEducation" id="ResumeEducation" class="text ui-widget-content ui-corner-all2" style="width:25%">
						<label for="ResumeEducationStartDay">교육기간</label>
						<input type="date" name="ResumeEducationStartDay" id="ResumeEducationStartDay" class="text ui-widget-content ui-corner-all2" style="width:70%">
						 ~<input type="date" name="ResumeEducationEndDay" id="ResumeEducationEndDay" class="text ui-widget-content ui-corner-all2" style="width:70%"> 
						<label for="ResumeEducationCenter">교육기관명</label>
						<input type="text" name="ResumeEducationCenter" id="ResumeEducationCenter" class="text ui-widget-content ui-corner-all2">
						<label for="userOpenLevel">공개여부</label>
						<input type="text" name="userOpenLevel" id="userOpenLevel" class="text ui-widget-content ui-corner-all2">
						
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>




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
					
					<div id="users-contain" class="ui-widget">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											학력사항
											</td>
											<td style="width:20%" align="right">
												<button id="register" style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
						
							<table id="users"  class="ui-widget ui-widget-content" style="text-align:center; width:100%;">
								<thead>
										<tr class="ui-widget-header">
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">전공</td>
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기간</td>
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">소재지</td>
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
								</tbody>		
							</table>		
					</div>
					
					
						<div id="users-contain2" class="ui-widget2">	
							<table style="text-align:center; width:100%; margin-top:10px; ">
									<tbody>
											<tr>
												<td style="width:80%"  align="left"  >
													<img src="/ppool/resources/images/arrow.gif" height=13px>
												교육사항
												</td>
												<td style="width:20%" align="right">
													<button id="register2" style="float:right;">등록하기</button>
												</td>
											</tr>
									</tbody>
							</table>
							
							<table id="users2"  class="ui-widget ui-widget-content2" style="text-align:center; width:100%;">
								<thead>
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육과정</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기관명</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
								</tbody>		
							</table>		
					</div>
					
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
