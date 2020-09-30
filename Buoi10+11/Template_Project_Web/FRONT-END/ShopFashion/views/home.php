    <?php 

            // $json='{"10":{"id":"10","id_cate":"6","name":"V\u00e1y Body V02","price":"1250000","img":"products-02.png","quantity":"5","description":"M\u00f4 t\u1ea3 s\u1ea3n ph\u1ea9m V\u00e1y Body V02","date_creat":"2019-11-21 19:38:02","stt":"2","qty":1}}';
            // echo $json;
            // $b=json_decode($json,true);
            // echo "<pre>";
            // print_r($b);
            // echo "</pre>";
            // foreach ($b as $key1 => $value1) {
            //    $lam=getPrice($key1);
            //    echo "<pre>";
            //    print_r($lam);
            //    echo "</pre>";
            //    foreach ($lam as $price_val) {
            //       $price_update=$price_val;

            //    }
            //    foreach ($value1 as $key2 => $value2) {
            //       $b[$key1]['description']= $price_update;
            //    }

            // }


            // echo "<pre>";
            // print_r($b);
            // echo "</pre>";
            // $_SESSION['cart']=$b;

            echo "<br>";
            echo "<br>";
            echo "<br>";
            echo "<br>";
            echo "<pre>";
            print_r($_SESSION['cart']);
            echo "</pre>";


     ?>
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
                                 <div class="button_group"><a href="index.php?page=order&id=<?php echo $valueHot['id']; ?>"><button class="button add-cart" type="button">Add To Cart</button></a><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
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
                                 <div class="button_group"><a href="index.php?page=order&id=<?php echo $valueFeatured['id']; ?>"><button class="button add-cart" type="button">Add To Cart</button></a><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
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