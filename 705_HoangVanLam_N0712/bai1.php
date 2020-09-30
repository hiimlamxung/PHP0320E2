<?php 
function getSums($a){
$b=array();
	for($i=0;$i<count($a);$i++){
		$x=array_sum($a)-$a[$i];
		array_push($b, $x);
	}

	print_r($b);
	echo "<br>";

}






getSums(array());
getSums(array(2));
getSums(array(3,2,1));
getSums(array(1,3,0,4,7));
 ?>