<?php
 $serverName = "localhost";
 $userName = "root";
 $userPassword = "";
 $dbName = "driver_license";

  $conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
  $sql = "SELECT * FROM question";
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
        <a href="../logout.php" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
      </div>
    </nav>
    <a href="add_question.php" class="btn btn-success" >เพิ่มคำถาม</a>
<div class="container">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Question</th>
      <th scope="col">Answer1</th>
      <th scope="col">Answer2</th>
      <th scope="col">Answer3</th>
      <th scope="col">Answer4</th>
      <th scope="col">Correct Answer</th>
      <th scope="col">Process</th>
    </tr>
  </thead>
  <tbody>
<?php
while($result=mysqli_fetch_array($query)):
?>
<tr>
    <td><?php echo $result['number']?></td>
    <td><?php echo $result['question']?></td>
    <td><?php echo $result['answer1']?></td>
    <td><?php echo $result['answer2']?></td>
    <td><?php echo $result['answer3']?></td>
    <td><?php echo $result['answer4']?></td>
    <td><?php echo $result['correct_answer']?></td>
    <td>
    <a href="edit_question.php?id=<?php echo $result['number']?>" class="btn btn-success" >Edit</a>
    <a href="del_question.php?id=<?php echo $result['number']?>" class="btn btn-danger" onclick="return confirm('คุณต้องการลบข้อมูลที่เลือก')">del</a></td>
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
