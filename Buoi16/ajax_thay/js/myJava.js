$(document).ready(function(){

	getMember();

	function getMember(){
		$.post('server/member/list_member.php', function(data){
			$("#view_data").html(data);
		});
		
	}

	$(document).on('click', '.dele_member',function(){
		var id = $(this).val();
		var check = confirm('Bạn có muốn xóa học viên này không?');
		
		if (check) {
			$.post('server/member/delete_member.php', {id : id}, function(data){
				$("#noti").html(data);
				getMember();
		 	});
		}
	});

	$("#submit_add").click(function(e){
		e.preventDefault();

		var name = $("#name").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var addres = $("#addres").val();
		var idKhoa = 1; // fix cứng

		if (name == '' || phone == '' || email == '' || addres == '' || idKhoa == '') {
			$("#noti_check").html('<span style="color: red;">Vui lòng không bỏ trống dữ liệu đầu vào!</span>');
		}else{
			$.post('server/member/add_member.php', {name: name, phone: phone, email: email, addres: addres, idKhoa : idKhoa }, function(data) {
				$("#noti_check").html(data);
				$('#configform')[0].reset();
				getMember();
			});
		}
	});

	$("#phone_search").keyup(function() {
		var key = $("#phone_search").val();
		if(key.length > 6){
			$.post('server/member/list_member.php', { key : key }, function(data){
				$("#view_data").html(data);
			});
		}
	});

})