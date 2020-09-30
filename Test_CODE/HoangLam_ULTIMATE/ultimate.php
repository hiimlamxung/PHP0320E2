<?php 
$json=json_encode($_SESSION['cart']);
            echo $json;
            $b=json_decode($json,true);
            echo "<pre>";
            print_r($b);
            echo "</pre>";
            foreach ($b as $key1 => $value1) {
               $gia=getPrice($key1);
               // echo "<pre>";
               // print_r($gia);
               // echo "</pre>";
               foreach ($gia as $price_val) {
                  $price_update=$price_val;

               }
               foreach ($value1 as $key2 => $value2) {
                  $b[$key1]['description']= $price_update;
               }

            }


            echo "<pre>";
            print_r($b);
            echo "</pre>";
            $_SESSION['cart']=$b;

            echo "<br>";
            echo "<br>";
            echo "<br>";
            echo "<br>";
            echo "<pre>";
            print_r($_SESSION['cart']);
            echo "</pre>";
            // header("Location:index.php");


 ?>