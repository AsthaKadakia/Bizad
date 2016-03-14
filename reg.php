<?php
session_start();
$name=$_POST['name'];
$phn=$_POST['tel'];
$email=$_POST['email'];

require_once 'Connection.php';
//echo "\'$con\'";
mysql_select_db("test", $con);


$to = $email;
$subject = "Test mail";
$from = "aj23kadakia@gmail.com";
$headers = "From:" . $from;

$min=1000;
$max=10000;

$phn1= \rand($min,$max);
$email1= rand($min, $max);
$message="Your email address:".$to."  password:".$email1;
if(mail($to, $subject, $email1))
{
    $fp = fopen("myText.txt","wb");
     if( $fp == false ){
    }else{
    fwrite($fp,$message);
    fclose($fp);
    $_SESSION['flag']=true;
    $_SESSION['name']=$name;
    $_SESSION['email']=$email;
}
}
elseif ($to!="") {
    $fp = fopen("myText.txt","wb");
     if( $fp == false ){
    }else{
    fwrite($fp,$message);
    fclose($fp);
    $_SESSION['flag']=true;
    $_SESSION['name']=$name;
    $_SESSION['email']=$email;
}
}
 else {
    echo "error";
}
$sql="INSERT INTO registration
VALUES
('$name','$phn','$email','$email1','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null')";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
  
header('Location:Signin.php');

mysql_close($con);

