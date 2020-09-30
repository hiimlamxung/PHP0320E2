<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Mảng</title>
</head>
<body>
	<?php 
		$n=rand(10,50);
		echo "Số n được lấy =".$n."<br>";
		echo "Danh sách các phần tử trong mảng, gồm ". $n." phần tử:";
		$arr= array();
		for($i=1;$i<=$n;$i++){
			array_push($arr, $i);
		}
		echo"<pre>";
		print_r($arr);
		echo"</pre>";
		echo "<br>"."<br>";
		$dem_chan=$dem_le=0;
		for($i=1;$i<=$n;$i++){
			if($i%2==0){
				$dem_chan++;
			}
		}
		for($i=1;$i<=$n;$i++){
			if($i%2!=0){
				$dem_le++;
			}
		}
		echo "Số phần tử là số chẵn trong mảng là:".$dem_chan." số<br>";
		echo "Số phần tử là số lẻ trong mảng là:".$dem_le." số<br>";
		echo "Số lớn nhất trong mảng là ".max($arr)." , số nhỏ nhất trong mảng là:". min($arr)."<br>";

		echo "Danh sách các số nguyên tố trong mảng là: ";

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
				echo $i." ";
			}
		}
		echo "<br>";
		// foreach ($arr as $key => $value) {
		// 	if($value%2==0){
		// 		$arr[$key]="Đã thay thế !";
		// 	}
		// }
		
		echo ' Nếu trong mảng có các phần tử là số chẵn thì sẽ thay thế bằng chuỗi "đã thay thế", mảng sẽ thay đổi như sau:<br>';
		echo"<pre>";
		print_r($arr);
		echo"</pre>";
		echo "<br>"."<br>";
		$arr2= array();
		for($i=1;$i<=$n;$i++){
			array_push($arr2, $i);
		}
		echo "Xóa phần tử đầu: <br>";
		array_shift($arr2);
		echo"<pre>";
		print_r($arr2);
		echo"</pre>";
		echo "Xóa phần tử cuối: <br>";
		array_pop($arr2);
		echo"<pre>";
		print_r($arr2);
		echo"</pre>";
		$arr3= array();
		for($i=1;$i<=$n;$i++){
			array_push($arr3, $i);
		}
		$m=rand(1,10);
		echo " Số m được lấy là : ".$m."<br>";
		echo " Mảng trước khi xóa phần tử thứ ".$m.":<br>";
		echo"<pre>";
		print_r($arr3);
		echo"</pre>";
		echo " Mảng sau khi xóa phần tử thứ ". $m.":<br>";
		unset($arr3[$m]);
		echo"<pre>";
		print_r($arr3);
		echo"</pre>";


	 ?>
</body>
</html>