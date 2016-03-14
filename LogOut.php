<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<?php


//session_destroy();
include 'Header.php';
$_SESSION['name']='';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div id='cssmenu'>
            <ul>
                <li><a href='index.php'><span>Home</span></a></li>
                <li><a href='#'><span>Categories</span></a></li>
                <li><a href=''><span>About</span></a></li>
                <li><a href='Blog.php'><span>Blog</span></a></li>
                <li><a href='FAQ.php'><span>FAQ</span></a></li>
                <li class='last'><a href='#'><span>Google</span></a></li>
            </ul>
        </div>
        <div id="signoutnote">
            <form id="reloginform">
                <p id="out"><span class="signouticon">&nbsp;</span>You've signed out. See you again soon!</p>
                <div id="relogin"><h1>Return to your account</h1><p class="ready">Ready to do more Surfing?</p><button class="reloginbutton" type="submit" value="login" name="login" onclick="Signin.php">Login</button></div>
            </form>
        </div>
    </body>
</html>
<?php
include 'Footer.php';
?>