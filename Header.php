<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/userprofile.css" />        
        <link rel="stylesheet" href="css/styles.css" type="text/css">   
        <link rel="stylesheet" type="text/css" href="css/signup.css" />
       	<script type="text/javascript" src="js/Userprofile/modernizr.custom.79639.js"></script>
       	<script type="text/javascript" src="js/auth014.js"></script>
        <script type="text/javascript" async="" src="js/ga.js">
        </script><script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/modernizr.custom.04022.js"></script>
        <script>window.jQuery || document.write('<script src="/js/jquery.min.js"><\/script>')</script>
        <script src="js/packages.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/Registration_script.js"></script>
        <script type="text/javascript">

            function DropDown(el) {
                this.dd = el;
                this.initEvents();
            }
            DropDown.prototype = {
                initEvents: function() {
                    var obj = this;

                    obj.dd.on('click', function(event) {
                        $(this).toggleClass('active');
                        event.stopPropagation();
                    });
                }
            }

            $(function() {

                var dd = new DropDown($('#dd'));

                $(document).click(function() {
                    // all dropdowns
                    $('.wrapper-dropdown-5').removeClass('active');
                });

            });

        </script>
    </head>

    <body class="js-only">
        <div id="userProfile" style="visibility:hidden;">
            <section class="main">
                <div class="wrapper-demo">
                    <div id="dd" class="wrapper-dropdown-5" tabindex="1"><span id="username"></span>
                    <?php 
                        session_start();
                        
                        $_SESSION['i']=false;
                        if($_SESSION['i']==true) 
                            {
                           echo "Welcome, ". $_SESSION['name'];
                            }
                            else
                                {
                                echo '';
                                
                                }
                                ?>
                        <ul class="dropdown">
                            <li><a href="UserDashboard.php"><i class="icon-user"></i>DashBoard</a></li>
                            <li><a href="#"><i class="icon-remove"></i>Log out</a></li>
                        </ul>
                    </div>
                    ​</div>
            </section>
        </div>
        <script>$('body').addClass('js-only');</script>
        <div id="container">	
            <div id="user-nav">
                <a class="login" href="Signin.php"><span>Login</span></a>
                <a class="register" href="Signup.php"><span>Register</span></a>
                <a class="dictionary" href="Dictionary_Home.php"><span>BizAd Dictionary</span></a>
                <a class="bizadgroup" href="AdPost.php"><span>Post An Ad</span></a>
    <!--<a class="single-link" target="_blank" href="#"><span>The BizAd Group</span></a>-->
            </div>
            <header role="banner">
                <div id="header_container">
                    <div>
                        <p id="logo">
                            <a href="./index.php"><img src="./images/BizAd-green.png" alt="Bizad-An Advertsing &amp; Marketing"></a>                          
                        </p>
                        <!--
                                            <nav id="main-nav">
                            <ul>
                                <li class="home selected"><a href="index.php"><image src="images/home.png"/></a></li>
                                <li><a href="#"><span>PortFolio</span></a></li>
                                <li><a href="#"><span>Ad Post</span></a></li>
                                <li><a href="#"><span>Services</span></a></li>
                                <li><a href="#"><span>Contact Us</span></a></li>
                                <li><a href="#"><span>FAQs</span></a></li>
                                <li><a href="#"><span>Blogs</span></a></li>
                            </ul>
                                            </nav>-->
                        <select id="main-nav-mobile"><option selected="selected" value="/">Home</option><option value="/specifications-resources">Specifications &amp; Resources</option><option value="/news">Latest News</option><option value="/contact-us">Contact Us</option></select>
                    </div>
                </div>
            </header>
            <!--		<div id="header-border">
                                    <div>
                                            <a class="header-Dictionary" id="dictionary" href="#" style="display: inline;"><span><image src="images/search.png"/> BizAd Dictionary</span></a>
                                            <a class="header-Adpost" id="Adpost" href="AdPost.html" style="display: inline;"><span>Post Classified Ad</span></a>
                            <a class="header-Sitemap" id="Sitemap" href="index.php" style="display: inline;"><span>&lt;&lt;Site Map</span></a>
                                    </div>
                            </div>-->
        </div>
    </body>
</html>
