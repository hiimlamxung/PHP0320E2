                              <a href="index.php?page=cart" class="cart-icon">cart <span class="cart_no"><?php
                              session_start();
                                    $count_qty=0;
                                    
                                    if(isset($_SESSION['cart'])){
                                    foreach ($_SESSION['cart'] as $key => $value) {
                                       $count_qty+=$value['qty'];
                                       
                                    }
                                    echo $count_qty;
                                    }                                    
                                
                              ?></span></a>
                              <ul class="option-cart-item" style="overflow: scroll;height: 500px;width: 400px;">
                              <?php 
                               if(empty($_SESSION['cart'])){
                                 echo "<h6>Giỏ hàng của bạn đang trống</h6>";
                                 }else{
                                 $sum_price_all=0;
                                 foreach ($_SESSION['cart'] as $key => $value) {
                              ?>
                                  <li>
                                    <div class="cart-item">
                                       <div class="image"><img src="images/products/<?php echo $value['img']; ?>" alt="<?php echo $value['name']; ?>"></div>
                                       <div class="item-description">
                                          <p class="name"><?php echo $value['name']; ?></p>
                                          <p>Size: <span class="light-red">One size</span><br>Quantity: <span class="light-red"><?php echo $value['qty']; ?></span></p>
                                       </div>
                                       <div class="right">
                                          <p class="price"><?php echo number_format($sum_price_product=$value['price']*$value['qty']).'<sup style="color:red">đ</sup>'; ?></p>
                                          <a href="index.php?page=DelItemInCart&id=<?php echo $value['id']; ?>" class="remove"><img src="images/remove.png" alt="remove" onclick="return confirm('Bạn thực sự có muốn xóa sản phẩm này khỏi giỏ hàng không ?');" ></a>
                                       </div>
                                    </div>
                                 </li>
                              <?php 
                                 $sum_price_all+=$sum_price_product;
                                 }
                               ?>
                                 <li><span class="total">Total:  <strong><?php echo number_format($sum_price_all).'<span > VNĐ</span>';
                                  ?></strong></span><button class="checkout" onClick="location.href='checkout.html'">CheckOut</button></li>
                                   <?php
                            }
                            ?>
                              </ul>