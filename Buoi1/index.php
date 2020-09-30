<?php 
	echo "Hello World header!";
	 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Hoc PHP buoi 1</title>
	<style type="text/css">
		h1{
			color: red;
		}
	</style>
	
</head>
<body>
	<h1>Hoc PHP buoi 01</h1>
	<p id="show"></p>
	<script type="text/javascript">
		document.getElementById("show").innerHTML="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae quibusdam, commodi minus porro nihil temporibus minima magni nulla officia, dolorem suscipit, reiciendis sit reprehenderit ipsa, incidunt cupiditate enim ab voluptatum!"
	</script>
	<h2 class="<?php echo "txt_h2"; ?>">
		<?php 
	echo "Day la the h2 !";
	 ?>
	</h2>
	<?php 
	echo "Hello World header!";
	 ?>
</body>
</html>