function checkName(){
	var name = document.getElementById('name').value;
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
	var phone = document.getElementById('phone').value;
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

function checkEmail(){
	var email = document.getElementById('email').value;
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
function validation(){
	if(checkName()&&checkEmail()&&checkPhone()){
		return true;
	}
	else
	{
		alert("Không thành công, vui lòng kiểm tra dữ liệu nhập vào !");
		return false;
	}


}