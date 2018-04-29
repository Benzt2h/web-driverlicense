<?php
$id = $_GET['id'];
$serverName = "localhost";
$userName = "root";
$userPassword = "";
$dbName = "driver_license";

 $conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
 $sql = "SELECT * FROM member WHERE user='$id'";
 $query = mysqli_query($conn,$sql);
 $result=mysqli_fetch_array($query);
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/navbar-top.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="admin.php">Admin Page</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="admin.php">หน้าแรก<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin-admin.php">จัดการแอดมิน</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin-user.php">จัดการสมาชิก</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin-question.php">จัดการข้อสอบ</a>
          </li>
        </ul>
        <a href="../logout.php" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
      </div>
    </nav>
<div class="container">
<form action="update_user.php" method="post">
  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control" readonly name="id" value="<?php echo $result['user']?>">
  </div>
  <div class="form-group">
    <label for="pass">Password</label>
    <input type="text" class="form-control" name="pass" value="<?php echo $result['password']?>">
  </div>
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" name="name" value="<?php echo $result['name']?>">
  </div>
  <div class="form-group">
    <label for="score">Score</label>
    <input type="text" class="form-control" name="score" value="<?php echo $result['score']?>">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../js/jquery.js" ></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
