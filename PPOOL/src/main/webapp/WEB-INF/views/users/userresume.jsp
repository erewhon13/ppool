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
  	
	$(document).ready(function (){
		
		$('#writer').click(function(){
			$("#form123").submit()
		});
		
		$('#editIntroduction').click(function(){
			$("#").submit()
		});
		
		function mySubmit(index){
			if(index==1){
				document.form123.action="resumeintroduction.action";
				document.form123.submit();
			}
			else if(index==2){
				document.form123.action="editformresumeIntroduction.action";
				document.form123.submit();
			}
			
		}
		
		
		
	
		$(".deleteSchool").click(function(){
  			var yes=confirm('삭제하시겠습니까?');
  			if(yes){
  				var no = $(this).attr("id").substr(2);
				//$('#deleteform').submit();
  				$(location).attr('href',"resumeschooldelete.action?resumeSchoolNo="+no);
  			}
  		});
		
		$(".deleteEducation").click(function(){
  			var yes=confirm('삭제하시겠습니까?');
  			if(yes){
  				var no = $(this).attr("id").substr(2);
  				$(location).attr('href',"resumeeducationdelete.action?resumeEducationNo="+no);
  			}
  		});
		$(".deleteLicense").click(function(){
  			var yes=confirm('삭제하시겠습니까?');
  			if(yes){
  				var no = $(this).attr("id").substr(2);
  				$(location).attr('href',"resumelicensedelete.action?resumeLicenseNo="+no);
  			}
  		});
  
		$(".deleteLanguage").click(function(){
  			var yes=confirm('삭제하시겠습니까?');
  			if(yes){
  				var no = $(this).attr("id").substr(2);
  				$(location).attr('href',"resumelanguagedelete.action?resumeLanguageNo="+no);
  			}
  		});
		
		
  
		
		$(function(){
			var dialog, form,
	
			resumeUserSchool = $("#resumeUserSchool"),
			resumeUserMajor = $("#resumeUserMajor"),
			resumeMajorStartDay = $("#resumeMajorStartDay"),
			resumeMajorEndDay = $("#resumeMajorEndDay"),
			tips = $( ".validateTips" );
			allFields = $( [] ).add( resumeUserSchool ).add( resumeUserMajor ).add( resumeMajorStartDay ).add(resumeMajorEndDay);
	 	
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
	
	//수정 버튼
	$(function(){
		var editdialog, editform,
		
		resumeUserSchool = $("#resumeUserSchool"),
		resumeUserMajor = $("#resumeUserMajor"),
		resumeMajorStartDay = $("#resumeMajorStartDay"),
		resumeMajorEndDay = $("#resumeMajorEndDay"),
		tips = $( ".validateTips" );
		allFields = $( [] ).add( resumeUserSchool ).add( resumeUserMajor ).add( resumeMajorStartDay ).add(resumeMajorEndDay);
		
 	
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
	
	function addEdit(){
		 var valid = true;
		allFields.removeClass("ui-state-error");
		
		valid = valid && checkLength( resumeUserSchool, "resumeUserSchool",1,50);
		valid = valid && checkLength( resumeUserMajor, "resumeUserMajor",1,50);
		valid = valid && checkLength( resumeMajorStartDay, "resumeMajorStartDay",1,50);
		valid = valid && checkLength( resumeMajorEndDay, "resumeMajorEndDay",1,50);
		 
		if ( valid ) {
	        $( "#editformResumeSchool").submit();
	        editdialog.dialog( "close" );
	      } 
	      return valid; 
	}
	
	
	editdialog = $("#editdialog-form").dialog({
 		  autoOpen: false,
 	      height: 550,
 	      width: 400,
 	      modal: true,
 	      buttons: {
 	    	  		"수정하기":addEdit,
 	    	  		"취소": function(){
 	    	  			editdialog.dialog("close");
 	    	  		}
 	      },
 	      close: function(){
 	    //	 editform.reset();
 	    	  	allFields.removeClass("ui-state-error");
 	      }
 	});
	
 	$(".editSchool").on("click", function(event){
 		var no = $(this).attr("id").substr(2);
 		
 		var tdlist=$(this).parent().parent().find("td");//[0].innerText
 		editdialog.find("input#resumeUserSchool").val(tdlist[0].innerText);
 		editdialog.find("input#resumeUserMajor").val(tdlist[1].innerText);
 		editdialog.find("input#resumeMajorStartDay").attr('value',tdlist[2].innerText.replace('년 ','-').replace('월 ','-').replace('일',''));
 		editdialog.find("input#resumeMajorEndDay").attr('value',tdlist[4].innerText.replace('년 ','-').replace('월 ','-').replace('일',''));
 		editdialog.find("input#resumeSchoolNo").val(no);
 		editdialog.dialog( 'open' );
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
		///////수정2번 
		$(function(){
			var editdialog2, editform2,
			
			resumeEducation = $("#resumeEducation"),
			resumeEducationCenter = $("#resumeEducationCenter"),
			resumeEducationStartDay = $("#resumeEducationStartDay"),
			resumeEducationEndDay = $("#resumeEducationEndDay"),
			tips = $( ".validateTips" );
			allFields = $( [] ).add( resumeEducation ).add( resumeEducationCenter ).add( resumeEducationStartDay ).add(resumeEducationEndDay);
			
	 	
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
		
		function addEdit2(){
			 var valid = true;
			allFields.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeEducation, "resumeEducation",1,50);
			valid = valid && checkLength( resumeEducationCenter, "resumeEducationCenter",1,50);
			valid = valid && checkLength( resumeEducationStartDay, "resumeEducationStartDay",1,50);
			valid = valid && checkLength( resumeEducationEndDay, "resumeEducationEndDay",1,50);
			 
			if ( valid ) {
		        $( "#editformResumeEducation").submit();
		        editdialog2.dialog( "close" );
		      } 
		      return valid; 
		}
		
		
		editdialog2 = $("#editdialog-form2").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"수정하기":addEdit2,
	 	    	  		"취소": function(){
	 	    	  			editdialog2.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    //	 editform.reset();
	 	    	  	allFields.removeClass("ui-state-error");
	 	      }
	 	});
		
	 	$(".editEducation").on("click", function(event){
	 		var no = $(this).attr("id").substr(2);
	 		
	 		var tdlist=$(this).parent().parent().find("td");//[0].innerText
	 		editdialog2.find("input#resumeEducation").val(tdlist[0].innerText);
	 		editdialog2.find("input#resumeEducationCenter").val(tdlist[1].innerText);
	 		editdialog2.find("input#resumeEducationStartDay").attr('value',tdlist[2].innerText.replace('년 ','-').replace('월 ','-').replace('일',''));
	 		editdialog2.find("input#resumeEducationEndDay").attr('value',tdlist[4].innerText.replace('년 ','-').replace('월 ','-').replace('일',''));
	 		editdialog2.find("input#resumeEducationNo").val(no);
	 		editdialog2.dialog( 'open' );
	 		
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
		
		///////수정4번 
		$(function(){
			var editdialog4, editform4,
			
			resumeLicense = $("#resumeLicense"),
			resumeLicenseCenter = $("#resumeLicenseCenter"),
			resumeLicenseDay = $("#resumeLicenseDay"),
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
		
		function addEdit4(){
			 var valid = true;
			allFields.removeClass("ui-state-error");
			
			valid = valid && checkLength( resumeLicense, "resumeLicense",1,50);
			valid = valid && checkLength( resumeLicenseCenter, "resumeLicenseCenter",1,50);
			valid = valid && checkLength( resumeLicenseDay, "resumeLicenseDay",1,50);
			 
			if ( valid ) {
		        $( "#editformResumeLicense").submit();
		        editdialog4.dialog( "close" );
		      } 
		      return valid; 
		}
		
		
		editdialog4 = $("#editdialog-form4").dialog({
	 		  autoOpen: false,
	 	      height: 550,
	 	      width: 400,
	 	      modal: true,
	 	      buttons: {
	 	    	  		"수정하기":addEdit4,
	 	    	  		"취소": function(){
	 	    	  			editdialog4.dialog("close");
	 	    	  		}
	 	      },
	 	      close: function(){
	 	    //	 editform.reset();
	 	    	  	allFields.removeClass("ui-state-error");
	 	      }
	 	});
		
	 	$(".editLicense").on("click", function(event){
	 		var no = $(this).attr("id").substr(2);
	 		
	 		var tdlist=$(this).parent().parent().find("td");//[0].innerText
	 		editdialog4.find("input#resumeLicense").val(tdlist[0].innerText);
	 		editdialog4.find("input#resumeLicenseCenter").val(tdlist[1].innerText);
	 		editdialog4.find("input#resumeLicenseDay").attr('value',tdlist[2].innerText.replace('년 ','-').replace('월 ','-').replace('일',''));
	 		editdialog4.find("input#resumeLicenseNo").val(no);
	 		editdialog4.dialog( 'open' );
	 		
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
	 	
	 	$("#register5").on("click", function(event){
	 	     dialog5.dialog( 'open' );
	 	    });
		});	 
	
///////수정5번 
	$(function(){
		var editdialog5, editform5,
		
		resumeLanguage = $("#resumeLanguage"),
		resumeLanguageGrade = $("#resumeLanguageGrade"),
		tips = $( ".validateTips" );
		allFields4 = $( [] ).add( resumeLanguage ).add( resumeLanguageGrade );
 	
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
	
	function addEdit5(){
		 var valid = true;
		allFields.removeClass("ui-state-error");
		valid = valid && checkLength( resumeLanguage, "resumeLanguage",1,50);
		valid = valid && checkLength( resumeLanguageGrade, "resumeLanguageGrade",1,50);
		 
		if ( valid ) {
	        $( "#editformResumeLanguage").submit();
	        editdialog5.dialog( "close" );
	      } 
	      return valid; 
	}
	
	
	editdialog5 = $("#editdialog-form5").dialog({
 		  autoOpen: false,
 	      height: 550,
 	      width: 400,
 	      modal: true,
 	      buttons: {
 	    	  		"수정하기":addEdit5,
 	    	  		"취소": function(){
 	    	  			editdialog5.dialog("close");
 	    	  		}
 	      },
 	      close: function(){
 	    //	 editform.reset();
 	    	  	allFields.removeClass("ui-state-error");
 	      }
 	});
	
 	$(".editLanguage").on("click", function(event){
 		
 		var no = $(this).attr("id").substr(2);
 		
 		var tdlist=$(this).parent().parent().find("td");//[0].innerText
 		editdialog5.find("input#resumeLanguage").val(tdlist[0].innerText);
 		editdialog5.find("input#resumeLanguageGrade").val(tdlist[1].innerText);
 		editdialog5.find("input#resumeLanguageNo").val(no);
 		editdialog5.dialog( 'open' );
 		
 		
 	    });
	});			
})	
	
	
	
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
<div id="editdialog-form" title="수정하기">
		<form id="editformResumeSchool" action="editformresumeschool.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<label for="resumeUserSchool">학교</label>
					<input type="text" name="resumeUserSchool" id="resumeUserSchool"  value="" class="text ui-widget-content ui-corner-all">
					<label for="resumeUserMajor">전공</label>
					<input type="text" name="resumeUserMajor" id="resumeUserMajor" value="" class="text ui-widget-content ui-corner-all" >
					<label for="resumeMajorDay">기간</label>
					<input type="date" name="resumeMajorStartDay"  id="resumeMajorStartDay"  value="" class="text ui-widget-content ui-corner-all" >
					~<input type="date" name="resumeMajorEndDay"  id="resumeMajorEndDay"  value="" class="text ui-widget-content ui-corner-all">
					<input type="hidden" name="resumeSchoolNo" id="resumeSchoolNo" class="text ui-widget-content ui-corner-all" >
		</form>
</div>


<div id="dialog-form2" title="등록하기">
		<form id="formResumeEducation" action="formresumeeducation.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
				<label for="resumeEducation">교육과정</label>
				<input type="text" name="resumeEducation" id="resumeEducation"   class="text ui-widget-content ui-corner-all2" >
				<label for="resumeEducationCenter">교육기관명</label>
				<input type="text" name="resumeEducationCenter" id="resumeEducationCenter" class="text ui-widget-content ui-corner-all2">
				<label for="resumeEducationStartDay">교육기간</label>
				<input type="date" name="resumeEducationStartDay" id="resumeEducationStartDay" class="text ui-widget-content ui-corner-all2" >
				~<input type="date" name="resumeEducationEndDay" id="resumeEducationEndDay"  class="text ui-widget-content ui-corner-all2" > 
		</form>
</div>
<div id="editdialog-form2" title="수정하기">
		<form id="editformResumeEducation" action="editformresumeeducation.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<label for="resumeEducation">교육과정</label>
					<input type="text" name="resumeEducation" id="resumeEducation"  value="" class="text ui-widget-content ui-corner-all">
					<label for="resumeEducationCenter">교육기관명</label>
					<input type="text" name="resumeEducationCenter" id="resumeEducationCenter" value="" class="text ui-widget-content ui-corner-all" >
					<label for="resumeEducationDay">교육기간</label>
					<input type="date" name="resumeEducationStartDay"  id="resumeEducationStartDay"  value="" class="text ui-widget-content ui-corner-all" >
					~<input type="date" name="resumeEducationEndDay"  id="resumeEducationEndDay"  value="" class="text ui-widget-content ui-corner-all">
					<input type="hidden" name="resumeEducationNo" id="resumeEducationNo" class="text ui-widget-content ui-corner-all" >
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
<div id="editdialog-form4" title="수정하기">
		<form id="editformResumeLicense" action="editformresumeLicense.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<label for="resumeLicense">자격증명</label>
					<input type="text" name="resumeLicense" id="resumeLicense"  value="" class="text ui-widget-content ui-corner-all">
					<label for="resumeLicenseCenter">발행처</label>
					<input type="text" name="resumeLicenseCenter" id="resumeLicenseCenter" value="" class="text ui-widget-content ui-corner-all" >
					<label for="resumeLicenseDay">취득일자</label>
					<input type="date" name="resumeLicenseDay"  id="resumeLicenseDay"  value="" class="text ui-widget-content ui-corner-all" >
					<input type="hidden" name="resumeLicenseNo" id="resumeLicenseNo" class="text ui-widget-content ui-corner-all" >
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
<div id="editdialog-form5" title="수정하기">
		<form id="editformResumeLanguage" action="editformresumeLanguage.action" method="post">
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<label for="resumeLanguage">외국어명</label>
					<input type="text" name="resumeLanguage" id="resumeLanguage"  value="" class="text ui-widget-content ui-corner-all">
					<label for="resumeLanguageGrade">외국어수준</label>
					<input type="text" name="resumeLanguageGrade" id="resumeLanguageGrade" value="" class="text ui-widget-content ui-corner-all" >
					<input type="hidden" name="resumeLanguageNo" id="resumeLanguageNo" class="text ui-widget-content ui-corner-all" >
		</form>
</div>




<div>
<form id="deleteform" action="/ppool/resumeschooldelete.action" method="POST">
			<input type="hidden" name="resumeSchoolNo" value="${resumeSchool.resumeSchoolNo }"/>
			<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
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
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">학교</td>
											<td style="width:15%;" align="center"  bgcolor="F8F7F7" height="30" width="20">전공</td>
											<td style="width:50%;" align="center"  bgcolor="F8F7F7" height="30" width="20" colspan="3">기간</td>
											<td style="width:10%;" align="center"  bgcolor="F8F7F7" height="30" width="20"></td>
										</tr>
								</thead>
								
								<c:forEach var="resumeSchool" items="${resumeSchools}">
									
											<tr>
												<td>${resumeSchool.resumeUserSchool}
													<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
													<input type="hidden" id="" name="resumeSchoolNo" value="${resumeSchool.resumeSchoolNo}"/>
												</td>
												<td>${resumeSchool.resumeUserMajor}</td>
												<f:formatDate value="${resumeSchool.resumeMajorStartDay}" pattern="yyyy년 MM월 dd일" var="day1" />
												<f:formatDate value="${resumeSchool.resumeMajorEndDay}" pattern="yyyy년 MM월 dd일" var="day2" />
												<td>${day1}</td><td>~</td>
												<td>${day2}</td>
													<c:if test="${resumeSchool ne null}">
														<td>
															<input type="button" class="editSchool"  id="s1${resumeSchool.resumeSchoolNo}" value="수정">
															<input type="button" class="deleteSchool" id="s1${resumeSchool.resumeSchoolNo}" value="삭제">
														</td>
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
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20"></td>
										</tr>
								</thead>
									<c:forEach var="resumeEducation" items="${resumeEducations}">
										<tr>
											<td>${resumeEducation.resumeEducation}</td>
											<td>${resumeEducation.resumeEducationCenter}</td>
											<f:formatDate value="${resumeEducation.resumeEducationStartDay}" pattern="yyyy년 MM월 dd일" var="day1" />
											<f:formatDate value="${resumeEducation.resumeEducationEndDay}" pattern="yyyy년 MM월 dd일" var="day2" />
											<td>${day1}</td><td>~</td>
											<td>${day2}</td>
											
													<c:if test="${resumeEducation ne null}">
																<td>
																	<input type="button" class="editEducation"  id="s1${resumeEducation.resumeEducationNo}" value="수정">
																	<input type="button" class="deleteEducation" id="s1${resumeEducation.resumeEducationNo}" value="삭제">
																</td>
													</c:if>
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
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">자격증명</td>
											<td style="width:25%;" align="center"  bgcolor="F8F7F7" height="30" width="20">발행처</td>
											<td style="width:30%;" align="center"  bgcolor="F8F7F7" height="30" width="20">취득일자</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20"></td>
										</tr>
								</thead>
								<c:forEach var="resumeLicense" items="${resumeLicenses}">
										<tr>
											<td>${resumeLicense.resumeLicense}</td>
											<td>${resumeLicense.resumeLicenseCenter}</td>
											<f:formatDate value="${resumeLicense.resumeLicenseDay}" pattern="yyyy년 MM월 dd일" var="day1" />
											<td>${day1}</td>
											 	<c:if test="${resumeLicense ne null}">
														<td>
																<input type="button" class="editLicense"  id="s1${resumeLicense.resumeLicenseNo}" value="수정">
																<input type="button" class="deleteLicense"  id="s1${resumeLicense.resumeLicenseNo}" value="삭제">
														</td>
												</c:if>
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
											<td style="width:40%;" align="center"  bgcolor="F8F7F7" height="30" width="20">외국어명</td>
											<td style="width:40%;" align="center"  bgcolor="F8F7F7" height="30" width="20">수준</td>
											<td style="width:20%;" align="center"  bgcolor="F8F7F7" height="30" width="20"></td>
										</tr>
								</thead>
								<c:forEach var="resumeLanguage" items="${resumeLanguages}">
										<tr>
											<td>${resumeLanguage.resumeLanguage}</td>
											<td>${resumeLanguage.resumeLanguageGrade}</td>
												<c:if test="${resumeLanguage ne null}">
														<td>
																<input type="button" class="editLanguage"  id="s1${resumeLanguage.resumeLanguageNo}" value="수정">
																<input type="button" class="deleteLanguage" id="s1${resumeLanguage.resumeLanguageNo}"  value="삭제">
														</td>
												</c:if>
									   </tr>
									 		 
								 </c:forEach>
							</table>		
					</div>
					 
					<hr border-top:1px solid />
					<td style="padding-bottom:3px; float:left;" >
					2.자기소개서
					</td>
			<c:set var="resumeIntroduction" value="${resumeIntroductions}"/>		
				<form id="form123" name="form123" method="post" >
					<input type="hidden" name="userNo" value="${loginuser.userNo}"/>
					<div style="margin-top:10px">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td bgcolor="#EEF8F3" style="padding:8px 0 8px 0" align="center" >
										<textarea name="resumeIntroduction"  id="resumeIntroduction" 
														style="width:665px; height:200px; font-size:9pt;
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
								<c:choose>
									<c:when test="${resumeIntroduction.resumeIntroduction eq null }">
										<input type="button" value="등록하기" onclick="mySubmit(1);" style="cursor: pointer;">
									</c:when>
									<c:otherwise>
										<input type="button" value="수정하기"  onclick="mySubmit(2);" style="cursor: pointer;">
									</c:otherwise>
								</c:choose>
									<input type="button" value="취소" onclick="location.href='home.action';">
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
				
</body>
</html>
