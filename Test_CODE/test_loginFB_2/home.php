<?php 
include_once'Config.php';

   if(!isset($_SESSION['user_idFB']) || empty($_SESSION['user_idFB'])){
  header("Location:index.php");
}

 ?>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>PHP Login using Facebook Account</title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
  
 </head>
 <body>
  <div class="container">
   <br />
   <h2 align="center">PHP Login using Facebook Account</h2>
   <br />
   <div class="panel panel-default">
         <?php 
   
     echo '<div class="panel-heading">Welcome User</div><div class="panel-body">';
     echo '<img src="'.$_SESSION["user_imageFB"].'" class="img-responsive img-circle img-thumbnail" />';
     echo '<h3><b>Name :</b> '.$_SESSION['user_nameFB'].'</h3>';
     echo '<h3><b>ID:</b> '.$_SESSION['user_idFB'].'</h3>';
     echo '<h3><b>Email :</b> '.$_SESSION['user_email_addressFB'].'</h3>';
     // echo $_SESSION['user_imageFB']."<br>";
     // echo $_SESSION['access_token'];

     
     echo '<h3><a href="logout.php">Logout</h3></div>';
   
    ?>
   </div>
  </div>
 </body>
</html>