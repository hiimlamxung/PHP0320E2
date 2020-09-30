<?php 
	if(isset($_POST['submit'])){
		$kw=$_POST['kw'];
		$tien=0;
		if($kw>=0 && $kw<=100){
			$tien=$kw*2000;
		}else if($kw>100&&$kw<=200){
			$tien=($kw-100)*3000+(2000*100);
		}else if($kw>200&&$kw<=500){
			$tien=($kw-200)*5000+(100*2000)+(100*3000);
		}else if($kw>500){
			$tien=($kw-500)*10000+(300*5000)+(100*2000)+(100*3000);
		}
	}



 ?>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Tính tiền điện</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<style type="text/css">
			td{
				height: 30px;
			}
		</style>

	</head>
	<body>
		<form method="POST" onsubmit=" return Submit_frm2();">
			<table border="bordered" style="width: 400px;">
				<tr><td colspan="3" style="background: green;color: white;text-align: center;">Tính tiền điện</td></tr>
				<tr><td colspan="1">Nhập số KW điện</td><td><input type="number" name="kw" id="kw" style="width: 100%;"></td></tr>
				<tr><td colspan="1">0KW-100KW</td><td>2.000đ/KW</td></tr>
				<tr><td colspan="1">101KW-200KW</td><td>100KW giá 2000đ/KW,còn lại giá 3000đ/KW.</td></tr>
				<tr><td colspan="1">201KW-500KW</td><td>100KW giá 2000đ/KW,100KW giá 3000đ/KW,còn lại giá 5000đ/KW</td></tr>
				<tr><td colspan="1">Trên 500KW</td><td>100KW giá 2000đ/KW,100KW giá 3000đ/KW,100KW 5000đ/KW, còn lại giá 10000đ/KW</td></tr>
				<tr><td colspan="1"><input type="submit" name="submit" value="Tính toán"></td><td><input type="text" style="background: green;color: white;width: 95%;margin-left: 10px;" readonly="" name="" value="<?php if(isset($tien)){echo number_format($tien).'vnđ';} ?>" style="width: 100%;"></td></tr>





			</table>


		</form>

		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="js/MyJs.js"></script>

	</body>
</html>