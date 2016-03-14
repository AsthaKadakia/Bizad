<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<?php
include 'Header.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div id="resetpassword"><h1>Reset Password</h1><p class="passwordp">Minimum 6 character required.</p>
            <form id="resetpass" method="post" action="resetpwd.php">
                <label class="passlabel-1">New Password:</label><input class="pass" type="password" id="password" name="password" value=""><br/>
                <label class="passlabel-2">Confirm Password:</label><input class="pass" type="password" id="repassword" name="repassword" value=""><br/>
                <input type="submit" value="Reset Password" class="resetsubmit"><p class="spacerec">&nbsp;</p>
            </form>
        </div>
    </body>
</html>
<?php
include 'Footer.php';
?>