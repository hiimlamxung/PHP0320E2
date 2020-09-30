<?php 
$thu=rand(2,8);

function Tinhchanle(){
	 global $thu;
	 if($GLOBALS['thu']%2==0){
	 	return  "So chan";
	 }
	 else return  "So le";
}
 	switch ($thu) { 	
 	case '2':
 		 echo "Hom nay la thu 2".Tinhchanle();

 		break;
 	case '3':
		echo "Hom nay la thu 3".Tinhchanle();
 		break;
 	case '4':
 		echo "Hom nay la thu 4".Tinhchanle();
 		break;
 	case '5':
 		echo "Hom nay la thu 5".Tinhchanle();
 		break;
 	case '6':
 		echo "Hom nay la thu 6".Tinhchanle();
 		break;
 	case '7':
 		echo "Hom nay la thu 7".Tinhchanle();
 		break;
 	case '8':
 		echo "Hom nay la chu nhat".Tinhchanle();
 		break;

 }





  ?>



 <?php 
$n=rand(100,1000);
$price=0;
if($n>=100&&$n<=300){
	$price=$n*2000;
}
else if($n>300&&$n<=500){
	$price=($n-300)*3000+(300*2000);
}
else if($n>500&&$n<=600){
	$price=($n-500)*4000+(300*2000)+(200*3000);
}
else{
	$price=($n-600)*5000+(100*4000)+(300*2000)+(200*3000);
}

echo "So die gia dinh dung la".$n .",so tien phai tra la:".number_format($price)."vnd";





  ?>