$(document).ready(function(){
	$("#submit_search").click(function(e){
		e.preventDefault();
		var key=$("#search").val();
		$.get('server/search.php',{key:key}, function(data){
			$("tbody").html(data);
		});
	});

	$(document).on('click', '.del', function(e) {
		e.preventDefault();
		var id=$(this).attr('id_product');
		var check=confirm("Bạn có muốn xóa sản phẩm này không ?");
		if(check){
			$.get('server/del.php',{id:id}, function(data) {
				$("#noti").css({
					'color': 'green',
					'font-weight': 'bold'
				});
				$("#noti").html(data);
				$("#noti").delay(2000).slideUp()
				$("table").load(" table");
			});
		}
		
	});
})