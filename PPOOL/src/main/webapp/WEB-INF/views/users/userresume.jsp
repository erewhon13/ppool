<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
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
 

#r_center{
width:70%;
height:80%;
background-color:white;
float:right;
}

#resumeform{
width:90%;
height:80%;
background-color:white;
}

#r_inside{
width:90%;
height:80%;
background-color:white;
margin:10px;
}

    input.text { margin-bottom:12px; width:95%; padding: .4em; }

</style>

<script type="text/javascript">
  
  
  
  
	$(function(){
		
		$('#writer').click(function(){
			$("#form123").submit()
		});
		
		var dialog, form,
	
		resumeUserSchool = $("#resumeUserSchool"),
		resumeUserMajor = $("#resumeUserMajor"),
		resumeMajorStartDay = $("#resumeMajorStartDay"),
		resumeMajorEndDay = $("#resumeMajorEndDay"),
		tips = $( ".validateTips" );
		allFields = $( [] ).add( resumeUserSchool ).add( resumeUserMajor ).add( resumeMajorStartDay ).add(resumeMajorEndDay);
		
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
		        updateTips( "에러");
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
			
			valid = valid && checkLength( resumeUserSchool, "resumeUserSchool",1,50);
			valid = valid && checkLength( resumeUserMajor, "resumeUserMajor",1,50);
			valid = valid && checkLength( resumeMajorStartDay, "resumeMajorStartDay",1,50);
			valid = valid && checkLength( resumeMajorEndDay, "resumeMajorEndDay",1,50);
			 
			if ( valid ) {
		        $( "#formResumeSchool").submit();
		        dialog.dialog( "close" );
		      } 
		      return valid; 
		}
		  // "<td><input type=hidden name=resumeUserSchool value=" + resumeUserSchool.val()+">"+resumeUserSchool.val() + "</td>" +
        // "<td><input type=hidden name=resumeUserMajor value="+resumeUserMajor.val()+">" + resumeUserMajor.val() + "</td>" +
        // "<td><input type=hidden name=resumeMajorStartDay value="+resumeMajorStartDay.val()+">" + resumeMajorStartDay.val() + "</td>" +
        // "<td>"+"~"+"</td>"+
        // "<td><input type=hidden name=resumeMajorEndDay value="+resumeMajorEndDay.val()+">" + resumeMajorEndDay.val() + "</td>" +
      // "</tr>").submit();
		
		
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
		
	 	/* 
	 	form = dialog.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister();
	 	    }); */
	 	
	 	$("#register1").on("click", function(event){
	 	     dialog.dialog( 'open' );
	 	    });
	});	
	
	////////////////////2번
	$(function(){
		var dialog2, form2,
	
		resumeEducation =$("#resumeEducation"),
		resumeEducationStartDay =$("#resumeEducationStartDay"),
		resumeEducationEndDay =$("#resumeEducationEndDay"),
		resumeEducationCenter =$("#resumeEducationCenter"),
		tips = $( ".validateTips" );
		allFields2 = $( [] ).add( resumeEducation ).add( resumeEducationStartDay ).add( resumeEducationEndDay ).add(resumeEducationCenter);
	
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
		        o.addClass( "에러" );
		        return false;
		      } else {
		        return true;
		      }
		    }	

		function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error2" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		
		function addRegister2(){
			 var valid = true;
			allFields2.removeClass("ui-state-error2");
			
			valid = valid && checkLength( resumeEducation, "resumeEducation",1,30);
			valid = valid && checkLength( resumeEducationCenter, "resumeEducationCenter",1,5);
			valid = valid && checkLength( resumeEducationStartDay, "resumeEducationStartDay",1,30);
			valid = valid && checkLength( resumeEducationEndDay, "resumeEducationEndDay",1,30);
			/* 
			 "<td><input type=hidden name=resumeEducation value="+resumeEducation.val()+">" + resumeEducation.val() + "</td>" +
	          "<td><input type=hidden  name=resumeEducationCenter value="+resumeEducationCenter.val()+">" + resumeEducationCenter.val() + "</td>" +
	          "<td><input type=hidden name=resumeEducationStartDay value="+resumeEducationStartDay.val()+">" + resumeEducationStartDay.val() + "</td>" +
	          "<td>"+"~"+"</td>"+
	          "<td><input type=hidden name=resumeEducationEndDay value="+resumeEducationEndDay.val()+">" + resumeEducationEndDay.val() + "</td>" + 
	        "</tr>" ); */
			
			if ( valid ) {
		        $( "#formResumeEducation" ).submit();
		        dialog2.dialog( "close" );
		      } 
		      return valid; 
		}
		
		dialog2 = $("#dialog-form2").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister2,
	 	    	  		"취소": function(){
	 	    	  			dialog2.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form2[0].reset();
	 	    	  	allFields2.removeClass("ui-state-error2");
	 	      }
	 	});
		/* form2 = dialog2.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister2();
	 	    });
 */
		$("#register2").on("click", function(event){
	   		  dialog2.dialog( 'open' );
		    }); 
		});
	////////////////////4번
	$(function(){
		var dialog4, form4,
	
		resumeLicense =$("#resumeLicense"),
		resumeLicenseCenter =$("#resumeLicenseCenter"),
		resumeLicenseDay =$("#resumeLicenseDay"),
		tips = $( ".validateTips" );

		allFields4 = $( [] ).add( resumeLicense ).add( resumeLicenseCenter ).add( resumeLicenseDay );
	 	
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
		        updateTips( "에러" );
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
		
		function addRegister4(){
			 var valid = true;
			allFields4.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeLicense, "resumeLicense",1,30);
			valid = valid && checkLength( resumeLicenseCenter, "resumeLicenseCenter",1,30);
			valid = valid && checkLength( resumeLicenseDay, "resumeLicenseDay",1,30);
	/* 		
	"#users4 tbody" ).append( "<tr>" +
			"<td><input type=hidden name=resumeLicense value="+resumeLicense.val()+">" + resumeLicense.val() + "</td>" +
         "<td><input type=hidden name=resumeLicenseCenter value="+resumeLicenseCenter.val()+">" + resumeLicenseCenter.val() + "</td>" +
         "<td><input type=hidden name=resumeLicenseDay value="+resumeLicenseDay.val()+">" + resumeLicenseDay.val() + "</td>" + 
    "</tr>" );
			 */
			
			if ( valid ) {
		        $("#formResumeLicense").submit();
		        dialog4.dialog( "close" );
		      } 
		      return valid; 
		}
		
		dialog4 = $("#dialog-form4").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister4,
	 	    	  		"취소": function(){
	 	    	  			dialog4.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form4[0].reset();
	 	    	  	allFields4.removeClass("ui-state-error");
	 	      }
	 	});
	 	
	 /* 	form4 = dialog4.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister4();
	 	    }); */
	 	
	 	$("#register4").on("click", function(event){
	 	     dialog4.dialog( 'open' );
	 	    });
		});	 
	
	////////////////////5번
	$(function(){
		var dialog5, form5,
	
		resumeLanguage =$("#resumeLanguage"),
		resumeLanguageGrade =$("#resumeLanguageGrade"),
		tips = $( ".validateTips" );

		allFields5 = $( [] ).add( resumeLanguage ).add( resumeLanguageGrade );
	 	
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
		        updateTips( "에러" );
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
		function addRegister5(){
			 var valid = true;
			allFields5.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeLanguage, "resumeLanguage",1,30);
			valid = valid && checkLength( resumeLanguageGrade, "resumeLanguageGrade",1,30);
		      
			/* users5 tbody" ).append( "<tr>" +
			"<td><input type=hidden name=resumeLanguage value="+resumeLanguage.val()+">" + resumeLanguage.val() + "</td>" +
         "<td><input type=hidden name=resumeLanguageGrade value="+resumeLanguageGrade.val()+">" + resumeLanguageGrade.val() + "</td>" +
    "</tr>" );
			 */
			
			if ( valid ) {
		        $( "#formResumeLanguage").submit();
		        dialog5.dialog( "close" );
		      } 
		      return valid; 
		}
		
		dialog5 = $("#dialog-form5").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister5,
	 	    	  		"취소": function(){
	 	    	  			dialog5.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form5[0].reset();
	 	    	  	allFields5.removeClass("ui-state-error");
	 	      }
	 	});
	 	
	 	/* form5 = dialog5.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister5();
	 	    }); */
	 	
	 	$("#register5").on("click", function(event){
	 	     dialog5.dialog( 'open' );
	 	    });
		});	 
	
		$('.ed_bt').click(function(){
			var no = $(this).attr("id").substr(2);
		});
</script>

</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
<div id="dialog-form" title="등록하기">
		<form id="formResumeSchool" action="formresumeschool.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<label for="resumeUserSchool">학교</label>
					<input type="text" name="resumeUserSchool" id="resumeUserSchool"  class="text ui-widget-content ui-corner-all">
					<label for="resumeUserMajor">전공</label>
					<input type="text" name="resumeUserMajor" id="resumeUserMajor"  class="text ui-widget-content ui-corner-all" >
					<label for="resumeMajorDay">기간</label>
					<input type="date" name="resumeMajorStartDay"  id="resumeMajorStartDay"   class="text ui-widget-content ui-corner-all" >
					~<input type="date" name="resumeMajorEndDay"  id="resumeMajorEndDay"  class="text ui-widget-content ui-corner-all">
					<!--  <input type="submit" tabindex="-1" style="position:absolute; top:-1000px"> -->
		</form>
</div>
<div id="dialog-form2" title="등록하기">
		<form id="formResumeEducation" action="formresumeeducation.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
				<label for="resumeEducation">교육과정</label>
				<input type="text" name="resumeEducation" id="resumeEducation" value="${resumeEducation.resumeEducation}"  class="text ui-widget-content ui-corner-all2" >
				<label for="resumeEducationStartDay">교육기간</label>
				<input type="date" name="resumeEducationStartDay" id="resumeEducationStartDay" value="${resumeEducation.resumeEducationStartDay}" class="text ui-widget-content ui-corner-all2" >
				~<input type="date" name="resumeEducationEndDay" id="resumeEducationEndDay"  value="${resumeEducation.resumeEducationEndDay}"class="text ui-widget-content ui-corner-all2" > 
				<label for="resumeEducationCenter">교육기관명</label>
				<input type="text" name="resumeEducationCenter" id="resumeEducationCenter" value="${resumeEducation.resumeEducationCenter}" class="text ui-widget-content ui-corner-all2">
		</form>
</div>
<div id="dialog-form4" title="등록하기">
		<form id="formResumeLicense" action="formresumelicense.action" method="post" >	
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
				<label for="resumeLicense">자격증명</label>
				<input type="text" name="resumeLicense" id="resumeLicense" value="${resumeLicense.resumeLicense}" class="text ui-widget-content ui-corner-all4" >
				<label for="resumeLicenseCenter">발행처</label>
				<input type="text" name="resumeLicenseCenter" id="resumeLicenseCenter" value="${resumeLicense.resumeLicenseCenter}" class="text ui-widget-content ui-corner-all4">
				<label for="resumeLicenseDay">취득일자</label>
				<input type="date" name="resumeLicenseDay" id="resumeLicenseDay" value="${resumeLicense.resumeLicenseDay}"class="text ui-widget-content ui-corner-all4" >
		</form>
</div>
<div id="dialog-form5" title="등록하기">
		<form id="formResumeLanguage" action="formresumelanguage.action" method="post" >
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
				<label for="resumeLanguage">외국어명</label>
				<input type="text" name="resumeLanguage" id="resumeLanguage" value="${resumeLanguage.resumeLanguage}"class="text ui-widget-content ui-corner-all4" >
				<label for="resumeLanguageGrade">외국어수준</label>
				<input type="text" name="resumeLanguageGrade" id="resumeLanguageGrade" value="${resumeLanguage.resumeLanguageGrade}"class="text ui-widget-content ui-corner-all4" >
		</form>
</div>


	<c:set var="resumeSchool" value="${resumeSchools}"/>
	<div id="r_center" ><!-- 가운데 -->
					<img src="/ppool/resources/images/resume.gif" style="margin-top: 30px;">
					  <hr border-top:1px solid style="width:93%; float:left;" />

		
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
						
				<div id="users-contain" class="ui-widget2">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											학력사항
											</td>
											<td style="width:20%" align="right">
												<button id="register1" style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
						
							<table id="users"  class="ui-widget ui-widget-content2" style="text-align:center; width:100%;">
								<thead>
										<tr>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">학교</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">전공</td>
											<td style="width:40%;" align="center"  bgcolor="F8F7F7" height="30" width="20" colspan="3">기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20"></td>
										</tr>
								</thead>
								
								<c:forEach var="resumeSchool" items="${resumeSchools}">
									<input type="hidden" name="resumeSchoolNo" value="${resumeSchool.resumeSchoolNo}"/>
											<tr>
												<td>${resumeSchool.resumeUserSchool}</td>
												<td>${resumeSchool.resumeUserMajor}</td>
												<f:formatDate value="${resumeSchool.resumeMajorStartDay}" pattern="yy년 MM월 dd일" var="day1" />
												<f:formatDate value="${resumeSchool.resumeMajorEndDay}" pattern="yy년 MM월 dd일" var="day2" />
												<td>${day1}</td><td>~</td>
												<td>${day2}</td>
												<c:if test="${resumeSchool ne null }">
										<td><input type="button" class="ed_bt" id="ed${resumeSchool.resumeSchoolNo}"  value="수정">
												<input type="button" value="삭제"></td>
								</c:if>
											</tr>
								</c:forEach>
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
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육과정</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기관명</td>
											<td style="width:40%;" align="center"  bgcolor="F8F7F7" height="30" width="20" colspan="3">교육기간</td>
										</tr>
								</thead>
									<c:forEach var="resumeEducation" items="${resumeEducations}">
										<tr>
											<td>${resumeEducation.resumeEducation}</td>
											<td>${resumeEducation.resumeEducationCenter}</td>
											<f:formatDate value="${resumeEducation.resumeEducationStartDay}" pattern="yy년 MM월 dd일" var="day1" />
											<f:formatDate value="${resumeEducation.resumeEducationEndDay}" pattern="yy년 MM월 dd일" var="day2" />
											<td>${day1}</td><td>~</td>
											<td>${day2}</td>
										</tr>
									</c:forEach>
							</table>		
					</div>
						<td style="float:left;">
									<img src="/ppool/resources/images/topbar2.png" width="100%" >
						</td>
				
					<div id="users-contain4" class="ui-widget4">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											자격증
											</td>
											<td style="width:20%" align="right">
												<button id="register4" style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
						
							<table id="users4"  class="ui-widget ui-widget-content4" style="text-align:center; width:100%;">
								<thead>
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">자격증명</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">발행처</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">취득일자</td>
										</tr>
								</thead>
								<c:forEach var="resumeLicense" items="${resumeLicenses}">
										<tr>
											<td>${resumeLicense.resumeLicense}</td>
											<td>${resumeLicense.resumeLicenseCenter}</td>
											<f:formatDate value="${resumeLicense.resumeLicenseDay}" pattern="yy년 MM월 dd일" var="day1" />
											<td>${day1}</td>
										</tr>
								</c:forEach>
							</table>		
					</div>
				
					<div id="users-contain5" class="ui-widget5">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											외국어능력
											</td>
											<td style="width:20%" align="right">
												<button id="register5" style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
							<table id="users5" class="ui-widget ui-widget-content5" style="text-align:center; width:100%;">
								<thead>
										<tr>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">외국어명</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">수준</td>
										</tr>
								</thead>
								<c:forEach var="resumeLanguage" items="${resumeLanguages}">
										<tr>
											<td>${resumeLanguage.resumeLanguage}</td>
											<td>${resumeLanguage.resumeLanguageGrade}</td>
									   </tr>
								 </c:forEach>
							</table>		
					</div>
					
					<hr border-top:1px solid />
					<td style="padding-bottom:3px; float:left;" >
					2.자기소개서
					</td>
			<c:set var="resumeIntroduction" value="${resumeIntroduction}"/>		
				<form id="form123" action="resumeintroduction.action" method="post" >
					<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<div style="margin-top:10px">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td bgcolor="#EEF8F3" style="padding:8px 0 8px 0" align="center" >
										<textarea name="resumeIntroduction" style="width:665px; height:200px; font-size:9pt;
																	border:1px #DADADA solid; background:#FFFFFF; ">
																	${resumeIntroduction.resumeIntroduction}
									    </textarea>
								</td>
							</tr>
						</table>
					</div>
					<div align="center">
						<table>
							<tr>
								<td height="65" align="center">
								<img src="/ppool/resources/images/writer.png" id="writer" style="cursor: pointer;">
								
									<input type="button" value="취소"
										onclick="location.href='resume.action';">
								</td>
							</tr>
						</table>
					</div>
				</form>
				</div>
		</div>
				
</body>
</html>
