$(function(){
	$("#userLogin").click(function() {
		$.ajax({
		url : "/ppool/userlogin.action",
		async : false,
		type : "POST",
		data : {
			userEmail : $("#userEmail").val(),
			userPasswd : $("#userPasswd").val()
		},
		success : function(data) {
			if (data == "success") {
				alert("로그인성공");
			} else {
				alert('로그인 실패');
				//$('#message').text('로그인 실패');
			}
		},
		error : function(request,status,error) {
			alert('로그인 실패');
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			//$('#message').text('로그인 실패');
		}
	});

	event.preventDefault();
	})
});