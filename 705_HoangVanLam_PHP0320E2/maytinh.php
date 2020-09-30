<?php 
 if(isset($_POST['submit'])){
 	$a=$_POST['a'];
 	$b=$_POST['b'];
 	$tinh=$_POST['tinh'];

 	if($tinh=='cong'){
 		$kq=$a+$b;
 	}else if($tinh=='tru'){
 		$kq=$a-$b;
 	}else if($tinh=='nhan'){
 		$kq=$a*$b;
 	}else if($tinh=='chia'){
 		$kq=$a/$b;
 	}


 }




 ?>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Máy tính cá nhân</title>


		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<style type="text/css">
		 #test{
				background: green;
				color: white;
				margin-left: 15px;
			}
		</style>

	</head>
	<body>
		<form method="POST" onsubmit=" return Submit_frm()" >
		<table border="bordered" style="width: 500px;">
  <tr>
    <th colspan="3" style="background: green; color: white;text-align: center;">Máy tính cá nhân đơn giản</th>
 
  </tr>
  <tr>
    <td >Nhập số thứ nhất:</td>
    <td colspan="2"><input type="text" name="a" id="a" style="width: 100%" value="<?php if(isset($a)){echo $a;} ?>"></td>
  </tr>
  <tr>
  	 <tr>
    <td>Nhập số thứ hai:</td>
    <td colspan="2"><input type="text" name="b" id="b" style="width: 100%" value="<?php if(isset($b)){echo $b;} ?>"></td>
  </tr>
    <td>Phép tính:</td>
    <td colspan="2"><input type="radio" name="tinh" id="cong" checked="" value="cong"><label for="cong">Cộng</label> <input type="radio" name="tinh" id="tru" value="tru"><label for="tru">Trừ</label> <input type="radio" name="tinh" id="nhan" value="nhan"><label for="nhan">Nhân</label><input type="radio" name="tinh" id="chia" value="chia"><label for="chia">Chia</label></td> 
  </tr>
  <tr>
  	<td><button type="submit" name="submit">Tính toán</button></td>
  	<td><input style="width: 90%" type="text" name="result" readonly="" value="<?php if(isset($kq)){echo $kq;} ?>" id="test"></td>
  </tr>

</table>
</form>

		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="js/MyJs.js"></script>
	</body>
</html>