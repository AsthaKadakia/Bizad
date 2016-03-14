<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<?php
// put your code here
include 'Header.php';


?>
<head>
    <title>BizAd Dictionary Body Contains</title>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
    <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
</head>
<body class="js-only">
        <div id='cssmenu'>
            <ul class="mainmenu">
                <li class='active'><a href='#Current'><span>Home</span></a></li>
                <li>
                	<a href='AdCategory.php' class="drop"><span>Categories</span></a>
        			<div class="dropdown_3columns "><!-- Begin 3 columns container -->
            <div class="col_1">

                <ul class="greybox">
                    <li><a href="#">Auto Mobiles</a></li>
                    <li><a href="#">Business</a></li>
                    <li><a href="#">Buy &amp; Sell</a></li>
                    <li><a href="#">Computer</a></li>
                    <li><a href="#">Construction</a></li>
                </ul>   
    
            </div>
                        <div class="col_1">

                <ul class="greybox">
                    <li><a href="#">Education</a></li>
                    <li><a href="#">Electronics</a></li>
                    <li><a href="#">Employment</a></li>
                    <li><a href="#">Featured</a></li>
                    <li><a href="#">Finance</a></li>
                </ul>   
    
            </div>
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="#">Flowers/Gifts</a></li>
                    <li><a href="#">Health &amp; Beauty</a></li>
                    <li><a href="#">Industrial</a></li>
                    <li><a href="#">Matrimonial</a></li>
                    <li><a href="#">Mobile Phones</a></li>
                </ul>   
    
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="#">Personal</a></li>
                    <li><a href="#">Real Estate</a></li>
                    <li><a href="#">Rent/Hire</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Technology</a></li>
                </ul>   
    
            </div>
        </div><!-- End 3 columns container -->
        
    </li><!-- End 3 columns Item -->
                    
                </li>
                <li><a href='Blog.php' class="drop"><span>Blog</span></a>
        			<div class="dropdown_1columns"><!-- Begin 3 columns container -->
            <div class="col_1">

                <ul class="greyboxone">
                    <li><a href="#">Latest</a></li>
                    <li><a href="#">Oldest</a></li>
                    <li><a href="#">New<br/>Blog</a></li>
                </ul>   
    
            </div>
            </div></li>
                <li><a href='FAQ.php' class="drop"><span>FAQ</span></a>
                        			<div class="dropdown_1columns"><!-- Begin 3 columns container -->
            <div class="col_1">

                <ul class="greyboxone">
                    <li><a href="#">Latest</a></li>
                    <li><a href="#">Oldest</a></li>
                    <li><a href="#">Ask Question</a></li>
                </ul>   
    
            </div>
            </div>
                </li>
                <li ><a href='AboutUs.php'><span>About Us</span></a></li>
                <li><a href='ContactUs.php' class="drop"><span>Contact Us</span></a>
                        			<div class="dropdown_1columns"><!-- Begin 3 columns container -->
            <div class="col_1">
                <ul class="greyboxone">
                    <li><a href="#">Enquiry</a></li>
                    <li><a href="#">Feedback</a></li>
                </ul>   
    
            </div>
            </div>
                </li>
            </ul>
        </div>
    <?php
    require_once 'Connection.php';
 
$area=$_POST['dest'];
$search=$_POST['what'];
//echo $area;
$sql = "select * from searchengine where name LIKE '%$search%'";

$res=mysql_query($sql);
while($result = mysql_fetch_array( $res )) 
    { 
        $id=$result['id']; 
        $imageid=$result['ImageID'];
       
        $sql1="select * from searchengine where id=".$id;
            $r=  mysql_query($sql1);
        $o="select * from image where ImageID=".$imageid;
        $ro=  mysql_query($o);
        while ($pro=  mysql_fetch_array($ro))
        {
            $img=$pro['ImageURL'];
        }
            //echo $img;
           $a="Select AreaID from area where AreaName='".$area."'";
           $b=mysql_query($a);
           while($res1 = mysql_fetch_array($b)) 
            { 
                $id=$res1['AreaID']; 
            }
            while ($row=  mysql_fetch_array($r))
            {
                $table=$row['name'];
                $mainsql="select * from ".$table." where AreaID=$id";
                $mainresult=  mysql_query($mainsql);
                while($mainrow=  mysql_fetch_array($mainresult))
                {
                   $name=$mainrow['Name'];
                    $address=$mainrow['Address'];
                    $phone=$mainrow['PhoneNo'];
                   $mobile=$mainrow['MobileNo'];
                   $service=$mainrow['Service'];
                if(($mobile===null) || ($mobile===""))
                {
                    $mobile="-";
                }
                if(($phone===null) || ($phone===""))
                {
                    $phone="-";
                }
                    echo"
                <div id=\"main\" role=\"main\" class=\"clearfix\">
                <h1 class=\"page-title\">Add Your Blog</h1>
                <div class=\"post_section\"><span class=\"bottom\"></span>
                <a href=\"#\"><img src=\"$img\" alt=\"image not displayed\" /></a>            
                <h1>$name</h1><hr/>
                <h1>$address</h1><hr/>
               <h1>$phone</h1><hr/>
               <h1>$mobile</h1><hr/>
                <h1> $service</h1><hr/>
                </div> </div>";
                    
                }
               
               
            }
//        if( mysql_query($sql1)){
//
//   echo "true";
//}
// else {
//    echo "false";
//    die (mysql_error());
//}

        
 }


    ?>
   
</body>
</html>
<?php
// put your code here
include 'Footer.php';
?>