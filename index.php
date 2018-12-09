<?php
  include 'connection.php';
?> 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">

    <title>Les éditions du Microbe</title>
    
    <!--CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <!--JS-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </head>

  <body>
    <div class="wrapper container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="container-fluid">
            <button class="btn btn-dark">Toggle form</button>
            <a href='delete_all.php?Action=delete_all' title='Supprimer'><img class='bin' src='images/delete.png' alt='Supprimer'/></a>
            <?php
              include 'books.php';
            ?>
          </div>
        </div>

        <div class="col-md-6 add_book">
          <div class="container-fluid">
          <h2>Add a book</h2>
          <form method="post">
              <div class="form-group">
                <label for="id">ID*</label>
                <input type="number" name="id" class="form-control" id="id" placeholder="Book ID" required="required">
              </div>
              <div class="form-group">
                <label for="title">Title*</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="Book title" required="required">
              </div>
              <div class="form-group">
                <label for="kind">Type*</label>
                <select class="form-control" id="kind" name="kind" type="text">
                  <option>Recueil</option>
                  <option>Nouvelle</option>
                  <option>BD</option>
                </select>
              </div>
              <div class="form-group">
                <label for="pages">Pages number*</label>
                <input type="number" name="pages" class="form-control" id="pages" placeholder="Pages number" required="required">
              </div>
              <div class="form-group">
                <label for="cover">Cover image URL*</label>
                <input type="text" name="cover" class="form-control" id="cover" placeholder="Book cover URL" required="required">
              </div>
              <div class="form-group">
                <label for="author">Author name</label>
                <input type="text" name="author" class="form-control" id="author" placeholder="Author name" required="required">
              </div>
              <div class="form-group">
                <label for="price">Price*</label>
                <input type="number" name="price" class="form-control" id="price" placeholder="Book price" step="any" required="required">
              </div>
              <div class="form-group">
                <label for="disponibility">Disponibility*</label>
                <select class="form-control" id="disponibility" name="disponibility">
                  <option>oui</option>
                  <option>non</option>
                </select>
              </div>
              <div class="form-group">
                <label for="intro">Introduction</label>
                <textarea class="form-control" id="intro" name="intro" type="text" rows="5" placeholder="Write intro text here"></textarea>
              </div>
              <button type="submit" name="submit" class="btn btn-primary">Save book in DB</button>
            </form>

            <!-- FORM PHP HANDLER -->

            <?php
              include 'form_handler.php';
            ?>
          </div>
        </div>

      </div>
    </div>

    <!-- JQUERY -->
    <script
			  src="https://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>
    <script src="js/main.js"></script>

  </body>
</html>
