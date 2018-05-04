<?php
session_start();
 require 'config.php';
 $user = $_POST['user'];
 $password = $_POST['password'];
 $sql = "SELECT * FROM admin WHERE User='$user' AND Password='$password'";
 $query = mysqli_query($conn,$sql);
 $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
 if(!$result){
 header("location:login-admin.php");}
else{
    $_SESSION['User']=$result['User'];
    $_SESSION['adminname']=$result['Name'];
    $_SESSION['status']="admin";
    session_write_close();
    header("location:admin/admin.php");
}
mysqli_close($conn);
?>