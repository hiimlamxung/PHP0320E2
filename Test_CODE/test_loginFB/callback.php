<?php 
	session_start();

	$app_id="683401542290230";
	$app_secret="c5079e97cdc6b71d502e1636e2822d9f";
	$redirect_uri=urlencode("http://localhost/PHP0320E2/test_loginFB/callback.php");

	$code=$_GET['code'];

	$facebook_access_token_uri="https://graph.facebook.com/v2.8/oauth/access_token?client_id=app_id&redirect_uri=$redirect_uri&client_secret=$app_secret&code=$code";

	$ch=curl_init();
	curl_setopt($ch,CURLOPT_URL, $facebook_access_token_uri);
	curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch,CURLOPT_SSL_VERIFYPEER, FALSE);

	$response=curl_exec($ch);
	curl_close($ch);

	echo $response;
	$aResponse=json_encode($response);
	$access_token=$aResponse->access_token;

	$ch=curl_init();
	curl_setopt($ch, CURLOPT_URL, "https://graph.facebook.com/me?access_token=$access_token");
	curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch,CURLOPT_SSL_VERIFYPEER, FALSE);

	$response=curl_exec($ch);
	curl_close($ch);

	$user= json_decode($response);

	$_SESSION['user_login']=true;
	$_SESSION['user_name']=$user->name;
	echo "Wellcome ".$user->name." !";


 ?>