
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">


	</head>
	<body>
		<p>Hello World</p>

		<div class="container">
			<div class="col-md-12">
				<div class="col-md-6">
					<iframe width="560" height="315" src="https://www.youtube.com/embed/6t-MjBazs3o" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<div class="col-md-6" id="noload">
					<form action="" method="POST" role="form">
						<legend>Form title</legend>
					
						<div class="form-group">
							<label for="">number1</label>
							<input type="number" class="form-control" id="number1" name="number1" placeholder="Input field">
							<label for="">number2</label>
							<input type="number" class="form-control" id="number2" name="number2" placeholder="Input field">
						</div>
					<label for="">Kết quả</label>
							<input type="number" class="form-control" readonly="" id="result" name="result" placeholder="Kết quả" >
						
					
						<button type="submit" id="sum" name="add" class="btn btn-primary">Submit</button>
					</form>
					
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">

					<p class="show" style="color: green;">AAAAAAAAAAA</p>

					<p id="gets" style="color: red;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat doloribus cupiditate magni, sit, pariatur animi eos temporibus, perferendis repudiandae necessitatibus qui ullam, reprehenderit numquam ipsum? Qui id cumque, reiciendis obcaecati.</p>
				</div>
			</div>
		</div>


		<script src="js/jquery-3.5.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
 		<script src="js/myJava.js"></script>
	</body>
</html>