
               <div class="row">

                  <div class="col-md-2 col-sm-2">
                     <div class="logo"><a href="index.php"><img src="images/logo.png" alt="FlatShop"></a></div>
                  </div>

                  <div class="col-md-10 col-sm-10">
                     <div class="clearfix"></div>
                     <div class="header_bottom">
                        <ul class="option">
                           <li id="search" class="search">
                              <form><input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search"></form>
                           </li>
                           <li class="option-cart" id="cart-home">
                              <a href="index.php?page=cart" class="cart-icon">cart <span class="cart_no"><?php
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
                           
                           </li>
                        </ul>

                        <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
                        <div class="navbar-collapse collapse">
                           <ul class="nav navbar-nav">
                              <li class="active dropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Home</a>
                                 <div class="dropdown-menu">
                                    <ul class="mega-menu-links">
                                       <li><a href="index.html">home</a></li>
                                       <li><a href="home2.html">home2</a></li>
                                       <li><a href="home3.html">home3</a></li>
                                       <li><a href="productlitst.html">Productlitst</a></li>
                                       <li><a href="productgird.html">Productgird</a></li>
                                       <li><a href="details.html">Details</a></li>
                                       <li><a href="cart.html">Cart</a></li>
                                       <li><a href="DataLayout/checkout.php">CheckOut</a></li>
                                       <li><a href="checkout2.html">CheckOut2</a></li>
                                       <li><a href="contact.html">contact</a></li>
                                    </ul>
                                 </div>
                              </li>
                              <li><a href="productgird.html">men</a></li>
                              <li><a href="productlitst.html">women</a></li>
                              <li class="dropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Fashion</a>
                                 <div class="dropdown-menu mega-menu">
                                    <div class="row">
                                       <div class="col-md-6 col-sm-6">
                                          <ul class="mega-menu-links">
                                             <li><a href="productgird.html">New Collection</a></li>
                                             <li><a href="productgird.html">Shirts & tops</a></li>
                                             <li><a href="productgird.html">Laptop & Brie</a></li>
                                             <li><a href="productgird.html">Dresses</a></li>
                                             <li><a href="productgird.html">Blazers & Jackets</a></li>
                                             <li><a href="productgird.html">Shoulder Bags</a></li>
                                          </ul>
                                       </div>
                                       <div class="col-md-6 col-sm-6">
                                          <ul class="mega-menu-links">
                                             <li><a href="productgird.html">New Collection</a></li>
                                             <li><a href="productgird.html">Shirts & tops</a></li>
                                             <li><a href="productgird.html">Laptop & Brie</a></li>
                                             <li><a href="productgird.html">Dresses</a></li>
                                             <li><a href="productgird.html">Blazers & Jackets</a></li>
                                             <li><a href="productgird.html">Shoulder Bags</a></li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li><a href="productgird.html">gift</a></li>
                              <li><a href="productgird.html">kids</a></li>
                              <li><a href="productgird.html">blog</a></li>
                              <li><a href="productgird.html">jewelry</a></li>
                              <li><a href="contact.html">contact us</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
