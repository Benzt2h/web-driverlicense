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
            <a class="nav-link" href="user-question.php">ทำข้อสอบ</a>
          </li>
        </ul>
        <?php
            session_start();
            if(!isset($_SESSION['User'])){
        ?>
        <a href="register.php" class="btn btn-outline-success my-2 my-sm-0">สมัครสมาชิก</a>
        <a href="login.php" class="btn btn-outline-success my-2 my-sm-0">Login</a>
        <?php
            }
            else {
        ?>
        <a href="logout.php" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
            <?php } ?>
      </div>
    </nav>

    <main role="main" class="container">
        <div class="container">
        <form action="register_update.php" method="post">
         <div class="form-group">
            <label for="id">ID</label>
            <input type="text" class="form-control" name="id">
         </div>
         <div class="form-group">
            <label for="pass">Password</label>
            <input type="text" class="form-control" name="pass">
         </div>
         <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name">
         </div>
            <button type="submit" class="btn btn-primary">Submit</button>
         </form>
         </div>
    </main>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js" ></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>