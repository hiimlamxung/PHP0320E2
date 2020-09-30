<?php 
	$strCon='mysql:host=localhost;dbname=dbtest2';
	$user='root';
	$pass='';

	try{
		$pdo = new PDO($strCon,$user,$pass);
		$pdo->query('SET NAMES utf8');

	}catch (PDOException $e){
		echo $e->getMessage();
		exit();
	}

	$sql="SELECT * FROM tbl_product";
	$pre=$pdo->query($sql);
	$pre=$pre->fetchAll(PDO::FETCH_ASSOC);
	// echo "<pre>";
	// print_r($pre);
	// echo "</pre>";
	echo json_encode($pre);

 ?>