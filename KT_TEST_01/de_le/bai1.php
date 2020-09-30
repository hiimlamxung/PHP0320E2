<?php 
function getSums($a){
$b=array();
	for($i=0;$i<count($a);$i++){
		$x=array_sum($a)-$a[$i];
		array_push($b, $x);
	}
	echo "<pre>";
	print_r($b);
	echo "</pre>";
}






getSums(array(4,3,4));
 ?>