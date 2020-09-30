<?php
   ob_start();//Haàm fix lỗi cho hàm header(gọi hàm header mà lỗi không chuyển được trang)mà mình vừa gặp;
   session_start();
   include_once'Config/MyConFig.php'; 
   include_once'function/MyFunction.php';
   
 ?>
<!DOCTYPE html>
<html>
<?php 
   include_once "layout/header.php";
 ?>
   <body id="home">
      <div class="wrapper">
         <div class="header">
            <div class="container">
               <?php include_once"layout/banner.php"; ?>
            </div>
         </div>
         <div class="clearfix"></div>

         <?php include_once"layout/slides.php"; ?>
         <div class="clearfix"></div>
         <div class="container_fullwidth">
            <div class="container">
               <p id="test"></p>
              <?php 
              echo "<pre>";
              print_r($_SESSION['cart']);
                  if(isset($_GET['page'])){
                     $page = $_GET['page'];
                  }else{
                     $page = 'home';
                  }
                  if (file_exists('views/'.$page.'.php')) { // kiểm tra xem file có tồn tại trong folder view hay không
                     include_once 'views/'.$page.'.php';
                  }else{
                     echo "<h2 style='color: red;'>ERROR 404, trang không tồn tại</h2><a href='index.php'>Quay lại</a>";
                  }



               ?>

               <?php include_once"layout/our-brand.php"; ?>
            </div>
         </div>
         <div class="clearfix"></div>
         <?php include_once"layout/footer.php"; ?>
      </div>
      <!-- Bootstrap core JavaScript==================================================-->
     <script src="//code.jquery.com/jquery.js"></script>
	  <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
	  <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="js/script.min.js" ></script>
     <script src="js/MyJs.js"></script>
     
   </body>
</html>