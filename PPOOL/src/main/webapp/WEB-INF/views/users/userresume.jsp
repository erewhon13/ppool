<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    fieldset { padding:0; border:0; margin-top:25px; }

</style>

<script type="text/javascript">
  
	$(function(){
		var dialog, form,
	
		resumeSchool = $("#resumeSchool"),
		resumeUserMajor = $("#resumeUserMajor"),
		resumeMajorStratDay = $("#resumeMajorStartDay"),
		resumeMajorEndDay = $("#resumeMajorEndDay"),
		resumeMajorUserOpenLevel =$("#resumeMajorUserOpenLevel"),
		tips = $( ".validateTips" );
		allFields = $( [] ).add( resumeSchool ).add( resumeUserMajor ).add( resumeMajorStartDay ).add(resumeMajorEndDay).add(resumeMajorUserOpenLevel);
		
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
			
			valid = valid && checkLength( resumeSchool, "resumeSchool",1,50);
			valid = valid && checkLength( resumeUserMajor, "resumeUserMajor",1,50);
			valid = valid && checkLength( resumeMajorStratDay, "resumeMajorStratDay",1,50);
			valid = valid && checkLength( resumeMajorEndDay, "resumeMajorEndDay",1,50);
			valid = valid && checkLength( resumeMajorUserOpenLevel, "resumeMajorUserOpenLevel",1,10);
			
			if ( valid ) {
		        $( "#users tbody" ).append( "<tr>" +
		          "<td><input type=text name=resumeSchool>" + resumeSchool.val() + "</td>" +
		          "<td><input type=text name=resumeUserMajor>" + resumeUserMajor.val() + "</td>" +
		          "<td><input type=date name=resumeMajorStartDay>" + resumeMajorStratDay.val() + "</td>" +
		          "<td><input type=date name=resumeMajorEndDay>" + resumeMajorEndDay.val() + "</td>" +
		          "<td><input type=int name=resumeMajorUserOpenLevel>" + resumeMajorUserOpenLevel.val() + "</td>" +
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
	 	
	 	$("#register1").on("click", function(event){
	 		event.preventDefault();
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
		resumeEducationOpenLevel =$("#resumeEducationOpenLevel"),
		tips = $( ".validateTips" );
		allFields2 = $( [] ).add( resumeEducation ).add( resumeEducationStartDay ).add( resumeEducationEndDay ).add(resumeEducationCenter).add(resumeEducationOpenLevel);
	
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
		        o.addClass( "ui-state-error2" );
		        updateTips( "Length of " + n + " must be between " +
		          min + " and " + max + "." );
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
			valid = valid && checkLength( resumeEducationStartDay, "resumeEducationStartDay",1,30);
			valid = valid && checkLength( resumeEducationEndDay, "resumeEducationEndDay",1,30);
			valid = valid && checkLength( resumeEducationCenter, "resumeEducationCenter",1,5);
			valid = valid && checkLength( resumeEducationOpenLevel, "resumeEducationOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users2 tbody" ).append( "<tr>" +
		          "<td name=resumeEducation>" + resumeEducation.val() + "</td>" +
		          "<td name=resumeEducationStartDay>" + resumeEducationStartDay.val() + "</td>" +
		          "<td name=resumeEducationEndDay>" + resumeEducationEndDay.val() + "</td>" + 
		          "<td name=resumeEducationCenter>" + resumeEducationCenter.val() + "</td>" +
		          "<td name=resumeEducationOpenLevel>" + resumeEducationOpenLevel.val() + "</td>" +
		        "</tr>" );
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
		form2 = dialog2.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister2();
	 	    });

		$("#register2").on("click", function(event){
			event.preventDefault();
	     dialog2.dialog( 'open' );
		    }); 
		});
	////////////////////3번
	/* $(function(){
		var dialog3, form3,
	
		SkillName =$("#SkillName"),
		ResumeSkillGrade =$("#ResumeSkillGrade"),
		ResumeSkillPeriod =$("#ResumeSkillPeriod"),
		userOpenLevel =$("#userOpenLevel"),
		tips = $( ".validateTips" );

		allFields3 = $( [] ).add( SkillName ).add( ResumeSkillGrade ).add( ResumeSkillPeriod ).add(userOpenLevel);
	 	
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
		        o.addClass( "ui-state-error3" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		
		function addRegister3(){
			 var valid = true;
			allFields3.removeClass("ui-state-error3");
			
			valid = valid && checkLength( SkillName, "SkillName",1,30);
			valid = valid && checkLength( ResumeSkillGrade, "ResumeSkillGrade",1,30);
			valid = valid && checkLength( ResumeSkillPeriod, "ResumeSkillPeriod",1,30);
			valid = valid && checkLength( userOpenLevel, "userOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users3 tbody" ).append( "<tr>" +
		        		"<td>" + SkillName.val() + "</td>" +
				         "<td>" + ResumeSkillGrade.val() + "</td>" +
				         "<td>" + ResumeSkillPeriod.val() + "</td>" + 
				         "<td>" + userOpenLevel.val() + "</td>" +
				    "</tr>" );
		        dialog3.dialog( "close" );
		      } 
		      return valid; 
		}
		
		dialog3 = $("#dialog-form3").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"등록하기":addRegister3,
	 	    	  		"취소": function(){
	 	    	  			dialog3.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    	  	form3[0].reset();
	 	    	  	allFields3.removeClass("ui-state-error");
	 	      }
	 	});
	 	
	 	form3 = dialog3.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister3();
	 	    });
	 	
	 	$("#register3").on("click", function(event){
	 	     dialog3.dialog( 'open' );
	 	    });
	 });*/
	
	////////////////////4번
	$(function(){
		var dialog4, form4,
	
		resumeLicense =$("#resumeLicense"),
		resumeLicenseCenter =$("#resumeLicenseCenter"),
		resumeLicenseDay =$("#resumeLicenseDay"),
		resumeLicenseOpenLevel =$("#resumeLicenseOpenLevel"),
		tips = $( ".validateTips" );

		allFields4 = $( [] ).add( resumeLicense ).add( resumeLicenseCenter ).add( resumeLicenseDay ).add(resumeLicenseOpenLevel);
	 	
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
		function addRegister4(){
			 var valid = true;
			allFields4.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeLicense, "resumeLicense",1,30);
			valid = valid && checkLength( resumeLicenseCenter, "resumeLicenseCenter",1,30);
			valid = valid && checkLength( resumeLicenseDay, "resumeLicenseDay",1,30);
			valid = valid && checkLength( resumeLicenseOpenLevel, "resumeLicenseOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users4 tbody" ).append( "<tr>" +
		        		"<td name=resumeLicense>" + resumeLicense.val() + "</td>" +
				         "<td name=resumeLicenseCenter>" + resumeLicenseCenter.val() + "</td>" +
				         "<td name=resumeLicenseDay>" + resumeLicenseDay.val() + "</td>" + 
				         "<td name=resumeLicenseOpenLevel>" + resumeLicenseOpenLevel.val() + "</td>" +
				    "</tr>" );
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
	 	
	 	form4 = dialog4.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister4();
	 	    });
	 	
	 	$("#register4").on("click", function(event){
	 		event.preventDefault();
	 	     dialog4.dialog( 'open' );
	 	    });
		});	 
	////////////////////5번
	$(function(){
		var dialog5, form5,
	
		resumeLanguage =$("#resumeLanguage"),
		resumeLanguageGrade =$("#resumeLanguageGrade"),
		resumeLanguageOpenLevel =$("#resumeLanguageOpenLevel"),
		tips = $( ".validateTips" );

		allFields5 = $( [] ).add( resumeLanguage ).add( resumeLanguageGrade ).add(resumeLanguageOpenLevel);
	 	
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
		function addRegister5(){
			 var valid = true;
			allFields5.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeLanguage, "resumeLanguage",1,30);
			valid = valid && checkLength( resumeLanguageGrade, "resumeLanguageGrade",1,30);
			valid = valid && checkLength( resumeLanguageOpenLevel, "resumeLanguageOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users5 tbody" ).append( "<tr>" +
		        		"<td name=resumeLanguage>" + resumeLanguage.val() + "</td>" +
				         "<td name=resumeLanguageGrade>" + resumeLanguageGrade.val() + "</td>" +
				         "<td name=resumeLanguageOpenLevel >" + resumeLanguageOpenLevel.val() + "</td>" +
				    "</tr>" );
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
	 	
	 	form5 = dialog5.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister5();
	 	    });
	 	
	 	$("#register5").on("click", function(event){
	 		event.preventDefault();
	 	     dialog5.dialog( 'open' );
	 	    });
		});	 
	////////////////////
	
	
	
	$(".school").each(function(index,obj) {
		console.log(obj);
	});
	
	
	
	
</script>

</head>
<%
	pageContext.include("/WEB-INF/views/include/header.jsp");
%>
<body>
<div id="dialog-form" title="등록하기">
		<form >
				<fieldset>
						<label for="resumeSchool">학교</label>
						<input type="text" name="resumeSchool" id="resumeSchool" class="text ui-widget-content ui-corner-all">
						<label for="resumeUserMajor">전공</label>
						<input type="text" name="resumeUserMajor" id="resumeUserMajor" class="text ui-widget-content ui-corner-all" >
						<label for="resumeMajorDay">기간</label>
						<input type="date" name="resumeMajorStartDay"  id="resumeMajorStartDay" class="text ui-widget-content ui-corner-all" >
						~<input type="date" name="resumeMajorEndDay"  id="resumeMajorEndDay" class="text ui-widget-content ui-corner-all">
						<label for="resumeMajorUserOpenLevel">공개여부</label>
						<input type="text" name="resumeMajorUserOpenLevel" id="resumeMajorUserOpenLevel" class="text ui-widget-content ui-corner-all">						
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
<div id="dialog-form2" title="등록하기">
		<form>
				<fieldset>
						<label for="resumeEducation">교육과정</label>
						<input type="text" name="resumeEducation" id="resumeEducation" class="text ui-widget-content ui-corner-all2" >
						<label for="resumeEducationStartDay">교육기간</label>
						<input type="date" name="resumeEducationStartDay" id="resumeEducationStartDay" class="text ui-widget-content ui-corner-all2" >
						 ~<input type="date" name="resumeEducationEndDay" id="resumeEducationEndDay" class="text ui-widget-content ui-corner-all2" > 
						<label for="resumeEducationCenter">교육기관명</label>
						<input type="text" name="resumeEducationCenter" id="resumeEducationCenter" class="text ui-widget-content ui-corner-all2">
						<label for="resumeEducationOpenLevel">공개여부</label>
						<input type="text" name="resumeEducationOpenLevel" id="resumeEducationOpenLevel" class="text ui-widget-content ui-corner-all2">
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
<!--  
<div id="dialog-form3" title="등록하기">
		<form>
				<fieldset>
						<label for="SkillName">보유기술명</label>
							<ul class="li-style1">				
											<li><input type="checkbox" name="100" value=".NET" > .NET</li>
											<li><input type="checkbox" name="101" value="ANDROID" > ANDROID</li>
											<li><input type="checkbox" name="102" value="ASP" > ASP</li>
											<li><input type="checkbox" name="103" value="C" > C</li>	
											<li><input type="checkbox" name="104" value="C#" > C#</li>
											<li><input type="checkbox" name="105" value="C++" > C++</li>
											<li><input type="checkbox" name="106" value="CSS" > CSS</li>
											<li><input type="checkbox" name="107" value="DB" > DB</li>
											<li><input type="checkbox" name="108" value="DELPHI" > DELPHI</li>
											<li><input type="checkbox" name="109" value="HTML" > HTML</li>
										    <li><input type="checkbox" name="110" value="IOS" > IOS</li>
											<li><input type="checkbox" name="111" value="JAVA" > JAVA</li>
											<li><input type="checkbox" name="112" value="JSP" > JSP</li>
											<li><input type="checkbox" name="113" value="LINUX" > LINUX</li>
											<li><input type="checkbox" name="114" value="PHP" > PHP</li>
											<li><input type="checkbox" name="115" value="PYTHON" > PYTHON</li>
											<li><input type="checkbox" name="116" value="RUBY" > RUBY</li>
							</ul>					
						
						<label for="ResumeSkillGrade">기능수준</label>
						<input type="text" name="ResumeSkillGrade" id="ResumeSkillGrade" class="text ui-widget-content ui-corner-all3" style="width:70%">
						<label for="ResumeSkillPeriod">사용경력기간</label>
						<input type="text" name="ResumeSkillPeriod" id="ResumeSkillPeriod" class="text ui-widget-content ui-corner-all3" style="width:70%">
						<label for="userOpenLevel">공개여부</label>
						<input type="text" name="userOpenLevel" id="userOpenLevel" class="text ui-widget-content ui-corner-all3">
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
-->
<div id="dialog-form4" title="등록하기">
		<form>
				<fieldset>
						<label for="resumeLicense">자격증명</label>
						<input type="text" name="resumeLicense" id="resumeLicense" class="text ui-widget-content ui-corner-all4" >
						<label for="resumeLicenseCenter">발행처</label>
						<input type="text" name="resumeLicenseCenter" id="resumeLicenseCenter" class="text ui-widget-content ui-corner-all4">
						<label for="resumeLicenseDay">취득일자</label>
						<input type="date" name="resumeLicenseDay" id="resumeLicenseDay" class="text ui-widget-content ui-corner-all4" >
						<label for="resumeLicenseOpenLevel">공개여부</label>
						<input type="text" name="resumeLicenseOpenLevel" id="resumeLicenseOpenLevel" class="text ui-widget-content ui-corner-all4">
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
<div id="dialog-form5" title="등록하기">
		<form>
				<fieldset>
						<label for="resumeLanguage">외국어명</label>
						<input type="text" name="resumeLanguage" id="resumeLanguage" class="text ui-widget-content ui-corner-all4" >
						<label for="resumeLanguageGrade">외국어수준</label>
						<input type="text" name="resumeLanguageGrade" id="resumeLanguageGrade" class="text ui-widget-content ui-corner-all4" >
						<label for="resumeLanguageOpenLevel">공개여부</label>
						<input type="text" name="resumeLanguageOpenLevel" id="resumeLanguageOpenLevel" class="text ui-widget-content ui-corner-all4">
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>


				
	<div id="r_center" ><!-- 가운데 -->
					<img src="/ppool/resources/images/resume.gif" style="margin-top: 30px;">
					  <hr border-top:1px solid style="width:93%; float:left;" />

		<form action="resumewrite.action" method="post" >
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
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td></td>
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
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육과정</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20" >교육기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20" >교육기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육기관명</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr class="school">
											<td name="resumeEducation"></td>
											<td name="resumeEducationStartDay"></td>
											<td name="resumeEducationEndDay"></td>
											<td name="resumeEducationCenter"></td>
											<td name="resumeEducationOpenLevel"></td>
										</tr>
								</tbody>		
							</table>		
					</div>
					
						<td style="float:left;">
									<img src="/ppool/resources/images/topbar2.png" width="100%" >
						</td>
				
					<!--
					<div id="users-contain3" class="ui-widget3">	
						<table style="text-align:center; width:100%; margin-top:10px; ">
								<tbody>
										<tr>
											<td style="width:80%"  align="left"  >
												<img src="/ppool/resources/images/arrow.gif" height=13px>
											보유기술
											</td>
											<td style="width:20%" align="right">
												<button id="register3" style="float:right;">등록하기</button>
											</td>
										</tr>
								</tbody>
						</table>
						
							<table id="users3" class="ui-widget ui-widget-content3" style="text-align:center; width:100%;">
								<thead>
										<tr>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">보유기술명</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">기능수준</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">사용경력기간</td>
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
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
				  -->
				
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
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td name="resumeLicense"></td>
											<td name="resumeLicenseCenter"></td>
											<td name="resumeLicenseDay"></td>
											<td name="resumeLicenseOpenLevel"></td>
										</tr>
								</tbody>
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
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20">공개여부</td>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td name="resumeLanguage"></td>
											<td name="resumeLanguageGrade"></td>
											<td name="resumeLanguageOpenLevel"></td>
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
										<textarea name="resumeIntroduction" style="width:665px; height:200px; font-size:9pt;
																	border:1px #DADADA solid; background:#FFFFFF; "></textarea>
								</td>
							</tr>
						</table>
					</div>
					<div align="center">
						<table>
							<tr>
								<td height="65" align="center">
									<input type="submit" value="수정하기">
									<input type="button" value="취소"
										onclick="location.href='resume.action';">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</form>
				 
					
		</div>
				
</body>
</html>
