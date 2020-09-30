<?php
	if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
?>
	<div class="row">
		<div class="col-md-12">
			<h3 class="title">
				Shopping Cart
			</h3>
			<h2 id="noti_cart" style="color: green;"></h2>
			
		</div>

		<div class="col-md-12" id="table-x">
			<div class="clearfix"></div>
			<form action="index.php?page=update-cart" method="POST" name="frm_update_cart">
				<table class="shop-table" id="table-data">
					<thead>
						<tr>
							<th>
								Image
							</th>
							<th>
								Dtails
							</th>
							<th>
								Price
							</th>
							<th>
								Quantity
							</th>
							<th>
								Sum Price
							</th>
							<th>
								Delete
							</th>
						</tr>
					</thead>

					<tbody>
					<?php  
					// echo "<pre>";
					// print_r($pro);
					// echo "</pre>";
						$_SESSION['total_price'] = 0;
						foreach ($_SESSION['cart'] as $id => $pro) {
					?>
						<tr>
							<td>
								<img src="images/products/<?php echo $pro['img']; ?>" alt="">
							</td>
							<td>
								<div class="shop-details">
									<div class="productname">
										<?php echo $pro['name']; ?>
									</div>
									<p>
										<img alt="" src="images/star.png">
										<a class="review_num" href="#">
											05 Review(s)
										</a>
									</p>
									<!--
									<p>
										<img alt="" src="images/star.png">
										<a class="review_num" href="#">
											02 Review(s)
										</a>
									</p>
									<div class="color-choser">
										<span class="text">
											Product Color : 
										</span>
										<ul>
											<li>
												<a class="black-bg " href="#">
													black
												</a>
											</li>
											<li>
												<a class="red-bg" href="#">
													light red
												</a>
											</li>
										</ul>
									</div>
									<p>
										Product Code : 
										<strong class="pcode">
											Dress 120
										</strong>
									</p> -->
								</div>
							</td>
							<td>
								<h5>
									<?php echo number_format($pro['price']); ?>
								</h5>
							</td>
							<td>
								<input onchange="update_cart(<?php echo $pro['id']; ?>)" name="<?php echo $pro['id']; ?>" type="number" min="1" max="5" id="<?php echo $pro['id']; ?>" value="<?php echo $pro['qty']; ?>" />
							</td>
							<td>
								<h5>
									<strong class="red">
										<?php  
											$sum_price = $pro['price'] * $pro['qty'];
											$_SESSION['total_price'] += $sum_price;
											echo number_format($sum_price);
										?>
									</strong>
								</h5>
							</td>
							<td>
								<a onclick="return confirm('Bạn có muốn xóa sản phẩm này khỏi giỏ hàng không? ');" href="index.php?page=delete-cart&id=<?php echo $pro['id']; ?>">
									<img src="images/remove.png" alt="">
								</a>
								<button value="<?php echo $pro['id']; ?>" class="btn btn-danger del_cart">Delete Ajax</button>
							</td>
						</tr>
					<?php
							}
						?>
						

					</tbody>

					<tfoot>
						<tr>
							<td colspan="6">
								<button class="pull-left">
									Continue Shopping
								</button>
								<button type="submit" name="submit_cart" class=" pull-right">
									Update Shopping Cart
								</button>
							</td>
						</tr>
					</tfoot>
				</table>
			</form>

			<div class="clearfix">
			</div>
			<div class="row">
				<div class="col-md-8 col-sm-6">
					<div class="shippingbox">
						
						<form action="index.php?page=ordered" method="POST" role="form">
							<legend style="color: red; font-size: 20px;">ĐẶT HÀNG</legend>
							<hr>
							<div class="form-group">
								<label for="name">Họ tên khách hàng</label>
								<input type="text" required="" name="name" class="form-control" id="name" placeholder="Họ tên...">
							</div>

							<div class="form-group">
								<label for="phone">Số điện thoại</label>
								<input type="number" required="" name="phone" class="form-control" id="phone">
							</div>

							<div class="form-group">
								<label for="email">Email</label>
								<input type="email" name="email" class="form-control" id="email" placeholder="Email...">
							</div>

							<div class="form-group">
								<label for="addres">Địa chỉ giao hàng</label>
								<input type="text" name="addres" class="form-control" id="addres">
							</div>

							<div class="form-group">
								<label for="note">Ghi chú đơn hàng</label>
								<textarea class="form-control" name="note" id="note" cols="30" rows="5"></textarea>
							</div>
						
							<button type="submit" name="order" class="btn btn-primary">
								Đặt hàng
							</button>
						</form>
						
					</div>
				</div>
					
				<div class="col-md-4 col-sm-6">
					<div class="shippingbox">
						<div class="grandtotal">
							<h5>
								Tổng tiền 
							</h5>
							<span style="font-size: 20px !important;">
								<?php echo number_format($_SESSION['total_price']).' đ'; ?>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php
	}else{
?>
	<div class="alert alert-danger">
       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
       <strong>Thông báo!</strong> Giỏ hàng của bạn đang trống
       <a href="index.php">
          <button class="btn btn-success">Quay lại</button>
       </a>
    </div>
<?php
	}
?>