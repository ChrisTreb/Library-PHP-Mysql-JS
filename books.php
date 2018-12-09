<?php
    $sql = "SELECT id, title, pages, intro, cover, author, disponibility, price, kind FROM book";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $id = $row["id"];
        echo "
        <div class='container book'>
            <img class='img-fluid' src='". $row["cover"] . "' />
            <div class='book-container'>
                <h2>". $row["id"] ." - " . $row["title"] . "</h2>
                <br>
                <p>" . $row["intro"] . "</p>
                <br>
                Type : " . $row["kind"] . "
                <br>
                Auteur : " . $row["author"] . "
                <br>
                Pages : " . $row["pages"] . "
                <br>
                Disponible : " . $row["disponibility"] . "
                <br>
                Prix : " . $row["price"] . "€
                <br>
                <a href='delete_book.php?Action=Suppression&id=$id' title='Supprimer'><img class='bin' src='images/delete.png' alt='Supprimer'/></a>
            </div>
        </div>";
    }
    } else {
    echo "<p style='font-size: 40px; textalign: center; padding: 10%'>Base de données vide...</p>";
    }

    $con->close();
?>