$(document).ready(function(){
	getMember();

	//Hien thi danh sach hoc vien
	function getMember(){
		$.post('server/member/list-member.php', function(datas) {
			$("#view_data").html(datas);
		});
	}

	//Xoa hoc vien
	$(document).on('click','.dele_member',function(){//Tìm hiểu hàm này(giúp trình duyệt đọc lại toàn
		// bộ phần tử,bao gồm cả phần tử của ajax. Nếu k có sẽ không thể hành động được trên các phần tử thuộc Ajax)
		var id=$(this).val();
		var check=confirm('Bạn có muốn xóa học viên này không ?');
		if(check){
			$.post('server/member/delete-member.php', {id:id}, function(datas) {
				$("#noti").html(datas);
				getMember();
			});
		}
	});
	//Hien thi view select khoa - phan Add hoc vien
	function viewKhoa(){
		$("#select-khoa").load('server/member/view-faculty.php');
	}
	viewKhoa();

	//Sua hoc vien
	$(document).on('click', '.button_edit', function(e) {

		var id_hocvien=$(this).val();
		var tenHV=$("#edit-name"+id_hocvien).val();
		var phoneHV=$("#edit-phone"+id_hocvien).val();
		var email=$("#edit-email"+id_hocvien).val();
		var address=$("#edit-address"+id_hocvien).val();
		var id_khoa=$("#edit-khoa"+id_hocvien).val();
		

		$.post('server/member/edit-member.php', {id_hocvien:id_hocvien,id_khoa:id_khoa,tenHV:tenHV,phoneHV:phoneHV,email:email,address:address}, function(datas) {
			$("#noti").html(datas);
			getMember();

		});
		e.preventDefault();
					//ẩn modal
			 var a=$(".modal").modal("hide");
			 console.log(a);

	});

	//Them hoc vien
	$("#submit_add").click(function(e) {

		e.preventDefault();
		var name=$("#name").val();
		var phone=$("#phone").val();
		var email=$("#email").val();
		var address=$("#address").val();
		var idKhoa=$("#select-khoa").val();
		if(name==''|| phone=='' || email==''|| address==''|| idKhoa==''){
			$("#noti_check").html('<span style="color:red;">Vui lòng không bỏ trống dữ liệuu</span>')
		}else{
			$.post('server/member/add-member.php', {name:name,phone:phone,email:email,address:address,idKhoa:idKhoa }, function(datas) {
				$("#noti_check").html(datas);
				$("#configform")[0].reset();
				getMember();
			});
		}

	});

	//Tim kiem hoc vien
	$("#phone_search").keyup(function() {
		var key=$("#phone_search").val();
		if(key.length>5){
			$.post('server/member/list-member.php', {key:key}, function(datas) {
				$("#view_data").html(datas);
			});
		}
	});


		$(document).on('click','.btn_edit', function(e) {
		e.preventDefault();
		id=$(this).val();
		$.post('server/member/content-modal-edit.php',{id:id}, function(data) {
			$("#modal-content").html(data);
		});
		$(".bs-example-modal-lg2").modal("show");
	
	});

		$(document).on('click','#submit-edit', function(e) {
			var id_hocvien=$("#id_edit").val();
			var tenHV=$("#name_edit").val();
			var phoneHV=$("#phone_edit").val();
			var email=$("#email_edit").val();
			var address=$("#address_edit").val();
			var id_khoa=$("#khoa_edit").val();
			e.preventDefault();
			$.post('server/member/edit-member.php',{id_hocvien:id_hocvien,tenHV:tenHV,phoneHV:phoneHV,email:email,address:address,id_khoa:id_khoa},function(data) {
				$("#noti_editmember").html(data);
				getMember();
			});

		
		});




})