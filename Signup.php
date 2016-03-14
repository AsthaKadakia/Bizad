<?php
include 'Header.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>BizAd Registration</title>
        <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
    </head>
    <body>
        <div id="container">
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
            <div id="registration" >
                <h1>Register</h1>
                <form id="RegisterUserForm" action="reg.php" method="post">
                    <fieldset>
                        <p>
                            <label for="name">Name</label>
                            <input id="name" name="name" type="text" class="text" value="" />
                        </p>

                        <p>
                            <label for="email">Email</label>
                            <input id="email" name="email" type="email" class="text" value="" />
                        </p>        
                        <p>
                            <label for="tel">Phone Number</label>
                            <input id="tel" name="tel" type="tel" class="text" value="" />
                        </p>
                        <hr/>
                        <p><input id="acceptTerms" name="acceptTerms" type="checkbox" />
                            <label for="acceptTerms">
                                I agree to the <a href="">Terms and Conditions</a> and <a href="">Privacy Policy</a>
                            </label>
                        </p>

                        <p>
                            <button id="registerNew" type="submit">Register</button>
                        </p>
                    </fieldset>

                </form>
            </div>
        </div>
    </body>
</html>
<?php
include 'Footer.php';
?>