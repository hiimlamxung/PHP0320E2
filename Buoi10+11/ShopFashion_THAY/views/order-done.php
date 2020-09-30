

<?php  
	if (isset($_POST['submit_order'])) {
		// Thêm thông tin khách hàng mua hàng từ form
		$name = $_POST['name'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$addres = $_POST['addres'];
		$note = $_POST['note'];

		// Thêm thông tin khách hàng mua hàng
		$passw = md5('shop-fashion.com');
		addMember($name, $phone, $addres, $email, $passw);
		$id_member = mysqli_insert_id($conn); // Hàm lấy ID vừa mới insert vào csdl


		// Thêm thông tin đơn hàng
		addOrder($id_member, $note);
		$id_order  = mysqli_insert_id($conn);
		
		foreach ($_SESSION['cart'] as $key => $pro) {
			$total = $pro['qty'] * $pro['price'];
			addProduct($id_order, $pro['id'], $pro['qty'], $pro['price'], $total);
		}

		// $data = '<!DOCTYPE html>
		// 	<html lang="">
		// 		<head>
		// 			<meta charset="utf-8">
		// 			<meta http-equiv="X-UA-Compatible" content="IE=edge">
		// 			<meta name="viewport" content="width=device-width, initial-scale=1">
		// 			<title>Đơn hàng</title>

		// 			<!-- Bootstrap CSS -->
		// 			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		// 		</head>
		// 		<body>
		// 			<h1 class="text-center">Hello World</h1>
		// 			<table class="table table-hover table-bordered">
		// 				<thead>
		// 					<tr>
		// 						<th>Xin chào</th>
		// 						<th>Xin chào</th>
		// 						<th>Xin chào</th>
		// 					</tr>
		// 				</thead>
		// 				<tbody>
		// 					<tr>
		// 						<td>Xin chào</td>
		// 						<td>Xin chào</td>
		// 						<td>Xin chào</td>
		// 					</tr>
		// 				</tbody>
		// 			</table>
		// 			<!-- jQuery -->
		// 			<script src="//code.jquery.com/jquery.js"></script>
		// 			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		// 		</body>
		// 	</html>';

		// include_once 'PHPMailer/class.phpmailer.php';
		// include_once 'PHPMailer/class.smtp.php';

		// // Instantiation and passing `true` enables exceptions
		// $mail = new PHPMailer(true);

		// try {
		//     //Server settings
		//     $mail->CharSet = 'UTF-8';
		//     $mail->SMTPDebug = 0;                // Enable verbose debug output
		//     $mail->isSMTP();                                      // Send using SMTP
		//     $mail->Host       = 'smtp.gmail.com';              // Set the SMTP server to send through
		//     $mail->SMTPAuth   = true;                             // Enable SMTP authentication
		//     $mail->Username   = '';               // SMTP username
		//     $mail->Password   = '';                         // SMTP password
		//     $mail->SMTPSecure = 'tls';   // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
		//     $mail->Port       = 587;                              // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

		//     //Recipients
		//     $mail->setFrom('shop-fashion@gmail.com', 'Thông báo đơn hàng mới');
		//     $mail->addAddress($email, $name);

		//     // Content
		//     $mail->isHTML(true);                                  // Set email format to HTML
		//     $mail->Subject = 'THÔNG BÁO ĐƠN HÀNG';
		//     $mail->Body    = $data;

		//     $mail->send();
		//     echo 'Message has been sent';
		// } catch (Exception $e) {
		//     echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		// }

		// unset($_SESSION['cart']);
		// echo "<script>alert('Đặt hàng thành công!');";
		// echo "location.href = 'index.php';</script>";

	}
?>