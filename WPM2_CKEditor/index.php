<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Test CKeditor</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="ckd/ckeditor.js"></script>
		<script src="ckf/ckfinder.js"></script>
	</head>
	<body>
		
		<div class="container">
			<div class="row" style="margin-top: 20px;">
				<div class="col-md-12">
					<form action="" method="POST" role="form">
						<legend>Đăng bài viết</legend>
					
						<div class="form-group">
							<label for="">Nội dung bài viết</label>
							<textarea class="form-control ckeditor" name="description" id="ckeditor" cols="30" rows="10"></textarea>
						</div>
					
						<button type="submit" name="submit" class="btn btn-primary">Đăng bài</button>
					</form>
				</div>

			</div>
		</div>


		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
</html>