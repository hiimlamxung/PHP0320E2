//$(".del_cart").click(function(e){

$("#noti_cart").delay(3000).slideUp();

$(document).on('click', '.del_cart', function(e){
	e.preventDefault();
	var id = $(this).val();

    $.post('server/delete_cart.php', {id : id}, function(data){
    	$("#noti_cart").html(data);
    	$("#table-x").load(" #table-data");
    });

});


function update_cart(id){
	var qty = $("#"+id).val();

	$.post('server/update_cart.php', {id : id, qty : qty}, function(data){
		$("#noti_cart").html(data);
    	$("#table-x").load(" #table-data");
	});

}