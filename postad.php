<?php

require_once 'Connection.php';

$email=$_SESSION['email'];

$category=$_POST['termid'];
$title=$_POST['post_title'];
$loc=$_POST['post_location'];
$desc=$_POST['desc'];
$ownername=$_POST['owner_name'];
$owneremail=$_POST['owner_email'];
$ownerphone=$_POST['owner_phone'];
$tags=$_POST['post_tags'];
$url=$_POST['post_url'];
$img=$_POST['img'];
$code=$_POST['coupon_code'];

$s="Select advertisementID from advertisement";
$r=  mysql_query($s);
while ($rw= mysql_fetch_array($r)) 
{
    $id=$rw['advertisementID'];
    
}
$i=$id+1;

$a="Select * from category where CategoryName= LIKE %$category%";
$b=  mysql_query($s);
while($row=  mysql_fetch_array($b))
{
    $catid=$row['CategoryID'];
}

$s1="Select ImageID from image";
$r1=  mysql_query($s1);
while ($rq1= mysql_fetch_array($r1)) 
{
    $id=$rq1['ImageID'];
    
}
$i1=$id1+1;
$c="Insert into image values($i1,'".trim($img)."')";

if (!mysql_query($c))
  {
  die('Error: ' . mysql_error());
  }

$sql="INSERT INTO advertisement
VALUES($i,'$email',id,'$title','$loc','$desc','$ownername','$owneremail',$ownerphone,'$tags','$url','$i1',$code)";

if (!mysql_query($sql))
  {
  die('Error: ' . mysql_error());
  }
 $_SESSION['adid'] = $i;
header('Location:View.php');

mysql_close($con);




