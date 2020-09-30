<?php 

	// setcookie('name','Hoang Van Lam');


	//Khởi tạo
	setcookie('name','Hoang Van Lam',time()+35);


	//Hủy cookie
	setcookie('name','Hoang Van Lam',time()-1);



	if(isset($_COOKIE['name'])){
		echo $_COOKIE['name']. " cookie còn sống ! :D";
	}
	else echo " cookie  đã chết ! :D";
	


 ?>