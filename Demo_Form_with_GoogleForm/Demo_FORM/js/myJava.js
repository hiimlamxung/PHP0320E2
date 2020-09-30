function checkName(){
	var name = document.getElementById('txt_name').value;
	var error_name = document.getElementById('error_name');
	var reGexName = /^[^\d+]*[\d+]{0}[^\d+]*$/;

	if (name == "" || name == null) {
		error_name.innerHTML = "Họ tên không được để trống!";
	}else if(!reGexName.test(name)){
		error_name.innerHTML = "Họ tên không hợp lệ!";
	}else{
		error_name.innerHTML = "";
		return name;
	}
}

function checkPhone(){
	var phone = document.getElementById('txt_phone').value;
	var error_phone = document.getElementById('error_phone');
	var reGexPhone = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

	if (phone == "" || phone == null) {
		error_phone.innerHTML = "SĐT không được để trống!";
	}else if(!reGexPhone.test(phone)){
		error_phone.innerHTML = "SĐT không hợp lệ!";
	}else{
		error_phone.innerHTML = "";
		return phone;
	}
}

function checkMail(){
	var email = document.getElementById('txt_email').value;
	var error_email = document.getElementById('error_email');
	var regexEmail = /[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;

	if (email == '' || email == null) {
		error_email.innerHTML = 'Email không được để trống!';
	}else if(!regexEmail.test(email)){
		error_email.innerHTML = 'Email không hợp lệ!';
	}else{
		error_email.innerHTML = '';
		return email;
	}
}

function checkPass(){
	var pass = document.getElementById('txt_pass').value;
	var error_pass = document.getElementById('error_pass');
	if (pass == '' || pass == null) {
		error_pass.innerHTML = "Mật khẩu không để trống";
	}else{
		error_pass.innerHTML = '';
		return pass;
	}
}

function check_conPass(){
	var pass = checkPass();

	var con_pass = document.getElementById('txt_conpass').value;
	var error_conpass = document.getElementById('error_conpass');
	if (con_pass == '' || con_pass == null) {

		error_conpass.innerHTML = "Mật khẩu không để trống";

	}else if(con_pass != pass){
		alert('Mật khẩu xác nhận không trùng khớp!');
	}else{
		error_conpass.innerHTML = '';
		return con_pass;
	}
}

function validition(){

	if (checkName() && checkPhone() && checkMail() && checkPass() && check_conPass()) {
		
		// var data = "<div class='table-responsive'><table class='table table-hover'><thead><tr><th>#</th><th>Họ tên</th><th>Số điện thoại</th><th>Email</th></tr></thead><tbody><tr>";

		// data += "<td>1</td>";
		// data += "<td>"+ checkName() +"</td>";
		// data += "<td>"+ checkPhone() +"</td>";
		// data += "<td>"+ checkMail() +"</td>";

		// data += "</tr></tbody></table></div>";

		// document.getElementById('view_data').innerHTML = data;
		// return false;
		return true;

	}else{
		alert('Vui lòng nhập đầy đủ thông tin trước khi đăng ký!');
		return false;
	}
}