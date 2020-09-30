 function Submit_frm(){

 	var a = document.getElementById("a").value;
 	var b = document.getElementById("b").value;
 	var regexA=/^\-?(\d+\.?\d*|\d*\.?\d+)$/gm;
 	var regexB=/^\-?(\d+\.?\d*|\d*\.?\d+)$/gm;
 	var checkA=regexA.test(a);
 	var checkB=regexB.test(b);
 	console.log(checkA);
 	console.log(checkB);
 	
 	if(a==""||a==null||b==""||b==null){
 		alert("Không được bỏ trống !");
 		return false;
 	}
 	else if(!checkA||!checkB){
 		alert("Bạn nhập sai số,vui lòng nhập lại lại !");
 		return false;
 	}
 	else {
 		return true;

 	}
 }

 function Submit_frm2(){
 	var kw = parseFloat(document.getElementById("kw").value);

 	if(kw<0){
 		alert("Số KW điện phải >0 !");
 		return false;
 	}
 	else
 	{
 		return true;
 	}
 }
function submit_frm3(){
	var date_in=document.getElementById('date_in').value;
	var date_out=document.getElementById('date_out').value;
	var room_type=document.getElementById('room_type').value;
	var name=document.getElementById('name').value;
	var phone=document.getElementById('phone').value;
	var email=document.getElementById('email').value;
	var note=document.getElementById('note').value;

	if(date_in==''||date_in==null||date_out==''||date_out==null||room_type==''||room_type==null||name==''||name==null||phone==''||phone==null||email==''||email==null||note==''||note==null){
	
		alert("Một trong các trường thông tin còn thiếu và bỏ trống. Quý khách vui lòng điền đầy đủ thông tin !");
		return false;
		
	} else{
		return true;
	}
}
