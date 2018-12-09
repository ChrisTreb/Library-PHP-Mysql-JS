<?php
    include 'connection.php';
    
    // Suppression des données de la table book

    if (!isset($_GET['Action'])) $_GET['Action']="";

    $Action=$_GET['Action'];

    if ($Action=="delete_all") {
        $Requete_Supp_Table = "TRUNCATE TABLE book";
        mysqli_query($con,$Requete_Supp_Table);
        header("Location: index.php");
        exit;
    }
?>