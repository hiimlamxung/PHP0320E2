<?php 
// // $arr=[4,2,1,3];
// var_dump($arr);
// echo count($arr)."<br>";
echo "Lấy mảng [3,4,1,2]". " .Kết quả là:<br> [";
function getSum($arr){

for($i=0;$i<count($arr);$i++){
	$dem=0;
	for($j=0;$j<count($arr);$j++){
		if($i==$j){
			continue;
		}
		$dem=$dem+$arr[$j];	
	}
	echo $dem." ";
}
}
getSum([3,4,1,2]);

echo "]"


 ?>