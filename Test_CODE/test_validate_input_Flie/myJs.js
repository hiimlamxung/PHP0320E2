function Blurname(){
	var name=document.getElementById('name').value;
	var spanname=document.getElementById('spanname');
	var regexName=/^[^\d+]*[\d+]{0}[^\d+]*$/; //
	if(name==''||name==null){
		spanname.innerHTML="Họ tên không được để trống";
	}
	else if(!regexName.test(name)){
		spanname.innerHTML="Nhập sai họ tên";
		
	}
	else {
		spanname.innerHTML="(*)";
		return name;
	}
}
function Blurphone(){
	var phone=document.getElementById('phone').value;
	var spanphone=document.getElementById('spanphone');
	var regexPhone=/((09|03|07|08|05)+([0-9]{8})\b)/g;
	if(phone==''||phone==null){
		spanphone.innerHTML="Số điện thoại không được để trống";
	}	
	else if(!regexPhone.test(phone)){
		spanphone.innerHTML="Số điện thoại sai"
	}
	else {
		spanphone.innerHTML="(*)";
		return phone;
	}

}
function Bluremail(){
	var email=document.getElementById('email').value;
	var spanemail=document.getElementById('spanemail');
	var regexEmail=/[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm;
	if(email==''||email==null){
		spanemail.innerHTML="Email không được để trống";
	}
	else if(!regexEmail.test(email)){
		spanemail.innerHTML="Email không đúng định dạng"
	}
	else {
		spanemail.innerHTML="(*)";
		return email;
	}

}
function Blurpass(){
	var pass=document.getElementById('pass').value;
	var spanpass=document.getElementById('spanpass');
	var regexPass=/(?=^.{6,}$)(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[^A-Za-z0-9]).*/; //Mật khẩu ít nhất 6 ký tự,phải có ít nhất 1 chữ Hoa, 1 số, 1ký tự đb.
	if(pass==''||pass==null){
		spanpass.innerHTML="Mật khẩu không được để trống";
	}
	else if(!regexPass.test(pass)){
		spanpass.innerHTML="Mật khẩu chưa đủ mạnh"
	}
	else {
		spanpass.innerHTML="(*)";
		return pass;
	}

}
function Blurrepass(){
	var repass=document.getElementById('repass').value;
	var pass=document.getElementById('pass').value;
	var spanrepass=document.getElementById('spanrepass');
	if (repass==''||repass==null) {
		spanrepass.innerHTML="Không được bỏ trống";
	}
	else if(repass!=pass){
		spanrepass.innerHTML="Mật khẩu nhập lại chưa đúng";
	}
	else{
		spanrepass.innerHTML="(*)";
		return repass;
	}
}
function validate_files(){
	var inputfile=document.getElementById("filePHOTO");
	var file_error=document.getElementById("file_error");
	var count=inputfile.files.length;
	var memory=0;
	for (var i = 0; i <count; i++) {
		var file_size = inputfile.files[i].size;
		memory +=file_size;
		if(file_size>500000) {
			file_error.innerHTML='Mỗi ảnh phải có kích thước nhỏ hơn 500kb ';
			return false;
		}else{
			file_error.innerHTML='*';
		}
	}
	if(memory>10000000){
		file_error.innerHTML="Tổng kích thước tất cả ảnh phải nhỏ hơn 10Mb";
		return false;
	}else{
			file_error.innerHTML='*';
		}
	for (var i = 0; i <count; i++) {
					var file_type =inputfile.files[i].type;
					if(file_type=='image/jpeg' || file_type=='image/webp' || file_type=='image/png'){
						$("#file_error").innerHTML='*';
					}else{
						$("#file_error").innerHTML='Lỗi! Định dạng ảnh phải là đuôi JPG, PNG, hoặc WEBP';
						return false;
					}
				}
	return true;
}
function Get(){
	var show_name=document.getElementById('show_name');
	var show_phone=document.getElementById('show_phone');
	var show_email=document.getElementById('show_email');
	var show_pass=document.getElementById('show_pass');
	
	if(Blurname() && Blurphone()&&Bluremail()&&Blurpass()&&Blurrepass()&&validate_files()){
		show_name.innerHTML=Blurname();
		show_phone.innerHTML=Blurphone();
		show_email.innerHTML=Bluremail();
		show_pass.innerHTML=Blurpass();
		document.getElementById('table').style.display='block';

	}
	else{
		alert('Dữ liệu nhập vào chưa đúng, yêu cầu kiểm tra lại !');
		return false;

	}
	
}