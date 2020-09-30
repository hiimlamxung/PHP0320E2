<?php 
// $i=10;
// $dem=0;
// while($i>=1){
// 	$dem+=1;
// 	echo $dem.".xin chao <br>";

// 	$i--; // $i +=1;
// }


// for($i=0;$i<20;$i++){
// echo $i."IT-Plus<br>";
// }


// $n=1;
// do{
// 	$n++;
// echo"So n sau khi tang len 1 don vi la:".$n."<br>";
// }while ($n<10)



// for($i=0;$i<20;$i++){
// 	if($i==10){
// 		break;
// 	}
// 	else{
// 		echo $i."IT-Plus<br>";
// 	}
// }

// for($i=0;$i<20;$i++){
// 	if($i==10){
// 		echo "Hoang Van Lam<br>";
// 		continue;
// 	}
// 	else{
// 		echo $i."IT-Plus<br>";
// 	}
// }

//Mang so
// $arr1=[1,3,5,10];
// $arr2=[1,'Lam',5,'03987282441'];
// $arr3=['Lam','Ha Noi','03987282441'];
// $arr4=array(1,'Hà Nội','0398762441');

// echo $arr3[1];

//Hien thi cau truc mang
// echo"<pre>";
// print_r($arr3);
// echo"</pre>";

//Thay doi chi muc cua mang
// $arr5=array(10=>"Lam",'city'=>"Ha Noi","hiimlamxung@gmail.com");
// echo"<pre>";
// print_r($arr5);
// echo"</pre>";




// $arr6=array(
// 	10 => 'Tung',
// 	'city' => 'Ha Noi',
// 	'email' => 'hiimlamxung@gmail.com'
// );
// echo $arr6[10]."<br>";
// echo $arr6['city']."<br>";
// echo $arr6['email']."<br>";



$arr7=array(
	array('name' => 'Lam','email' => 'hiimlamxung@gmail.com', 'age' => '22'),
	array('name' => 'Tung','email' => 'tung@gmail.com', 'age' => '25'),
	array('name' => 'Minh','email' => 'minh@gmail.com', 'age' => '35'),

);

// echo $arr7[2]['email']."<br>";

// $arr8=array(
// 	array('Lam',22,'0398762441'),
// 	array('Tung',37,'0398728332'),
// 	array('Minh',45,'0372839243'),

// );
// echo"<pre>";
// print_r($arr8);
// echo"</pre>";

// echo $arr8[2][0]."<br><br><br><br>";


// for($i=0;$i<3;$i++){
// 	for($j=0;$j<3;$j++){
// 		echo $arr8[$i][$j]."<br>";
// 	}
// }


// echo"<pre>";
// print_r($arr7);
// echo"</pre>";

// foreach ($arr7 as $key => $value) {
// 	echo $value['name']." ".$value['email']." ".$value['age']."<br>";
	
// }


// // echo"<pre>";
// // print_r($arr7);
// // echo"</pre>";



// // //Mang da chieu
// $itPlus= array(
// 	'hocVien' => array(
// 		'sv01' => array(
// 			'name' => 'Nguyen Van Nam',
// 			'phone' => '0392839221',
// 			'email' => 'Nam@gmail.com'
// 		),

// 		'sv02' => array(
// 			'name' => 'Nguyen Van Minh',
// 			'phone' => '0392839233',
// 			'email' => 'Minh@gmail.com'
// 		)

// 	),
// 	'giaoVien' => array(
// 		'gv01' => array(
// 			'name' => 'Dang Thai Son',
// 			'phone' => '0392839993',
// 			'email' => 'Son@gmail.com'
// 		),
// 		'gv02' => array(
// 			'name' => 'Dang Binh Quang',
// 			'phone' => '0392833233',
// 			'email' => 'Quang@gmail.com'
// 		),
// 	)



// );
// echo"<pre>";
// print_r($itPlus);
// echo"</pre>";
// echo $itPlus['hocVien']['sv02']['email']."<br>";
// //In ra thong tin cua tat ca moi nguoi
// foreach ($itPlus as $chucVu => $value) {
	
// 	foreach ($value as $key => $info) {
// 		echo $info['name']." ".$info['phone']." ".$info['email']."<br>";
// 	}

// }
// echo "<br><br>";
// ////In ra thong tin cua hoc vien
// foreach ($itPlus as $chucVu => $value) {
// 	if($chucVu=='hocVien'){
// 	foreach ($value as $key => $info) {
// 		echo $info['name']." ".$info['phone']." ".$info['email']."<br>";
// 	}
// }
// }
// echo "<br><br>";
// echo count($arr7);

// echo "<br><br>";
// $sort = array(1,'a' ,3,'c',5,'b');
// $rs=sort($sort);

// echo"<pre>";
// print_r($sort);
// echo"</pre>";

$str="Tung*25*HaNoi";
$rs_str=explode("*", $str);
echo"<pre>";
print_r($rs_str);
echo"</pre>";



 ?>