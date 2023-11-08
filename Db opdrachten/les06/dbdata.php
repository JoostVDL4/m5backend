<?php

$envSettings = [];
    if (file_exists(dirname(__FILE__).'/.env')) {
        $envSettings = parse_ini_file(dirname(__FILE__).'/.env');
    }
// als file bestaat, dan wordt envSettings een ini file?

$databaseName = $envSettings["DB_NAME"];
$dbUser =  $envSettings["DB_USER"];
$dbPassword =  $envSettings["DB_PASSWORD"];
$dbHost = $envSettings["DB_HOST"];



?>