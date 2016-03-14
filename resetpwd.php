<?php
session_start();
require_once 'Connection.php';
$newpwd=$_POST['password'];
$confirmpwd=$_POST['repassword'];
$email=$_SESSION['email'];
if($newpwd==$confirmpwd)
{
    $result = mysql_query("UPDATE registration set password='$newpwd' where email ='$email'");
    if (!$result){
        die('Error: ' . mysql_error());
    }
    else
    {
        header("Location:UserProfileRegistration.php");
    }
   
}
else
{
    echo "password not matched";
}
