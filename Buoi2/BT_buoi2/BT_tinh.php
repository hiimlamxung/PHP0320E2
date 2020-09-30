<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tính</title>
</head>
<body>
	<?php 
	echo"Bài 1<br>";
	$dem1=0;
	for($i=1;$i<=50;$i++){
		$dem1=$dem1+$i;
	}
	echo "Tổng các số nguyên từ 1 đến 50 là :".$dem1."<br>";
	echo "<br><br><br>";
	echo "Bài 2: <br>";
	echo "Các số lẻ trong khoảng 1-30 là: ";
	for($i=1;$i<=30;$i++){
		if($i%2!=0){
			echo $i." ";
		}
	}
	echo "<br>";
	echo "Tổng các số nguyên tố trong khoảng 30-50 là: ";
	$dem_nt=0;
	for($i=30;$i<=50;$i++){
		$check=true;
		for($j=2;$j<=sqrt($i);$j++){
			if($i%$j==0){
				$check=false;
				break;
			}
			else $check=true;
		}
		if($check==true){
			$dem_nt=$dem_nt+$i;
		}
	}
	echo $dem_nt;
	echo "<br>";
	echo "<br><br><br>";
	echo "Bài3 : <br>";
	$dem_tongle=$dem_tongchan=0;
	for($i=1;$i<=20;$i++){
		if($i%2==0){
			$dem_tongchan=$dem_tongchan+$i;
		}
	}
	for($i=1;$i<=20;$i++){
		if($i%2!=0){
			$dem_tongle=$dem_tongle+$i;
		}
	}
	echo "Tổng các số chẵn trong khoảng 1-20 là: ".$dem_tongchan." Tổng các số lẻ trong khoảng 1-20 là: ".$dem_tongle."<br>";
	if($dem_tongle>$dem_tongchan){
		echo "Tổng các số lẻ lớn hơn tổng các số chẵn.".$dem_tongle.">".$dem_tongchan ."<br>";
	}
	else echo "Tổng các số chẵn lớn hơn tổng các số lẻ.".$dem_tongchan.">".$dem_tongle ."<br>";
	echo "<br><br><br>";
	echo "Bài 4:<br>";
	$x=rand(10,50);
	echo"Số x được lấy trong khoảng 10-50 là ".$x."<br>";
	if($x%2!=0){
		$m=($x+1)/2;
		echo "x là số lẻ, m = ".$m."<br>";
	}
	else {
		$m=($x/2)+1;
		echo "x là số chẵn, m = ".$m."<br>";
	}
	$F1=0;
	for($i=1;$i<=$x;$i++){
		if($i%2!=0){
			$F1=$F1+$i;
		}
	}
	echo "Tổng các số lẻ từ 1 đến ".$x." là: <br> F1=".$F1."<br>";
	$F2=(($x-1)*2+$m);
	echo "F2= (x-1)*2 + m= ".$F2."<br>";
	$F=$F1+$F2;
	echo "F= F1+F2= ".$F."<br>";
	echo "<br><br><br>";
	echo "Bài 5:<br>";
	$n=rand(1,10);
	echo "số n lấy trong khoảng 1-10 là: ".$n."<br>";
	$dem_giaithua=1;
	for($i=1;$i<=$n;$i++){
		$dem_giaithua=$dem_giaithua*$i;
	}
	echo "giai thừa của ".$n."là: ".$dem_giaithua."<br>";
	function kt_nt($n){
		if($n<2){
			return false;
		}
	
			for($i=2;$i<=sqrt($n);$i++){
				if($n%$i==0){
					return false;
				}
			}
		
		return true;
	}
	kt_nt($n);
	if(kt_nt($n)){
		echo $n." Là số nguyên tố."."<br>";
	}
	else echo $n." Không phải là số nguyên tố."."<br>";
	echo "<br><br><br>";
	echo "Bài 6: <br>";
	$n=rand(1,100);
	echo "Số n được lấy ngẫu nhiên từ 1-100 là: ".$n."<br>";
	$dem_sole=$dem_sochan=$dem_sont=0;
	for($i=1;$i<=$n;$i++){
		if($i%2==0){
			$dem_sochan++;
		}
	}
	for($i=1;$i<=$n;$i++){
		if($i%2!=0){
			$dem_sole++;
		}
	}
	echo "Có ".$dem_sole." số lẻ và ".$dem_sochan." số chẵn<br>";
	for($i=2;$i<=$n;$i++){
		$check=true;
		for($j=2;$j<=sqrt($i);$j++){
			if($i%$j==0){
				$check=false;
				break;
			}
			else $check=true;
		}
		
		if($check==true){
			$dem_sont++;
		}

	}
	echo"Từ 1 đến ".$n." có ".$dem_sont." số nguyên tố <br>";


	 ?>
	
</body>
</html>