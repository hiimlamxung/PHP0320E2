<?php 
	// Lấy thông tin khách hàng đặt hàng
	if (isset($_POST['order'])) {
		$name 	= $_POST['name'];
		$phone 	= $_POST['phone'];
		$email 	= $_POST['email'];
		$addres = $_POST['addres'];
		$passw 	= md5("shop-fashion.com");
		addMember($name, $phone, $addres, $email, $passw); // Lấy thông tin KH mua hàng

		$id_member = mysqli_insert_id($conn);
		$note = $_POST['note'];
		// Lấy thông tin đơn hàng
		addOrder($id_member, $note);

		// Lấy thông tin sản phẩm khách hàng mua
		$id_order = mysqli_insert_id($conn);

		foreach ($_SESSION['cart'] as $id => $pro) {
			$total = $pro['qty'] * $pro['price'];
			addPro_order($id_order, $pro['id'], $pro['qty'], $pro['price'], $total);
		}

		// Tiến hành gửi email cho khách
		include_once 'PHPMailer/class.phpmailer.php';
		include_once 'PHPMailer/class.smtp.php';

		// Instantiation and passing `true` enables exceptions
		$mail = new PHPMailer(true);

		try {
		    //Server settings
		    $mail->SMTPDebug = 2;                      // Enable verbose debug output
		    $mail->CharSet = "UTF-8";
		    $mail->isSMTP();                                            // Send using SMTP
		    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
		    $mail->SMTPAuth   = true;                                   // Enable SMTP 

		    $mail->Username   = 'ustyle95@gmail.com';                     // SMTP username
		    $mail->Password   = '978978Tunglata*';  // SMTP password
		    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; 
		    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

		    //Recipients
		    $mail->setFrom('support@shop-fashion.com', 'Thông báo đơn hàng mới');
		    $mail->addAddress($email, $name);     // Add a recipient

		    // Content
		    $mail->isHTML(true);                                  // Set email format to HTML
		    $mail->Subject = 'Thông báo đơn hàng mới';
		    $mail->Body    = 'Nội dung cần gửi mail';

		    $mail->send();
		    echo 'Message has been sent';
		} catch (Exception $e) {
		    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		}
		unset($_SESSION['cart']);
		echo "<script>alert('Đặt hàng thành công!');";
		echo "location.href='index.php';</script>";
	}
?>