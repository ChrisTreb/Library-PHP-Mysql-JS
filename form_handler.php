<?php
    include 'connection.php';

    if(isset($_POST['submit'])) {
    $sql = "INSERT INTO book (id, title, kind, pages, cover, author, price, disponibility, intro)
    VALUES (?,?,?,?,?,?,?,?,?)";

    $stmt = $con->prepare($sql);
    $stmt->bind_param('ississdss', $id, $title, $kind, $pages, $cover, $author, $price, $disponibility, $intro);

    $id = intval($_POST['id']);
    $title = $_POST['title'];
    $kind = $_POST['kind'];
    $pages = intval($_POST['pages']);
    $cover = $_POST['cover'];
    $author = $_POST['author'];
    $price = floatval($_POST['price']);
    $disponibility = $_POST['disponibility'];
    $intro = $_POST['intro'];

    $stmt->execute();
    $stmt->close();
    $con->close();
    /* echo $id . "<br>" . $title . "<br> " . $kind . " <br>" . $pages . "<br>" . $cover . "<br>" . $author . "<br>" . $price . "<br>" . $disponibility . "<br>" . $intro; */
    }
?>