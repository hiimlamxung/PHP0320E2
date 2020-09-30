<?php 
	if(isset($_POST['submit'])){
		$a=$_POST['a'];
		$b=$_POST['b'];
		$result=((-$b)/$a);

	}


 ?>

 <!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Giải Phương Trình</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		<form action="" method="POST" role="form" onsubmit=" return Submit_frm()">
			<legend>Giải phương trình ax+b=0</legend>
		
			<div class="form-group">
				<label for="">Số a</label><span id="errorA" style="color: red;">(*)</span>
				<input type="text" class="form-control" id="a" name="a" required="" placeholder="Input field" >
			</div>			
			<div class="form-group">
				<label for="">Số b</label><span id="errorB" style="color: red;">(*)</span>
				<input type="text" class="form-control" id="b" name="b" required="" placeholder="Input field">
			</div>
		
			
		
			<button type="submit" name="submit" class="btn btn-primary">Tính</button>
		</form>
			<div class="form-group">
				<label for="">Kết quả</label>
				<input type="text" class="form-control" id="result" readonly="" name="result" placeholder="Input field" value="<?php if(isset($result)){echo 'Nghiệm của phương trình là: '.$result;} ?>">
			</div>

		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script type="" src="js/MyJs.js"></script>
	</body>
</html>
