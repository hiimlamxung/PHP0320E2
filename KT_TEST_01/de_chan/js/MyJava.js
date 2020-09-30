$(document).ready(function(){
	function view(){
		$.post('server/view.php',function(data) {
			$("tbody").html(data);
		});
	}
	view();

	$("#submit_search").click(function(e) {
		e.preventDefault();
		var key=$("#key").val();
		$.post('server/search.php', {key:key}, function(data) {
			$("tbody").html(data);
		});
	});

	$(document).on('click', '.btn-danger', function(e) {
		e.preventDefault();
		var id=$(this).val();
		var check=confirm('Bạn có muốn xóa sản phẩm này không ?');
		if(check){
			$.get('server/del.php',{id:id}, function(data) {
			$("#noti").css({
				'color': 'green',
				'font-weight': 'bold'
			});
			$("#noti").html(data);
			$("#noti").delay(2000).fadeOut(3000);

			view();
		});
		}
	});

})