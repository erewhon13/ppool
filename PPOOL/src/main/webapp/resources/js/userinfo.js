$(function(){
	$("#userLogin").click(function() {
		$.ajax({
		url : "/ppool/userlogin.action",
		async : true,
		method : "POST",
		data : {
			userEmail : $("#userEmail").val(),
			userPasswd : $("#userPasswd").val()
		},
		success : function(data) {
			if (!data) {
				alert('로그인 실패');
				console.log(data);
			} else {
				$(".nonelogined").css("display","none");
				$(".logined").css("display","block");
				$("#mid").html('<a href="/ppool/userinfo.action?userNo=' + data.userNo + '">' + data.userName + '</a>');
				console.log(data);
			}
		},
		error : function(request,status,error) {
			alert('로그인 실패');
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			//$('#message').text('로그인 실패');
		}
	});

	event.preventDefault();
	});
	
});