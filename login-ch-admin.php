<?php
session_start();
$user=$_POST['user'];
$password=$_POST['password'];
$serverName = "localhost";
$userName = "root";
$userPassword = "";
$dbName = "driver_license";

 $conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
 $sql = "SELECT * FROM admin WHERE User='$user' AND Password='$password'";
 $query = mysqli_query($conn,$sql);
 $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
 if(!$result)
    echo "User and Password incorrect";
else{
    $_SESSION['User']=$result['User'];
    $_SESSION['adminname']=$result['Name'];
    session_write_close();
    header("location:admin/admin.php");
}
mysqli_close($conn);
?>