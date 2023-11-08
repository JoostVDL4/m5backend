<?php

function FindLeerling($conn,$name)
{
    $q ="select * from leerlingen where naam = '$name'; ";
    $stmt = $conn->prepare($q);
    $stmt->execute();
    $result = $stmt->get_result();
    if($result)
    {
        for($i=0; $i < $result->num_rows; $i++)
        {
            $row = $result->fetch_assoc();
            print_r($row);
        }
    }
}