$(document).ready(function (){
	$('#list').click(function(){
		$(location).attr("href", "/ppool/projectlist.action");
	});
	$('#modify').click(function(){
		$(location).attr("href", "/ppool/projectmodify.action?projectNo=${project.projectNo}");
	});
	$('#delete').click(function(){
		var result = confirm('삭제 하시겠습니까?');
		if(result){
			$('#deleteform').submit();
		}
	});
	
	
	$("#commentregister").click(function() {
		
		if( $('#commentcontent').val().trim() == "" ){
			alert("댓글을 입력하고 등록하세요")
			$('#commentcontent').focus();
			return;
		}
		
		var form = $('#commentform').serialize();
		
		$.ajax({
			url : "/ppool/commentregister.action",
			async : true,
			method : "POST",
			data : form,
			success : function(result) {
				/* if (result != "success") {
					alert('입력 실패!');
					console.log(data);
				} else { */
					alert('입력 성공!');
					$('#commentcontent').val("");
					$( "#tab" ).append(result);
					$('.nocomment').css("display", "none");
				//}
			},
			error : function(xhr, status, error) {
				alert('입력이 에러');
			}
		});//ajax
	});	//click 함수
	
	$('.ed_bt').click(function(){
		var no = $(this).attr("id").substr(2);
		var hei = $('#a'+no).height();

		if(hei < 95){
			$('#b'+no).attr('rows', 5);
		}
		if(hei >= 95){
			$('#b'+no).height(hei);
		}
		
		$('#a'+no).css('display', 'none');
		$('#aa'+no).css('display', 'none');
		$('#b'+no).css('display', 'block');
		$('#bb'+no).css('display', 'block');
	})
	
	
});
