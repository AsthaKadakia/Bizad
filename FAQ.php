<?php
include 'Header.php';
?>
<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
        <title>FAQ </title>
        <script type="text/javascript">
            function validate()
            {
                var name = getElementById('name').value;
                var email = getElementById('email');
                var quest = getElementById('comment');
                if (isAlphabet(name, "Please enter only letters for your name"))
                {
                    if (emailValidator(email, "Please enter correct email")) {
                        if (isAlphanumeric(quest, "Please enter correct quest")) {
                            return true;
                        }
                    }
                }
                else
                {
                    return false;
                }
            }
            function notEmpty(elem, helperMsg) {
                if (elem.value.length === 0) {
                    alert(helperMsg);
                    elem.focus(); // set the focus to this input
                    return false;
                }
                return true;
            }



            function isAlphabet(elem, helperMsg) {
                var alphaExp = /^[a-zA-Z]+$/;
                if (elem.value.match(alphaExp)) {
                    return true;
                } else {
                    alert(helperMsg);
                    elem.focus();
                    return false;
                }
            }

            function isAlphanumeric(elem, helperMsg) {
                var alphaExp = /^[0-9a-zA-Z]+$/;
                if (elem.value.match(alphaExp)) {
                    return true;
                } else {
                    alert(helperMsg);
                    elem.focus();
                    return false;
                }
            }


            function emailValidator(elem, helperMsg) {
                var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
                if (elem.value.match(emailExp)) {
                    return true;
                } else {
                    alert(helperMsg);
                    elem.focus();
                    return false;
                }
            }
        </script>
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
                    <li><a href="FAQ.php">New<br/>Blog</a></li>
                </ul>  
            </div>
                </li>
            </ul>
                <li ><a href='AboutUs.php'><span>About Us</span></a></li>
                <li><a href='ContactUs.php' class="drop"><span>Contact Us</span></a>
                        			<div class="dropdown_1columns"><!-- Begin 3 columns container -->
            <div class="col_1">
                <ul class="greyboxone">
                    <li><a href="#">Enquiry</a></li>
                    <li><a href="#">Feedback</a></li>
                </ul>   
        </div>
        <div class="Category">
<!--            <a href="#Latest" class="posted">Latest</a>-->
           
            <?php include 'loadFAQ.php';?>
            
<!--            <a href="#oldest" class="posted">Oldest</a>-->
            
            
            </div>
        </div>
        <div id="main" role="main" class="clearfix">
            <h1 class="page-title">Question</h1>
            <div class="column">
                <form method="post" action="test_faq.php" onsubmit="return validate();">
                    <label>Name (Required)</label>
                    <input type="text" name="name" />
                    <label>Email  (Required, will not be published)</label>
                    <input type="text" name="email" />
                    <label>Your Question</label>
                    <input  type="text" name="question" />
                    <label>Your Question Description</label>
                    <textarea  name="comment" rows="10" cols="10"></textarea>
                    <input class="action" type="submit" value="Ask"><input type="hidden" name="csrf" value="abefbba59755b404889fc113162a2f78" id="csrf">                    
                </form>
            </div>
        </div>
    </body></html>
<?php
include 'Footer.php';
?>