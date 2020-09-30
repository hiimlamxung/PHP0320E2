<?php

	// Tham khảo thêm tại: https://sudo.vn/chia-se/huong-dan-tich-hop-recaptcha-cua-google-vao-form.html

	if(isset($_POST['submit'])){
		$name; $captcha;

		$name = $_POST['name'];
		$captcha = $_POST['g-recaptcha-response']; // g-recaptcha-response is name captcha

		if(!$captcha){
			$error = 'Confirm CAPTCHA!!';
		}else{
			$response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6LeR_8kZAAAAANuTHs9pWgZ-O4V4gIqdG512hhfR&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR']);
			$js_responsive = json_decode($response);

	        // echo $response; die();

			echo "<pre>";
			print_r($response);
			echo "</pre>"; 

	        if($js_responsive->success == false){ // true is oke
	        	$error = 'SPAM!';
	        }else{
	        	echo '<h2 style="color: green;">'.$name.' is not robot, submit success!</h2>';
	        }
	    }
	}

?>			

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Captcha Google</title>
	<style>
		*{
			font-family: 'arial';
		}

		body{
			width: 900px;
			margin: 0px auto;
		}
	</style>
	<script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>
</head>
<body>
	
	<h1>Google reCAPTHA</h1>

	<form id="" action="" method="POST">
		<input type="text" placeholder="Trịnh Khắc Tùng" required name="name" value="<?php if(isset($name)) { echo $name; } ?>"><br><br>
		<div class="g-recaptcha" data-sitekey="6LeR_8kZAAAAAPo83FgNmlu926D0x-Oyv7A6Q6yQ"></div>

		<button type="submit" name="submit">Sent</button>
		<h2 style="color: red;"><?php if(!empty($error)) { echo $error; } ?></h2>
	</form>

</body>
</html>		

