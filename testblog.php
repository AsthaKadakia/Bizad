<?php

require_once 'Connection.php';
$name=$_POST['name'];
$email=$_POST['email'];
$title=$_POST['title'];
$blog=$_POST['comment'];
$imgurl=$_POST['uploadimg'];

$sq="Select ImageID from image";
$rq=  mysql_query($sq);
while ($rwq= mysql_fetch_array($rq)) 
{
    $idq=$rwq['id'];
    
}
$iq=$idq+1;

$allowedExts = array("gif","jpeg","jpg","png");
$extension = end(explode(".", $_FILES["file"]["name"]));

echo "<br>";
echo "$extension";
echo "<br>";

/* if(($_FILES["file"]["type"] == "image/gif")
 ||($_FILES["file"]["type"] == "image/jpeg")
 ||($_FILES["file"]["type"] == "image/jpg")
 ||($_FILES["file"]["type"] == "image/png")
 &&($_FILES["file"]["size"] < 1024000)) */

 if(in_array($extension, $allowedExts))
 {
    if($_FILES["file"]["error"] > 0)
    {
        echo "Error: " . $_FILES["file"]["error"] . "<br>";
    }
    else
    {
        echo "Upload: " . $_FILES["file"]["name"] . "<br>";
        echo "Type: " . $_FILES["file"]["type"] . "<br>";
        echo "Size: " . ($_FILES["file"]["size"]/1024) . "KB<br>";
        echo "Stored in: " . $_FILES["file"]["tmp_name"];
    }
    if(file_exists("upload/" . $_FILES["file"]["name"]))
    {
        echo $_FILES["file"]["name"] . "already exists";
    }
    else
    {
        move_uploaded_file($_FILES["file"]["tmp_name"],
        "upload/" . $_FILES["file"]["name"]);
        echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
    }
}
else
{
    echo "Invalid file";
}


$q="insert into image values(".$iq.",'".$imgurl."')";
if (!mysql_query($q))
  {
   
  die('Error: ' . mysql_error());
  }
  else
  {
      //header("Location:Blog.php");
$s="Select id from blog";
$r=  mysql_query($s);
while ($rw= mysql_fetch_array($r)) 
{
    $id=$rw['id'];
    
}
$i=$id+1;

$date= date('d/m/y h:i:s');

$sql="INSERT INTO blog VALUES($i,'$name','$email','$title','$blog','$iq','$date')";
if (!mysql_query($sql,$con))
  {
   
  die('Error: ' . mysql_error());
  }
  else
  {
      header("Location:Blog.php");
  }
  }
mysql_close($con);