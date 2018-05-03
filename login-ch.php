<?php
session_start();
require 'config.php';
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