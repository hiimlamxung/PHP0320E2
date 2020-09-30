<?php 
	if(isset($_POST['submit_order'])){
		//Thêm thông tin khách hàng từ form
		$name=$_POST['name'];
		$phone=$_POST['phone'];
		$email=$_POST['email'];
		$address=$_POST['addres'];
		$note=$_POST['note'];

		//Thêm thông tin khách hàng mua hàng
		$passw=md5('shop-fashion.com');
		addMember($name,$phone,$address,$email,$passw);
		$id_member=mysqli_insert_id($conn);// Hàm lấy ID vừa mới insert vào csdl

		// Thêm thông tin đơn hàng
		addOrder($id_member, $note);
		$id_order  = mysqli_insert_id($conn);// Hàm lấy ID vừa mới insert vào csdl

		foreach ($_SESSION['cart'] as $key => $pro) {
			$total = $pro['qty'] * $pro['price'];
			addProduct($id_order, $pro['id'], $pro['qty'], $pro['price'], $total);
		}

		include_once 'PHPMailer/class.phpmailer.php';
		include_once 'PHPMailer/class.smtp.php';
		// Instantiation and passing `true` enables exceptions


	$data='<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	</head>
	<body style="text-align: center;margin:0px auto;">
		<h3 style="color: red; margin:0px auto;text-align: center;">HOÀNG LÂM LUXURY - CHẤT LƯỢNG HOÀNG GIA</h3>
		<div style="margin-top: 20px;">
			<h4>Cảm ơn anh/chị <?php echo $_POST["name"]; ?> đã ghé thăm Store Hoàng Lâm Luxury và đăng ký trở thành <span style="color: gray;font-weight: bold;">thành viên Bạc</span> của hệ thống chúng tôi khi mua hàng có đơn giá trên <span style="color: red;font-weight: bold;">10 triệu đồng</span>.<br>Dưới đây là hóa đơn sản phẩm anh/chị  <?php echo $_POST["name"]; ?> đã đặt hàng.</h4>
			<div></div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Hình ảnh</th>
						<th>Tên sản phẩm</th>
						<th>Giá tiền</th>
						<th>Số lượng</th>
						<th>Thành tiền</th>
					</tr>
				</thead>
				<tbody>';
				$total=0;
 
						foreach ($_SESSION["cart"] as $key => $value) {
					
					$data.='<tr>
						<td><img src="images/products/'.$value["img"].'"></td>
						<td>'.$value["name"].'</td>
						<td>'.$value["price"].'</td>
						<td>'.$value["qty"].'</td>
						<td>';
						$sum_product=$value["price"]*$value["qty"];
						$data.=number_format($sum_product).'<span>VNĐ</span></td>';
						$total+=$sum_product;
						$data.='
					</tr>';

						}


				$data .= '
				</tbody>
			</table>
			<div class="row">
				<div class="col-md-4"> 
					<h3>Tổng tiền đơn hàng:';
				$data.= number_format($total)."<span >VNĐ</span>";
				$data.= '</h3>
						
					</div>
			</div>
			<p style="color:blue;text-align: left;">Nhân viên giao hàng sẽ chuyển hàng cho bạn trong 48h kể từ ngày đặt hàng. Cảm ơn quý khách !</p>
			<br>
			<p>Chi tiết xin liên hệ:</p>
			<p>Bộ phận quản lý, chăm sóc khách hàng: Mr.Lâm - 0398762441</p>
			<p>Địa chỉ: Hoàng Lâm LUXURY STORE. Số 8,ngõ 96, ngách 96/88, tổ 15, phường Thượng Thanh, quận Long Biên, Hà Nội.</p>
			<p style="font-size: 12px;"> Copyrighted © - Bản quyền thuộc về Lamtiensink98</p>

		</div>
		<script src="//code.jquery.com/jquery.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

	</body>
</html>';
$mail = new PHPMailer(true);

		try {
		    //Server settings
		    $mail->CharSet = 'UTF-8';
		    $mail->SMTPDebug = 0;                // Enable verbose debug output
		    $mail->isSMTP();                                      // Send using SMTP
		    $mail->Host       = 'smtp.gmail.com';              // Set the SMTP server to send through
		    $mail->SMTPAuth   = true;                             // Enable SMTP authentication
		    $mail->Username   = 'hvl1kg@gmail.com';               // SMTP username
		    $mail->Password   = 'Sktt1zed';                         // SMTP password
		    $mail->SMTPSecure = 'tls';   // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
		    $mail->Port       = 587;                              // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

		    //Recipients
		    $mail->setFrom('shop-fashion@gmail.com', 'Hoàng Lâm Shop-LUXURY');// tên của tài khoản để hiển thị email.
		    $mail->addAddress($email, $name); // email và tên người nhận

		    // Content
		    $mail->isHTML(true);                                  // Set email format to HTML
		    $mail->Subject = 'THÔNG BÁO ĐƠN HÀNG';
		    $mail->Body    =$data;

		    $mail->send();
		    echo 'Message has been sent';
		} catch (Exception $e) {
		    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		}

		unset($_SESSION['cart']);
		echo "<script>alert('Đặt hàng thành công!');";
		echo "location.href = 'index.php';</script>";


}

?>