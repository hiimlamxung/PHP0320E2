$(document).ready(function(){
	function view(){

		$.post('server/view.php', function(data) {
			$("tbody").html(data);
		});
	}
	view();


	$(document).on('click','.delpro',function(e){
		e.preventDefault();
		var id=$(this).val();
		var check=confirm('Bạn có muốn xóa sản phẩm này không ?');
		if(check){

			$.post('server/del.php', {id:id}, function(data) {
				// $("#noti").html(data);
				// $("#noti").delay(3000).fadeOut();
				alert(data);
				view();

			});
		}
	})


	$(document).on('click', '.view_des', function(e) {
		e.preventDefault();
		var id=$(this).val();

		$.post('server/viewmodal.php', {id:id}, function(data) {
			$(".modal-dialog").html(data);
		});
	});
})