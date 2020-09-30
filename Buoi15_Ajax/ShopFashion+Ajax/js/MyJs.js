function update_cart(id){
	var qty=$('#'+id).val();

	$.post('server/update_cart.php', {id: id,qty:qty}, function(data) {
		$("#show_noti_cart").css({'color':'green','font-weight':'bold'});
				$("#show_noti_cart").html(data);
				$("show_noti_cart").delay(3000).fadeOut(3000);
				$("#table-cart").load(" #shop_cart");
				$("#sum_price").load(" .shippingbox");
				$(".option").load(" #cart-home");
	});
}
$(document).ready(function(){
	$(".alert").delay(3000).slideUp();
	
	$(".add-cart").click(function(e) {
				
					var id=$(this).val();
					console.log(id);
					e.preventDefault();
					$.ajax({
						url: 'server/order.php',
						type: 'POST',
						dataType: 'html',
						data: {id: id},
					})
					.done(function(datas) {
						$(".option").load(" #cart-home");
						alert("Thêm vào giỏ hàng thành công !");
						console.log("success");
					})
					.fail(function() {
						console.log("error");
					})				
	
			});



	$(document).on('click', '.delete_cart', function(e){

		e.preventDefault();
		var id = $(this).val();
	 	var check = confirm("Bạn có muốn xóa sản phẩm này không? ");
	 	console.log(id);

		if (check) {
			$.post('server/delete-cart.php', {id : id}, function(data){
				$("#show_noti_cart").css({'color' : 'green', 'font-weight' : 'bold'});
				$("#show_noti_cart").html(data);
				$("#show_noti_cart").delay(3000).fadeOut(3000);
				$("#table-cart").load(" #shop_cart");
				$("#sum_price").load(" .shippingbox");
				$(".option").load(" #cart-home");
			});
		}

	});  
})