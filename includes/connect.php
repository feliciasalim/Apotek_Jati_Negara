<?php
    if(!isset($_SESSION)){
        session_start();
    }

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $database = 'apotek_jati_negara';

    $conn = mysqli_connect($host, $user, $pass, $database);

    if($conn ->connect_error){
        die("Connection Error".$conn ->connect_error);
    } 
?>