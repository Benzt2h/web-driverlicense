<?php
session_start();
$user=$_POST['user'];
$password=$_POST['password'];
$serverName = "localhost";
$userName = "root";
$userPassword = "";
$dbName = "driver_license";

 $conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
 $sql = "SELECT * FROM member WHERE user='$user' AND Password='$password'";
 $query = mysqli_query($conn,$sql);
 $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
 if(!$result)
 header("location:login-admin.php");
else{
    $_SESSION['User']=$result['user'];
    $_SESSION['adminname']=$result['name'];
    $_SESSION['status']="user";
    session_write_close();
    header("location:index.php");
}
mysqli_close($conn);
?>