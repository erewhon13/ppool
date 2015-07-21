$(function(){
	$("#userLogin").click(function() {
		$.ajax({
		url : "userlogin.action",
		async : false,
		type : "post",
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
		error : function() {
			alert('로그인 실패');
			//$('#message').text('로그인 실패');
		}
	});

	event.preventDefault();
	})
});