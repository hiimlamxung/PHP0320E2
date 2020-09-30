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
				$("#noti").html(data);
				$("#noti").delay(3000).fadeOut();
				view();

			});
		}
	})
})