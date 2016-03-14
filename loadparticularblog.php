<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<?php
include 'Header.php';

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
        <meta charset="utf-8">
        <title>Blog</title>
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
        <div class="Category">
  <div class="body">
           <?php
        require_once 'Connection.php';
//        session_start();
        $id=$_SESSION['id'];
   
    $sql1="Select * from blog where id=$id";
    $result=mysql_query($sql1);
    while ($row = mysql_fetch_array($result)) {
        
        
        $name=$row['name'];
        $title=$row['title'];
        $blog=$row['blog'];
        $img=$row['imageid'];
        
        $date1=$row['date'];
        
        $sql="select ImageURL from image where ImageID=".$img;
        $re=  mysql_query($sql);
        while($r=  mysql_fetch_array($re))
        {
            $img1=$r['ImageURL'];
        
                    echo "<div class=\"post_section\"><span class=\"bottom\"></span>
                    <h6><img src='$img1'/>      </h6></br> </br> </br> </br> </br> </br>   
                    <h2> ";echo $title."<br/></h2><hr/>
                    <span class=\"author-date\"><span id=\"author\"><strong>Author:</strong>".$name." |</span><span id=\"date\"><strong>&nbsp;Date:</strong>".$date1."</span></span>
                    <p>".$blog."</p>
                    
                </div>
                </div>
            </div>";
        }
         
        }
             
        ?>
  </div>
        </body>              
</html>
