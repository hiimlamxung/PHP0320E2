
        <div class="container shopping-cart">
          <div class="row">
            <div class="col-md-12">
              <h3 class="title">
                Shopping Cart
              </h3>
              <div class="clearfix">
              </div>

                  <?php 
                    if(empty($_SESSION['cart'])){
                      echo "Giỏ hàng của bạn chưa có sản phầm nào. Hãy ra Shopping đi nào !";
                    }
                    else{
                      ?>
              <table class="shop-table" id="table-data">
                <thead>
                  <tr>
                    <th>
                      Hình ảnh
                    </th>
                    <th>
                      Tên sản phẩm
                    </th>
                    <th>
                      Giá tiền
                    </th>
                    <th>
                      Số lượng
                    </th>
                    <th>
                      Thành tiền
                    </th>
                    <th>
                      Chức năng
                    </th>
                  </tr>
                </thead>
            <form action="index.php?page=update-cart" name="frm_cart" method="POST">
                <tbody>
                  <?php

                      $_SESSION['sum']=0;
                      foreach ($_SESSION['cart'] as $key => $value) {
                        $_SESSION['sum']+=($value['price']*$value['qty']);
                  ?>
                  <tr>
                    <td>
                      <img src="images/products/<?php echo $value['img']; ?>" alt="<?php  echo $value['name'];?>">
                    </td>
                    <td>
                      <div class="shop-details">
                        <div class="productname">
                          <?php  echo $value['name'];?>
                        </div>
                        
                      </div>
                    </td>
                    <td>
                      <h5>
                        <?php  echo number_format($value['price']).'<sup style="color:red"> đ</sup>';?>
                      </h5>
                    </td>
                    <td>
                      <input type="number" name="<?php echo $value['id']; ?>" value="<?php echo $value['qty']; ?>" min="1" max="10">
                    </td>
                    <td>
                      <h5>
                        <strong class="red">
                          <?php 
                              $total=$value['price']*$value['qty'];
                              echo number_format($total);
                           ?>
                        </strong>
                      </h5>
                    </td>
                    <td>
                      <a href="index.php?page=del-cart&id=<?php echo $value['id']; ?>">
                        <img src="images/remove.png" alt="" onclick="return confirm('Bạn có muốn xóa sản phẩm này khỏi giỏ hàng không ?')">
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
                      <button class="pull-left"><a href="index.php?page=home">
                        Tiếp tục mua hàng
                      </a></button>
                      <button class=" btn btn-danger" type="submit" name="submit-cart">
                        Cập nhật lại giỏ hàng
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
                        GRAND TOTAL 
                      </h5>
                      <span style="font-size:18px;">
                        <?php echo number_format($_SESSION['sum']).' VNĐ'; ?>
                      </span>
                    </div>
                    <button>
                      Process To Checkout
                    </button>
                  </div>
                </div>
          </div>
                  <?php
                    }
                   ?>
          <div class="clearfix">
          </div>
        </div>
      </div>
    </div>

      