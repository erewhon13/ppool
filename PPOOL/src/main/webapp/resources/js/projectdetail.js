$(document).ready(function (){
	$('#list').click(function(){
		$(location).attr("href", "/ppool/projectlist.action");
	});
	
	$('#delete').click(function(){
		var result = confirm('삭제 하시겠습니까?');
		if(result){
			$('#deleteform').submit();
		}
	});
	
	
	$("#commentregister").click(function(event) {
		
		if( $('#commentcontent').val().trim() == "" ){
			alert("댓글을 입력하고 등록하세요")
			$('#commentcontent').focus();
			return;
		}
		
		var result = confirm('댓글을 등록하시겠습니까?');
		if(result) {
			var form = $('#commentform').serialize();
			
			$.ajax({
				url : "/ppool/commentregister.action",
				async : true,
				method : "POST",
				data : form,
				success : function(result) {
					if (result.indexOf("<success/>") == -1) {
						alert('입력 실패!');
						console.log(data);
					} else { 
						alert('입력 성공!');
						$('#commentcontent').val("");
						var tr = $(result.substr(result.indexOf("<tr")));
						$( "#tab" ).append(tr);
						$('.nocomment').css("display", "none");
						
						addEditListener(tr.find(".ed_bt"));
						okListener(tr.find(".ok_bt"));
						cancelListener(tr.find(".ca_bt"));
						deleteListener(tr.find(".de_bt"));
						commentReplyListener(tr.find(".re_bt"));
					}
				},
				error : function(xhr, status, error) {
					alert('입력이 에러');
				}
			});//ajax
        }
	});	//click 함수
	
	function addEditListener(target){
		$(target).click(function(){
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
	}
	function okListener(target){
		$(target).click(function(){
			var result = confirm('댓글을 수정하시겠습니까?');
			if(result) {
				var no = $(this).attr("id").substr(2);
				var form = $('#fo'+no).serialize();
				$.ajax({
					url : "/ppool/commentupdate.action",
					async : true,
					method : "POST",
					data : form,
					success : function(result) {
						if (result != "update") {
							alert('수정 실패!');
							console.log(data);
						} else { 
							alert('수정 성공!');
							$('#a'+no).html($('#b'+no).val().replace(/\n/g, "<br/>"));
							
							$('#a'+no).css('display', 'block');
							$('#aa'+no).css('display', 'block');
							$('#b'+no).css('display', 'none');
							$('#bb'+no).css('display', 'none');
							
						}
					},
					error : function(xhr, status, error) {
						alert('에러발생!!');
					}
				});//ajax
			}
		})
	}
	
	function cancelListener(target){
		$(target).click(function(){
			var no = $(this).attr("id").substr(2);
			$('#b'+no).val($("#a"+no).text().trim());
		
			$('#a'+no).css('display', 'block');
			$('#aa'+no).css('display', 'block');
			$('#b'+no).css('display', 'none');
			$('#bb'+no).css('display', 'none');
		})
	}
	
	function deleteListener(target){
		$(target).click(function(){
			var result = confirm('댓글을 삭제하시겠습니까?');
			if(result) {
				var no = $(this).attr("id").substr(2);
				var form = $('#fo'+no).serialize();
				
				$.ajax({
					url : "/ppool/commentdelete.action",
					async : true,
					method : "POST",
					data : form,
					success : function(result) {
						if (result != "delete") {
							alert('삭제 실패!');
							console.log(data);
						} else { 
							alert('삭제 성공!');
							var tr = $(result.substr(result.indexOf("<tr")));
							$('#tr'+no).css("display", "none");
						}
					},
					error : function(xhr, status, error) {
						alert('에러발생');
					}
				});//ajax
			}
		})
	}
	
	function commentReplyListener(target){
		$(target).click(function(){
			alert('미구현')
		})
	}

	addEditListener(".ed_bt");
	okListener(".ok_bt");
	cancelListener(".ca_bt");
	deleteListener(".de_bt");
	commentReplyListener(".re_bt");
});

