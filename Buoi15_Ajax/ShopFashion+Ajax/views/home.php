              <div class="hot-products">
                  <h3 class="title"><strong>Hot</strong> Products</h3>
                  <div class="control"><a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot" class="next" href="#">&gt;</a></div>
                  <ul id="hot">
                     <li>
                        <div class="row">
                           <?php 
                              $proHot=getPro_Hot();
                              // echo "<pre>";
                              // print_r($proHot);
                              foreach ($proHot as $keyHot => $valueHot) {
                            ?>                          
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="#"><img src="images/products/<?php echo $valueHot['img']; ?>" alt="<?php echo $valueHot['name']; ?>"></a></div>
                                 <div class="productname"><?php echo $valueHot['name']; ?></div>
                                 <h4 class="price"><?php echo number_format($valueHot['price']).'<sup>đ</sup>'; ?></h4>
                                 <div class="button_group"><button class="button add-cart" type="button" value="<?php echo $valueHot['id']; ?>">Add To Cart</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <?php 
                              }
                            ?>
                        </div>
                     </li>
                  </ul>

               <div class="clearfix"></div>
               <div class="featured-products">
                  <h3 class="title"><strong>Featured </strong> Products</h3>
                  <div class="control"><a id="prev_featured" class="prev" href="#">&lt;</a><a id="next_featured" class="next" href="#">&gt;</a></div>
                  <ul id="featured">
                     <li>
                        <div class="row">
                           <?php 
                              $proFeatured=getPro_Featured();
                              // echo "<pre>";
                              // print_r($proFeatured);
                              foreach ($proFeatured as $keyFeatured => $valueFeatured) {
                                 ?>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="#"><img src="images/products/<?php echo $valueFeatured['img'];?>" alt="<?php  echo $valueFeatured['name'];?>"></a></div>
                                 <div class="productname"><?php  echo $valueFeatured['name']; ?></div>
                                 <h4 class="price"><?php echo number_format($valueFeatured['price']).'<sup style="color:red">đ</sup>'; ?></h4>
                                 <div class="button_group"><button class="button add-cart" type="button" value="<?php echo $valueFeatured['id']; ?>" >Add To Cart</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div> 
                           </div> 
                           <?php                               
                              }
                            ?>
                        </div>
                     </li>
                  </ul>
               </div>
               <div class="clearfix"></div>