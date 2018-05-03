<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Driver License</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/navbar-top.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="index.php">Driver License</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">หน้าแรก<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="video.php">วีดีโออบรมเตรียมก่อนทำข้อสอบพร้อมข้อสอบ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="user-question.php.php">ทำข้อสอบ</a>
          </li>
        </ul>
        <a href="../logout.php" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
      </div>
    </nav>

    <div class="container">
    <?php
      session_start();
      if($_SESSION['status']=="admin"){
        echo "Admin ไม่สามารถบันทึกคะแนนได้"; 
      }else{
        require 'config.php';
        $score=0;

        for($i=0;$i<=$_POST['line'];$i++){
       // echo $_POST['q'.$i]." = ".$_POST[$i]."</br>";
        $Q=$_POST['q'.$i];
        $A=$_POST[$i];
        $sql = "SELECT * FROM question WHERE number='$Q' and correct_answer='$A'";
        $query = mysqli_query($conn,$sql);
        $result=mysqli_fetch_array($query);
        if($result)
        $score++; 
        }
        echo $score;
      }
      ?>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js" ></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
