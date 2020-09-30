<?php  
	
	$video = array(
		'vd01' => array(
			'title' 	=> 	'Một Thuở Yêu Người',
			'link'		=>	'https://www.youtube.com/watch?v=UPl9g1bEqfw'
		),

		'vd02' => array(
			'title' 	=> 	'Cánh Hồng Phai - Phương Ý ',
			'link'		=>	'https://www.youtube.com/watch?v=dIxv3f_RRls'
		),

		'vd03' => array(
			'title' 	=> 	'Phụ Tình - Trịnh Đình Quang',
			'link'		=>	'https://www.youtube.com/watch?v=d8rXacGdR_4'
		),

		'vd04' => array(
			'title' 	=> 	'Mưa Trong Lòng Remake',
			'link'		=>	'https://www.youtube.com/watch?v=YWyuzXyLg68'
		),

		'vd05' => array(
			'title' 	=> 	'Reality',
			'link'		=>	'https://www.youtube.com/watch?v=GIDoQsQyS0s'
		)
	);
?>


<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>VIDEO</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		

		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<img src="top.png" style="width: 100%;" alt="">
				</div>
			</div>

			<div class="row">

			  <?php  
			  	foreach ($video as $key => $value) {
			  		$link = explode("=", $value['link']);
			  ?>
				<div class="col-sm-6 col-md-3">
				    <div class="thumbnail">
				      <iframe style="width: 100%;" src="https://www.youtube.com/embed/<?php echo $link[1]; ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

				      <div class="caption">
				        <h3><?php echo $value['title']; ?></h3>
				        <p>Mô tả video</p>
				      </div>
				    </div>
				</div>
			  <?php
			  	}
			  ?>
			
			</div>
				
		</div>

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
</html>