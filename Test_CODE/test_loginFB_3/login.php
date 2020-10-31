<?php 
	session_start();
	require_once 'vendor/autoload.php';
$fb = new Facebook\Facebook([
  'app_id' => '1006323689780142', // Replace {app-id} with your app id
  'app_secret' => 'e170d11076659c29488f382747d5f873',
  'default_graph_version' => 'v8.0',
  ]);

$helper = $fb->getRedirectLoginHelper();

$permissions = ['email']; // Optional permissions
$callbackUrl = htmlspecialchars('http://localhost/PHP0320E2/Test_CODE/test_loginFB_3/fb-callback.php');
$loginUrl = $helper->getLoginUrl($callbackUrl, $permissions);

echo '<a href="' . $loginUrl . '">Log in with Facebook!</a>';

 ?>