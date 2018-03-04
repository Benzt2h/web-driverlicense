<?php
 $serverName = "localhost";
 $userName = "root";
 $userPassword = "";
 $dbName = "driver_license";

  $conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
  $sql = "SELECT * FROM member";
  $query = mysqli_query($conn,$sql);
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
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
    <a href="add_user.php" class="btn btn-success" >เพิ่มสมาชิก</a>
<div class="container">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Pass</th>
      <th scope="col">Name</th>
      <th scope="col">Score</th>
      <th scope="col">Process</th>
    </tr>
  </thead>
  <tbody>
<?php
while($result=mysqli_fetch_array($query)):
?>
<tr>
    <td><?php echo $result['user']?></td>
    <td><?php echo $result['password']?></td>
    <td><?php echo $result['name']?></td>
    <td><?php echo $result['score']?></td>
    <td>
    <a href="edit_user.php?id=<?php echo $result['user']?>" class="btn btn-success" >Edit</a>
    <a href="del_user.php?id=<?php echo $result['user']?>" class="btn btn-danger" onclick="return confirm('คุณต้องการลบข้อมูลที่เลือก')">del</a></td>
</tr>
<?php
endwhile;
?>
  </tbody>
</table>

</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../js/jquery.js" ></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
