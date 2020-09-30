<?php 
// echo "user: ".$_REQUEST['user']."<br>";
// echo "pass: ".$_REQUEST['pass']."<br>";
// die();
echo "<pre>";
print_r($_POST);
echo "</pre>";

echo "user: ".$_POST['user']."<br>";
echo "pass: ".$_POST['pass']."<br>";
// die();
// echo "<pre>";
// print_r($_GET);
// echo "</pre>";

// echo "user: ".$_GET['user']."<br>";
// echo "pass: ".$_GET['pass']."<br>";

echo"<hr>";
echo 'Dữ Liệu Chúng Tôi Nhận Được Là <br/>';
foreach ($_POST as $key => $val)
{
    echo '<strong>' . $key . ' => ' . $val . '</strong><br/>';
}


 ?>