
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
function Submit_Quantri(){
	var tk=document.getElementById('tk').value;
	var mk=document.getElementById('mk').value;
	if(tk==''||tk==null||mk==''||mk==null){
		alert('Tài khoản và mật khẩu không được để trống !');
		return false;
	}else{
		return true;
	}
}