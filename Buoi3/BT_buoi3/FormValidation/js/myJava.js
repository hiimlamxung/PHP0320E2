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
function checkAddress(){
	var address=document.getElementById('txt_address').value;
	var error_address=document.getElementById('error_address');
	if(address==""||address==null){
		error_address.innerHTML="Địa chỉ không được để trống";
	}
	else error_address.innerHTML="";
	return address;
	
}


function validation(){
	
	var monhoc0=document.getElementsByName('monhoc[]')[0];
	console.log(monhoc0);
	var monhoc1=document.getElementsByName('monhoc[]')[1];
	console.log(monhoc1);
	var monhoc2=document.getElementsByName('monhoc[]')[2];
	console.log(monhoc2);
	var monhoc3=document.getElementsByName('monhoc[]')[3];
	console.log(monhoc3);
	var monhoc4=document.getElementsByName('monhoc[]')[4];
	console.log(monhoc4);
	if(monhoc0.checked==false&&monhoc1.checked==false&&monhoc2.checked==false&&monhoc3.checked==false&&monhoc4.checked==false){
	alert('Bạn chưa chọn môn đăng ký,yêu cầu chọn ít nhất 1 môn');
		return false;
	}
	else if(checkName() && checkPhone() && checkMail() && checkAddress()){
		alert('Đăng ký thành công');
		return true;
	}
	else {
		alert("Yêu cầu kiểm tra lại dữ liệu nhập vào");
		return false;
	}
}



// function validition(){

// 	if (checkName() && checkPhone() && checkMail() && checkPass() && check_conPass()) {
		
// 		var data = "<div class='table-responsive'><table class='table table-hover'><thead><tr><th>#</th><th>Họ tên</th><th>Số điện thoại</th><th>Email</th></tr></thead><tbody><tr>";

// 		data += "<td>1</td>";
// 		data += "<td>"+ checkName() +"</td>";
// 		data += "<td>"+ checkPhone() +"</td>";
// 		data += "<td>"+ checkMail() +"</td>";

// 		data += "</tr></tbody></table></div>";

// 		document.getElementById('view_data').innerHTML = data;
// 		return false;

// 	}else{
// 		alert('Vui lòng nhập đầy đủ thông tin trước khi đăng ký!');
// 		return false;
// 	}
// }