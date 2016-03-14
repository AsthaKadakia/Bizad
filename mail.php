<?php

$to = "jeetendravaghela56@gmail.com";
$subject = "Test mail";
$from = "aj23kadakia@gmail.com";
$headers = "From:" . $from;

$min=1000;
$max=10000;

$phn= rand($min,$max);
$email1= rand($min, $max);
$message="Your email address:".$to."\n password:".$email1;
if(mail($to, $subject, $message))
{
    $fp = fopen("myText.txt","wb");
     if( $fp == false ){
    }else{
    fwrite($fp,$email1);
    fclose($fp);
    $_POST['code']=$email1;
    }
}
else 
{
    $fp = fopen("myText.txt","wb");
     if( $fp == false ){
    }else{
    fwrite($fp,$email1);
    fclose($fp);
    $_POST['code']=$email1;
    }
}