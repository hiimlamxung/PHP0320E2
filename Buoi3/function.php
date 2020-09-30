<?php 

	function getHello(){
		echo "Xin chao cac ban !<br>";
	}
	getHello();
	echo "<hr>";
// Ham co tham so
	function getName($name,$age){
		echo "Thong tin ban ". $name.";tuoi = ".$age."<br>";
	}
	getName("Lam",22);
	echo "<hr>";
	//Ham k co tham so, co  tra ve
	function getInfo(){
		return "Hoc vien CNTT IT-Plus.<br>";
	}
	echo getInfo();
	echo "<hr>";
	//Ham co tham so tra ve
	function get_info($name){
			return "Xin chao cac ban".$name;
	}
	echo get_info('Hong Nhung !<br>');
	echo "<hr>";
	function get_ITPlus($info){
		echo getInfo()." duoc thanh lap nam ".$info."<br>";
	}
	get_ITPlus(2008);
	echo "<hr>";
	//Global

	$number=100;
	function getNumber(){
		global $number;
		echo ($number+10);
	}
	getNumber();
	echo "<hr>";
	echo $x =function_exists('get_info')." Hàm get_info đã được định nghĩa<br>";
	echo "<hr>";
	
	$birthday="1998-09-07"; //01/01/1970 : Mốc thời gian của ngôn ngữ lậptrình
	echo strtotime($birthday)."<br>"; //Tổng số giây từ 1/1/1970 đến $birthday;

	//Ham date()
	echo date('d-m-Y h:m:i')."<br>";
	echo date('D-m-Y',strtotime($birthday))."<br>";
	echo "Days of ".date("M")."is".date("t"); //só ngày trong tháng
	echo "<hr>";
	$str="! hoang van lam !";
	echo ucwords($str)."<br>";
	print_r(explode(" ", $str))."<br>";
	echo strpos("Hello World!","World")."<br>";
	echo strlen("Hello world!")."<br>";

 ?>