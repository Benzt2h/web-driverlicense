<?php
require 'config.php';
$score=0;

for($i=0;$i<=$_POST['line'];$i++){
    echo $_POST['q'.$i]." = ".$_POST[$i]."</br>";
    $Q=$_POST['q'.$i];
    $A=$_POST[$i];
    $sql = "SELECT * FROM question WHERE number='$Q' and correct_answer='$A'";
    $query = mysqli_query($conn,$sql);
    $result=mysqli_fetch_array($query);
    if($result)
    $score++;
}
echo $score;
?>