$(document).ready(function (){
	$('#emailSelect').change(function(){
		if($('#emailSelect').val() == "etc"){
			$('#email2').val("");
			$('#email2').attr("readonly", false);
			$('#email2').focus();
		}else if($('#emailSelect').val() != "etc"){
			$('#email2').val($('#emailSelect').val());
			$('#email2').attr("readonly", true);
			$('#email1').focus();
		}
	});
	$('#writer').click(function(){
		checkFormAndSubmit();
	});
	$('#rewriter').click(function(){
		alert("다시쓰기 미구현");
	});
	$('#cancel').click(function(){
		$(location).attr("href", "/ppool/projectlist.action");
	});
	
});
	
	function checkFormAndSubmit(){
		var r = /^[0-9]+$/;
		var e = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
		
		if( $('#projecttitle').val().trim() == "" ){
			alert("제목을 입력하세요")
			$('#projecttitle').focus();
			return;
		}
		if( $('#phone1').val().trim() == "" ){
			alert("전화번호를 입력하세요")
			$('#phone1').focus();
			return;
		}
		if( $('#phone2').val().trim() == "" ){
			alert("전화번호를 입력하세요")
			$('#phone2').focus();
			return;
		}
		if(!r.test( $('#phone2').val().trim())  ){
			alert("숫자만 입력하세요2")
			$('#phone2').focus();
			return;
		}
		if( $('#phone3').val().trim() == "" ){
			alert("전화번호를 입력하세요")
			$('#phone3').focus();
			return;
		}
		if( !r.test( $('#phone3').val().trim())  ){
			alert("숫자만 입력하세요3")
			$('#phone3').focus();
			return;
		}
		
		if( $('#email1').val().trim() == "" ){
			alert("이메일을 입력하세요")
			$('#email1').focus();
			return;
		}
		if( $('#email2').val().trim() == "" ){
			alert("이메일을 입력하세요")
			$('#email2').focus();
			return;
		}
		var email = $('#email1').val().trim() +'@'+$('#email2').val().trim();
		if( !e.test(email) ){
			alert("이메일의 형식이 바르지 않습니다.")
			$('#email1').focus();
			return;
		}
		
		if( $('#projectcontent').val().trim() == "" ){
			alert("상세 설명을 입력하세요")
			$('#projectcontent').focus();
			return;
		}
		if( $('#projectteamcount').val().trim() == "" ){
			alert("모집인원 입력")
			$('#projectteamcount').focus();
			return;
		}
		if( !r.test( $('#projectteamcount').val().trim())  ){
			alert("숫자만 입력하세요")
			$('#projectteamcount').focus();
			return;
		}
		if( $('#projectexpire').val().trim() == "" ){
			alert("모집 마감일을 입력")
			$('#projectexpire').focus();
			return;
		}
		if( $('#projectstartday').val().trim() == "" ){
			alert("프로젝트 시작일을 입력")
			$('#projectstartday').focus();
			return;
		}
		if( $('#projectendday').val().trim() == "" ){
			alert("프로젝트 종료일을 입력")
			$('#projectendday').focus();
			return;
		}
		$('#submitForm').submit();
		return;
	}