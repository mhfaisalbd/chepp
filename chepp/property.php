<?php
    $number = isset($_GET['id'])? $_GET['id'] : 1;
?>
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
<div class="huge"><span class="monster">মৌলের ধর্মাবলি</span></div>
<?php

    require_once "config.php";
    $sql = "SELECT * FROM `sheet1` WHERE `number` = ".$number;
    $result = $mysqli->query($sql);
    if ($result->num_rows > 0) {
        if($row = $result->fetch_assoc()) {
            ?>
            <table class="table table-hover table-striped">
                <tr>
                    <td>পারমানবিক সংখ্যা</td>
                    <td><?php echo $row["number"]; ?></td>
                </tr>
                <tr>
                    <td>পারমানবিক সংকেত</td>
                    <td><b><?php echo $row["symbol"]; ?></b></td>
                </tr>
                <tr>
                    <td>IUPAC নাম</td>
                    <td><?php echo $row["en_name"]; ?></td>
                </tr>
                <tr>
                    <td>অবস্থান</td>
                    <td><?php echo $row["period"]."(তম) পর্যায়, ".$row["group_old"]." গ্রুপ"; ?></td>
                </tr>
                <tr>
                    <td>IUPAC গ্রুপ</td>
                    <td><?php echo $row["group_new"]; ?></td>
                </tr>
                <tr>
                    <td>পারমানবিক ভর</td>
                    <td><?php echo $row["atomic_mass"]; ?></td>
                </tr>
                <tr>
                    <td>গলনাংক</td>
                    <td><?php echo $row["mp"]." °C"; ?></td>
                </tr>
                <tr>
                    <td>স্ফুটনাংক</td>
                    <td><?php echo $row["bp"]." °C"; ?></td>
                </tr>
                <tr>
                    <td>কক্ষতাপমাত্রায় প্রকৃতি</td>
                    <td><?php
                    
                    if ($row["state"]== "s")
                        echo "Solid"; 
                    else if ($row["state"]== "l")
                        echo "Liquid";
                    else if ($row["state"]== "g")
                        echo "Gas";
                    ?></td>
                </tr>
                <tr>
                    <td>ঘনত্ব</td>
                    <td><?php echo $row["density"]." g/mL"; ?></td>
                </tr>
                <tr>
                    <td>তড়িৎ ঋণাত্বকতা</td>
                    <td><?php echo $row["en"]." (Pauling স্কেল অনুযায়ী)"; ?></td>
                </tr>
                <tr>
                    <td>আয়নিকরণ শক্তি (eV)</td>
                    <td><?php echo "১ম: ".$row["iev1"].";    ২য়: ".$row["iev2"].";    ৩য়: ".$row["iev3"]; ?></td>
                </tr>
                <tr>
                    <td>আয়নিকরণ শক্তি (kJ/mol)</td>
                    <td><?php echo "১ম: ".$row["ie1"].";    ২য়: ".$row["ie2"].";    ৩য়: ".$row["ie3"]; ?></td>
                </tr>
                <tr>
                    <td>ইলেকট্রন আসক্তি</td>
                    <td><?php echo $row["eav"]." eV; ".$row["ea"]." kJ/mol"; ?></td>
                </tr>
                <tr>
                    <td>জারণ সংখ্যা</td>
                    <td><?php echo $row["cos"]; ?></td>
                </tr>
                <tr>
                    <td>ইলেকট্রন বিন্যাস</td>
                    <td><?php echo $row["pec"]; ?></td>
                </tr>
                <tr>
                    <td>ইলেকট্রন বিন্যাস (পরিলক্ষিত)</td>
                    <td><?php echo $row["oec"]; ?></td>
                </tr>
                <tr>
                    <td>ব্যাসার্ধ</td>
                    <td><?php echo "পারমানবিক: ".$row["ar"]."Å or ".$row["arpm"]." Picometre; আয়নিক: ".$row["ir"]."Å; সমযোজী: ".$row["cr"]."Å"; ?></td>
                </tr>
                <tr>
                    <td>পারমানবিক আয়তন</td>
                    <td><?php echo $row["avpm"]." cm<sup>3</sup>/mol"; ?></td>
                </tr>
                <tr>
                    <td>কেলাস গঠন</td>
                    <td><?php echo $row["crystal"]; ?></td>
                </tr>
                <tr>
                    <td>বর্ণ</td>
                    <td><?php echo $row["color"]; ?></td>
                </tr>
                <tr>
                    <td>বৈশিষ্ট্যসমূহ</td>
                    <td><?php echo $row["characteristics"]; ?></td>
                </tr>
                <tr>
                    <td>ব্যাবহারসমূহ</td>
                    <td><?php echo $row["uses"]; ?></td>
                </tr>
                <tr>
                    <td>পোলারায়ন ক্ষমতা</td>
                    <td><?php echo $row["polarizability"]; ?></td>
                </tr>
                <tr>
                    <td>পরমাণুকরণ তাপ</td>
                    <td><?php echo $row["heat_atomization"]." kJ/mol"; ?></td>
                </tr>
                <tr>
                    <td>আবিষ্কার</td>
                    <td><?php echo $row["year_discovered"]." খৃষ্টাব্দ"; ?></td>
                </tr>

            </table>
        <?php  
            //echo "<li><a href='./property.php?id=".$row["number"]."'>".$row["symbol"]."</a></li>";
        }
    }
?>
<div class="buttom">
    <div class="prev"><a href= <?php echo "'./property.php?id=".($number-1)."'";?> <?php echo $number <= 1? "class='disabled'":"";?>><i class="fas fa-chevron-left"></i> Previous</a></div>
    <div class="next"><a href= <?php echo "'./property.php?id=".($number+1)."'";?> <?php echo $number >= 118? "class='disabled'":"";?>>Next <i class="fas fa-chevron-right"></i></a></div>
    
</div>
</div>
</body>
<footer class="container-fluid text-center">
<button onclick="topFunction()" id="backToTop" title="Go to top"><i class="far fa-arrow-alt-circle-up"></i></button>
  <span>2018-<?php echo date('y'); ?> © By <a href="mailto:surajit14@cse.pstu.ac.bd" title="contact project manager">SURAJIT BISWAS</a></span>
</footer>
</html>