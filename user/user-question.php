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

    <title>Driver License</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/navbar-top.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="user.php">Driver License</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="user.php">หน้าแรก<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin-admin.php">ความรู้สำหรับการสอบ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin-user.php">ทำข้อสอบ</a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <div class="container">
<form action="ch-answer.php" method="post">
<table class="table">
<?php
  $numberQ = [0,0,0,0,0];
  for($i = 0;$i<=4;$i++){
      $randomNumber = rand(1,10);
      if($i==0)
        $numberQ[$i]=$randomNumber;
      else{
      for($j=0;$j<=4;$j++){
        if($numberQ[$j]==$randomNumber){
          $randomNumber = rand(1,10);
          $j=0;
        }
      }
  }
    $numberQ[$i]=$randomNumber;
  }
  for($i=0;$i<=4;$i++){
    $sql = "SELECT * FROM question WHERE number='$numberQ[$i]'";
    $query = mysqli_query($conn,$sql);
    $result=mysqli_fetch_array($query);
  ?>

  <thead class="thead-dark">
    <tr>
      <th scope="col"><?php echo $result['question'] ?></th>
      <input type="hidden" name="line" value="4">
      <input type="hidden" name="q<?php echo $i; ?>" value="<?php echo $numberQ[$i]; ?>">
    </tr>
  </thead>
  <tbody>
<tr>
  <td>
    <div class="input-group">
      <div class="input-group-prepend">
      <div class="input-group-text">
      <input type="radio" name="<?php echo $i; ?>" value="1" >
      </div>
    </div>
    <input type="text" class="form-control" disabled="disabled" value="<?php echo $result['answer1'] ?>" >
    </div>
    <div class="input-group">
      <div class="input-group-prepend">
      <div class="input-group-text">
      <input type="radio" name="<?php echo $i; ?>" value="2">
      </div>
    </div>
    <input type="text" class="form-control" disabled="disabled" value="<?php echo $result['answer2'] ?>" >
    </div>
    <div class="input-group">
      <div class="input-group-prepend">
      <div class="input-group-text">
      <input type="radio" name="<?php echo $i; ?>" value="3">
      </div>
    </div>
    <input type="text" class="form-control" disabled="disabled" value="<?php echo $result['answer3'] ?>" >
    </div>
    <div class="input-group">
      <div class="input-group-prepend">
      <div class="input-group-text">
      <input type="radio" name="<?php echo $i; ?>" value="4">
      </div>
    </div>
    <input type="text" class="form-control" disabled="disabled" value="<?php echo $result['answer4'] ?>" >
    </div>
  </td>
</tr>
<?php
}
?>
  </tbody>
  
</table>
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
