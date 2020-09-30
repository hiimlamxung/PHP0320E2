$(document).ready(function(){
	$(".alert").delay(3000).slideUp();
})
function CheckName(){
	var name=document.getElementById('name').value;
	var error_name=document.getElementById('error_name');
	var ReGexName=/^[^\d+]*[\d+]{0}[^\d+]*$/;
	if(name==''||name==null){
		error_name.innerHTML="Tên không được để trống";
	}
	else if(!ReGexName.test(name)){
		error_name.innerHTML="Tên không hợp lệ, vui lòng nhập lại";
	}
	else {
		error_name.innerHTML="(*)";
		return name;
	}
}
function CheckEmail(){
	var email=document.getElementById('email').value;
	var error_email=document.getElementById('error_email');
	var ReGexEmail=/[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;
	if(email==''||email==null){
		error_email.innerHTML="Email không được để trống";
	}
	else if(!ReGexEmail.test(email)){
		error_email.innerHTML="Email không hợp lệ, vui lòng nhập lại";
	}
	else {
		error_email.innerHTML="(*)";
		return email;
	}
}
function CheckPass(){
	var passw=document.getElementById('passw').value;
	var error_passw=document.getElementById('error_passw');
	var ReGexPass=/(?=^.{6,}$)(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[^A-Za-z0-9]).*/;
	if(passw==''||passw==null){
		error_passw.innerHTML="Mật khẩu không được để trống";
	}
	else if(!ReGexPass.test(passw)){
		error_passw.innerHTML="Mật khẩu chưa đủ mạnh";
	}
	else {
		error_passw.innerHTML="(*)";
		return passw;
	}
}
function CheckRePass(){
	var passw=document.getElementById('passw').value;
	var repassw=document.getElementById('confirm_pass').value;
	var error_repassw=document.getElementById('error_repassw');
	if(repassw==''||repassw==null){
		error_repassw.innerHTML="Không được để trống";
	}
	else if(repassw!=passw){
		error_repassw.innerHTML="Chưa trùng khớp";
	}
	else {
		error_repassw.innerHTML="(*)";
		return repassw;
	}
}
function Submit_Frm(){
	if(CheckName()&&CheckEmail()&&CheckPass()&&CheckRePass()){
		return true;

	}
	else {
		alert("Yêu cầu kiểm tra lại thông tin nhập vào");
		return false;
	}

}
