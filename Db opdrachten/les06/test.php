<?php

require_once('dbdata.php');

function ConnectToDatabase($databaseName, $dbUser, $dbPassword, $dbHost){
    $conn = new mysqli($databaseName, $dbUser, $dbPassword, $dbHost);
    if($conn->connect_error)
    {
        echo "error try again \r\n";
    }

    echo "connected to database\r\n";
    return $conn;
}

