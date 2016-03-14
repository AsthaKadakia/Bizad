
<?php
session_start();
require_once ('Connection.php');
$email=$_POST['email'];
$pwd=$_POST['password'];
$errflag=false;
$flag=$_SESSION['flag'];


$result=  mysql_query("Select * from registration where email='".$email."'");
while($row=  mysql_fetch_array($result)) {
    if($row['password']===$pwd)
    {
        $_SESSION['name']=$row['name'];
        
        $_SESSION['i']=true;
        if($flag==true)
        {
            header("Location:resetPassword.php");
        }
        else {
            header("Location:index.php");
            //echo $_SESSION['name'];
        }
    }

	 
    //Check whether the query was successful or not
    else { 
	//Login failed
        $errmsg_arr[] = 'email and password not found';
        $errflag = true;
	if($errflag) {
	    $_SESSION['ERRMSG_ARR'] = $errmsg_arr;
	    session_write_close();
            
	    header('location:Signin.php');
	    
        }
    }
}  


