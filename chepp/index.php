<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="./js/main.js"></script>
    <title>Pirodic Properties</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="./index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./admin/">Admin Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
<div class="container">
    <div class="banner">
        <span><i class="fas fa-bong"></i></span>
        <span><i class="fas fa-atom"></i></span>
        <span><i class="fas fa-flask"></i></span>
    </div>
    <div class="search">
        <div class="huge"><span class="monster">মৌলের ধর্মাবলি খুজুন</span></div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">পারমানবিক সংকেতের মাধ্যমে</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">পারমানবিক সংখ্যার মাধ্যমে</a>
        </li>
        </ul>
        <form action="./property.php" method="get">
            <div class="tab-content" style="text-align:center">
                <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">

                <input class="form-control form-control-lg" type="text" id="myInput" onkeyup="searchIndex()" placeholder="পারমানবিক সংকেত লিখুন" title="Type in a name">

                <ul id="myUL">
                
                <?php
                  require_once "config.php";
                  $sql = "SELECT `number`,`symbol` FROM `sheet1` WHERE 1";
                  $result = $mysqli->query($sql);
                  if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                      echo "<li><a href='./property.php?id=".$row["number"]."'>".$row["symbol"]."</a></li>";
                    }
                  }
                ?>
                </ul>
 


                </div>
                <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <input class="form-control form-control-lg" type="text" name="id" id="an" placeholder="পারমানবিক সংখ্যা লিখুন (১-১১৮)">
                <input class="btn btn-outline-dark my-6 my-sm-2" type="submit" value="Search">
                </div>
            </div>
        </form>
        <script>
        $(function () {
            $('#myTab li:last-child a').tab('show')
        })
        </script>
    </div>
</div>
</body>
<footer class="container-fluid text-center">
<button onclick="topFunction()" id="backToTop" title="Go to top"><i class="far fa-arrow-alt-circle-up"></i></button>
  <span>2018-<?php echo date('y'); ?> © By <a href="mailto:surajit14@cse.pstu.ac.bd" title="contact project manager">SURAJIT BISWAS</a></span>
</footer>
</html>