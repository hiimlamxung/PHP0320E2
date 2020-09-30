<?php
//index.php


include_once'Config.php';

if(isset($_SESSION['user_idFB']) || !empty($_SESSION['user_idFB'])){
  header("Location:home.php");
}

$facebook_output = '';

$facebook_helper = $facebook->getRedirectLoginHelper();

if(isset($_GET['code']))
{
 if(isset($_SESSION['access_token']))
 {
  $access_token = $_SESSION['access_token'];
 }
 else
 {
  $access_token = $facebook_helper->getAccessToken();

  $_SESSION['access_token'] = $access_token;

  $facebook->setDefaultAccessToken($_SESSION['access_token']);
 }



 $graph_response = $facebook->get("/me?fields=name,email", $access_token);

 $facebook_user_info = $graph_response->getGraphUser();

 // $graphObject = $graph_response->getGraphObject();
     // $fbid = $graphObject->getProperty('id');           // lấy Facebook ID
      //     $fbfullname = $graphObject->getProperty('name');   // lấy tên đầy đủ
      // $femail = $graphObject->getProperty('email');      // lấy email ID




 if(!empty($facebook_user_info['id']))
 {
  $_SESSION['user_idFB'] = $facebook_user_info['id'];
  // $_SESSION['user_imageFB'] = 'http://graph.facebook.com/'.$facebook_user_info['id'].'/picture';

  $getData_url_img = file_get_contents("https://graph.facebook.com/".$_SESSION['user_idFB']."/?fields=picture&type=large&access_token=".$_SESSION['access_token']);
  $avt=json_decode($getData_url_img,true);
  $_SESSION['user_imageFB']=$avt['picture']['data']['url'];
 }


 if(!empty($facebook_user_info['name']))
 {
  $_SESSION['user_nameFB'] = $facebook_user_info['name'];
 }

 if(!empty($facebook_user_info['email']))
 {
  $_SESSION['user_email_addressFB'] = $facebook_user_info['email'];
 }
 
}
else
{
 // Get login url
    $facebook_permissions = ['email']; // Optional permissions

    $facebook_login_url = $facebook_helper->getLoginUrl('http://localhost/PHP0320E2/Test_CODE/test_loginFB_2/', $facebook_permissions);
    
    // Render Facebook login button
    $facebook_login_url = '<div align="center"><a href="'.$facebook_login_url.'"><img src="https://lh3.googleusercontent.com/proxy/us14JD-x0Yl0eun6l6EPSYQTOTkYGnNQCIMXTmRtQSNc_y4TN4kroXD3ZOG66OHPCLQ5rOusMk_kARFzUSBzlxSFe_-mwWo" /></a></div>';
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
    if(isset($facebook_login_url))
    {
     echo $facebook_login_url;
    }
    else
    {
      header("Location:home.php");
     echo '<div class="panel-heading">Welcome User</div><div class="panel-body">';
     echo '<img src="'.$_SESSION["user_imageFB"].'" class="img-responsive img-circle img-thumbnail" />';
     echo '<h3><b>Name :</b> '.$_SESSION['user_nameFB'].'</h3>';
     echo '<h3><b>ID:</b> '.$_SESSION['user_idFB'].'</h3>';
     echo '<h3><b>Email :</b> '.$_SESSION['user_email_addressFB'].'</h3>';
     
     echo '<h3><a href="logout.php">Logout</h3></div>';
    }
    ?>
   </div>
  </div>
 </body>
</html>