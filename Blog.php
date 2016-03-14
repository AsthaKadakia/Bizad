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
                    <li><a href="Blog.php">Latest</a></li>
                    <li><a href="Blog.php">Oldest</a></li>
                    <li><a href="Blog.php">New<br/>Blog</a></li>
                </ul>   
    
            </div>
            </div></li>
                <li><a href='FAQ.php' class="drop"><span>FAQ</span></a>
                        			<div class="dropdown_1columns"><!-- Begin 3 columns container -->
            <div class="col_1">

                <ul class="greyboxone">
                    <li><a href="FAQ.php">Latest</a></li>
                    <li><a href="FAQ.php">Oldest</a></li>
                    <li><a href="FAQ.php">Ask Question</a></li>
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
            include 'loadblog.php';
            ?>
                </div>
            </div>
     
        <div id="main" role="main" class="clearfix">
            <h1 class="page-title">Add Your Blog</h1>
            <div class="column">
                <form method="post">
                    <label>Name (Required)</label>
                    <input type="text" name="name" />
                    <label>Email  (Required, will not be published)</label>
                    <input type="text" name="email" />
                    <label>Title</label>
                    <input type="text" name="title" />
                    <label>Blog</label>
                    <textarea  name="comment" rows="10" cols="10"></textarea>
                    Choose file:<input type="file" name="uploadimg" />
                    <input type="submit" name="upload" value="Upload"/>
                    <input class="action" type="submit" value="Create Blog"><input type="hidden" name="csrf" value="abefbba59755b404889fc113162a2f78" id="csrf">                    
                </form>
            </div>
        </div>
    </body></html>
<?php
include 'Footer.php';
?>