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
	
	////////////////////2번
	$(function(){
		var dialog2, form2,
	
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
	 	    	  	allFields2.removeClass("ui-state-error3");
	 	      }
	 	});
		form2 = dialog2.find( "form" ).on( "submit", function( event ) {
	 	      event.preventDefault();
	 	      addRegister2();
	 	    });

		$("#register2").on("click", function(event){
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
	
		ResumeLicense =$("#ResumeLicense"),
		ResumeLicenseCenter =$("#ResumeLicenseCenter"),
		ResumeLicenseDay =$("#ResumeLicenseDay"),
		userOpenLevel =$("#userOpenLevel"),
		tips = $( ".validateTips" );

		allFields4 = $( [] ).add( ResumeLicense ).add( ResumeLicenseCenter ).add( ResumeLicenseDay ).add(userOpenLevel);
	 	
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
			
			valid = valid && checkLength( ResumeLicense, "ResumeLicense",1,30);
			valid = valid && checkLength( ResumeLicenseCenter, "ResumeLicenseCenter",1,30);
			valid = valid && checkLength( ResumeLicenseDay, "ResumeLicenseDay",1,30);
			valid = valid && checkLength( userOpenLevel, "userOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users4 tbody" ).append( "<tr>" +
		        		"<td>" + ResumeLicense.val() + "</td>" +
				         "<td>" + ResumeLicenseCenter.val() + "</td>" +
				         "<td>" + ResumeLicenseDay.val() + "</td>" + 
				         "<td>" + userOpenLevel.val() + "</td>" +
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
	 	     dialog4.dialog( 'open' );
	 	    });
		});	 
	////////////////////5번
	$(function(){
		var dialog5, form5,
	
		ResumeLanguage =$("#ResumeLanguage"),
		ResumeLanguageGrade =$("#ResumeLanguageGrade"),
		userOpenLevel =$("#userOpenLevel"),
		tips = $( ".validateTips" );

		allFields5 = $( [] ).add( ResumeLanguage ).add( ResumeLanguageGrade ).add(userOpenLevel);
	 	
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
			
			valid = valid && checkLength( ResumeLanguage, "ResumeLanguage",1,30);
			valid = valid && checkLength( ResumeLanguageGrade, "ResumeLanguageGrade",1,30);
			valid = valid && checkLength( userOpenLevel, "userOpenLevel",1,5);
			
			if ( valid ) {
		        $( "#users5 tbody" ).append( "<tr>" +
		        		"<td>" + ResumeLanguage.val() + "</td>" +
				         "<td>" + ResumeLanguageGrade.val() + "</td>" +
				         "<td>" + userOpenLevel.val() + "</td>" +
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
	 	     dialog5.dialog( 'open' );
	 	    });
		});	 
	////////////////////
	
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
						<label for="ResumeLicense">자격증명</label>
						<input type="text" name="ResumeLicense" id="ResumeLicense" class="text ui-widget-content ui-corner-all4" style="width:25%">
						<label for="ResumeLicenseCenter">발행처</label>
						<input type="text" name="ResumeLicenseCenter" id="ResumeLicenseCenter" class="text ui-widget-content ui-corner-all4" style="width:70%">
						<label for="ResumeLicenseDay">취득일자</label>
						<input type="text" name="ResumeLicenseDay" id="ResumeLicenseDay" class="text ui-widget-content ui-corner-all4" style="width:70%">
						<label for="userOpenLevel">공개여부</label>
						<input type="text" name="userOpenLevel" id="userOpenLevel" class="text ui-widget-content ui-corner-all4">
						<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
				</fieldset>
		</form>
</div>
<div id="dialog-form5" title="등록하기">
		<form>
				<fieldset>
						<label for="ResumeLanguage">외국어명</label>
						<input type="text" name="ResumeLanguage" id="ResumeLanguage" class="text ui-widget-content ui-corner-all4" style="width:25%">
						<label for="ResumeLanguageGrade">외국어수준</label>
						<input type="text" name="ResumeLanguageGrade" id="ResumeLanguageGrade" class="text ui-widget-content ui-corner-all4" style="width:70%">
						<label for="userOpenLevel">공개여부</label>
						<input type="text" name="userOpenLevel" id="userOpenLevel" class="text ui-widget-content ui-corner-all4">
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
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20">교육과정</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20" >교육기간</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20" >교육기간</td>
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
											<td></td>
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
											<td></td>
											<td></td>
											<td></td>
											<td></td>
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
											<td></td>
											<td></td>
											<td></td>
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
