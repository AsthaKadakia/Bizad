<?php

require_once 'Connection.php';

$fname=$_POST['firstname'];
$lname=$_POST['lastname'];
$day=$_POST['iBirthDay'];
$month=$_POST['iBirthMonth'];
$year=$_POST['iBirthYear'];
$gender=$_POST['iGender'];
$coname=$_POST['company'];
$regno=$_POST['comregno'];
$street=$_POST['comstreet'];
$city=$_POST['comcity'];
$dist=$_POST['comDist'];
$state=$_POST['comstate'];
$country=$_POST['iSMSCountry'];
$pincode=$_POST['compostalcode'];
$phone=$_POST['comphone'];
$comemail=$_POST['compemail'];
$website=$_POST['comweb'];
$recemail=$_POST['recemail'];
$recoveryquest=$_POST['recoveryqueselect'];
$ans=$_POST['recans'];
$email=$_SESSION['email'];


$result = mysql_query("UPDATE  `test`.`registration` SET  `firstname` =  '$fname',
`lastname` =  '$lname',
`day` =  '$day',
`month` =  '$month',
`year` =  '$year',
`gender` =  '$gender',
`companyname` =  '$coname',
`registrationno` =  '$regno',
`street` =  '$street',
`city` =  '$city',
`district` =  '$dist',
`state` =  '$state',
`country` =  '$country',
`phoneno` =  '$phone',
`cemail` =  '$comemail',
`website` =  '$website',
`recoveryemail` =  '$recemail',
`ques` =  '$recoveryquest',
`ans` =  '$ans' WHERE  `registration`.`email` =  '$email';");
    if (!$result){
        die('Error: ' . mysql_error());
    }
    else
    {
        header("Location:index.php");
    }

