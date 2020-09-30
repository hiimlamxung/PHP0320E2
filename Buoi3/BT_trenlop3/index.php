<?php 

	$m=rand(3,strlen("Hình chữ nhật"));
	$x=0;
	$t=rand(3,strlen("Hình vuông"));
		for($i=1;$i<=$t;$i++){
			if($i%2!=0){
				$x+=$i;//$x=$x+$i;
			}

		}
		if($m==$x){
			$size="Hình vuông";
		}
		else {
			$size="Hình chữ nhật";
		}
		$dienTich=($m*$x);
		$chuVi=($m+$x)*2;
		echo "Chu vi" . $size." = ".$chuVi."<br>";
		echo "Diện tích". $size." = ".$dienTich."<br>";
		die();

	function tinhToan($m,$t){
		$m=5;$x=0;$t=10;
		for($i=1;$i<=$t;$i++){
			if($i%2!=0){
				$x+=$i;//$x=$x+$i;
			}

		}
		echo "x= ".$x;


	}







 ?>