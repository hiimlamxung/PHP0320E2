<?php 
  if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])){
?>
  <div class="container shopping-cart">
  <div class="row">
    <div class="col-md-12">
      <h3 class="title">
        Shopping Cart
      </h3>
      <div class="clearfix">
      </div>
      <table class="shop-table">
        <thead>
          <tr>
            <th>Hình ảnh</th>
            <th>Tên sản phẩm</th>
            <th>Giá tiền</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            <th>Chức năng</th>
            
          </tr>
        </thead>
        <form action="index.php?page=update-cart" name="frm_cart" method="POST">
          <tbody>
            <?php 
              $_SESSION['sum'] = 0;

              foreach ($_SESSION['cart'] as $key => $pro) {
                $_SESSION['sum'] += ($pro['price'] * $pro['qty']); 
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
                    </div>
                  </td>
                  <td>
                    <h5>
                      <?php echo number_format($pro['price']); ?>
                    </h5>
                  </td>
                  <td>
                    <input type="number" name="<?php echo $pro['id']; ?>" value="<?php echo $pro['qty']; ?>" min="1" max="5"/>
                  </td>
                  <td>
                    <h5>
                      <strong class="red">
                        <?php
                          $total = $pro['price'] * $pro['qty'];
                          echo number_format($total);
                        ?>
                      </strong>
                    </h5>
                  </td>
                  <td>
                    <a onclick="return confirm('Bạn có muốn xóa sản phẩm này không? ');" href="index.php?page=del-cart&id=<?php echo $pro['id']; ?>">
                      <img src="images/remove.png" alt="">
                    </a>
                  </td>
                </tr>
            <?php
              }
            ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="6">
                <a href="index.php"><button class="pull-left">
                  Tiếp tục mua hàng
                </button></a>
                <button type="submit" name="submit_cart" class="btn btn-danger pull-right">
                  Câp nhật
                </button>
              </td>
            </tr>
          </tfoot>
        </form>
      </table>
      <div class="clearfix">
      </div>
      <hr>
      <div class="row">
        <div class="col-md-8 col-sm-8 col-xs-12">
          <h5 style="font-weight: bold; margin-bottom: 20px;">ĐẶT HÀNG</h5>
          <form action="index.php?page=order-done" method="POST" role="form">
          
            <div class="form-group">
              <label for="name">Họ tên</label>
              <input type="text" required name="name" class="form-control" id="name" placeholder="Input field">
            </div>

            <div class="form-group">
              <label for="phone">Số điện thoại</label>
              <input type="number" required name="phone" class="form-control" id="phone" placeholder="Input field">
            </div>

            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" required name="email" class="form-control" id="email" placeholder="Input field">
            </div>

            <div class="form-group">
              <label for="addres">Địa chỉ nhận hàng</label>
              <input type="text" required name="addres" class="form-control" id="addres" placeholder="Input field">
            </div>

            <div class="form-group">
              <textarea name="note" class="form-control" id="note" cols="30" rows="10"></textarea>
            </div>
            
          
            <button type="submit" name="submit_order" class="btn btn-primary">Đặt hàng</button>
          </form>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12">
          <div class="shippingbox">
            <div class="grandtotal">
              <h5>
                TỔNG TIỀN
              </h5>
              <span style="font-size: 22px;">
                <?php echo number_format($_SESSION['sum']).'vnđ'; ?>
              </span>
            </div>
            <button>
              Process To Checkout
            </button>
          </div>
        </div>
      </div>
    </div>
    <div class="clearfix">
    </div>
  </div>  

<?php }else{
  ?>
    <div class="alert alert-danger">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <strong>Giỏ hàng của bạn</strong> đang trống!
    </div>
<?php } ?>