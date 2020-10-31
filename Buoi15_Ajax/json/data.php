<?php
$arr = array(
	'sv01' => array(
		'name' => 'Tung',
		'age' => '25',
		'address' => 'Ha Noi',
	),
	'sv02' => array(
		'name' => 'Lam',
		'age' => '22',
		'address' => 'Ha Noi',
	),
);

echo $a = json_encode($arr); // in ra chuỗi ở dạng Json

// echo "<br>";
// print_r(json_decode($a));

// echo "<pre>";
// print_r($arr);
// echo "</pre>";

?>