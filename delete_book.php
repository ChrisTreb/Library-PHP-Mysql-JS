<?php
    include 'connection.php';
    
    // Suppression d'un livre

    if (!isset($_GET['Action'])) $_GET['Action']="";

    $Action=$_GET['Action'];

    if ($Action=="Suppression") {
        $id=$_GET['id'];
        $Requete_Supp_Livre = "DELETE from book WHERE id ='$id'";
        mysqli_query($con,$Requete_Supp_Livre);
        header("Location: index.php");
        exit;
    }
?>