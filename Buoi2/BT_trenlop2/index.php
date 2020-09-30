<?php 
// $dem=0;
// for($i=1;$i<=50;$i++){
// 	$dem=$dem +$i;
// }
// echo $dem."<br>";







// echo "Cac so le trong khoang 1-30 la:<br>";
// for ($i=1;$i<=50;$i++){

// 	if($i==31){
// 		break;
// 	}
// 	else
// 	{
// 		if($i%2!=0){
// 			echo $i."<br>";
// 		}
// 	}
// }

echo" Lam";
for($i=2;$i<=50;$i++){
	
	for($j=2;$j<=sqrt($i);$j++){
			$check=false;
			if($i%$j==0){
				//khong phai la so nguyen to
				$check=false;
			}
			else $check=true;
		}
	}
	if($check==true){
		echo $i.";";
	}








 ?>
