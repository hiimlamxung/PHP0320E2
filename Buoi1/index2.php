<?php
echo'<h1>Dấu nháy đơn</h1> ';
echo "Dấu nháy kép <br>";
echo 1998;
echo "<br>";


$name="Lam";
$age=22;
$point=9.8;

echo $name."<br>";

echo $age."<br>";

echo $point."<br>";




$x="y";
$$x="z";
echo $x."<br>";//y
echo $y."<br>";//z
echo $$x."<br>";//$y=z



$check="Nam";
$number="100";
$number2=100;
echo gettype($check)."<br>";
echo gettype($number)."<br>";
echo gettype($number2)."<br>";



$a=12.6;
$b=(int)$a;
echo gettype($a)."<br>";
echo gettype($b)."<br>";

echo settype($a,"integer")."<br>"; //a=12. Thành công,nên kết quả trả về 1.
echo gettype($a)."<br>"; //integer
echo " Hello tớ là Lâm"."<br>";

unset($b);
echo $b."<br>"; // sẽ bị lỗi vì đã unset biến b, nên $b k tồn tại

echo isset($a)."<br>";

echo empty($b)."<br>";



define("Pi", 3.14);
echo Pi."<br>";

echo __FILE__."<br>";
echo __LINE__."<br>";



$d=10;
$e=20;
$f=15;
$max=($d>$e) ? $d : $e;
$max=($max>$f) ? $max : $f;
echo $max." LÀ số lớn nhất"."<br>";


$number3=10;
$number4=20;
$number5=5;
$number_me=($number3>$number4||$number4<$number5);
echo $number_me."<br>";
if($number3<$number4){
	echo "Dung"."<br>";
}
else echo "Sai"."<br>";
?>

<?php 
	$ThuNgay=3;
	switch ($ThuNgay) {
		case '2':
			echo "Thu 2";
			break;
		case '3':
			echo "Thu 3";
			break;
		
		default:
			echo "Day k phai la thu ngay !";
			break;
	}
 ?>
 <?php 
 $st="LamHoang";
 echo $st[0]."<br>";
 echo $st[1]."<br>";
 echo $st[2]."<br>";



  ?>