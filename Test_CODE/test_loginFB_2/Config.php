<?php

require_once 'Facebook/autoload.php';

if (!session_id())
{
    session_start();
}

// Call Facebook API

$facebook = new \Facebook\Facebook([
  'app_id'      => '1006323689780142',
  'app_secret'     => 'e170d11076659c29488f382747d5f873',
  'default_graph_version'  => 'v8.0'
]);

?>