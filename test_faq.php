<?php

/* @var $_POST type */
$name=$_POST['name'];
$email=$_POST['email'];
$quest=$_POST['comment'];

require_once 'Connection.php';

$s="Select faqid from faq";
$r=  mysql_query($s);
while ($rw= mysql_fetch_array($r)) 
{
    $id=$rw['faqid'];
    
}
$i=$id+1;

$date= date('d/m/y h:i:s');

$sql="INSERT INTO faq VALUES($i,'$name','$quest','$email','$date')";
if (!mysql_query($sql,$con))
  {
   
  die('Error: ' . mysql_error());
  }
  else
  {
      header("Location:FAQ.php");
  }
mysql_close($con);