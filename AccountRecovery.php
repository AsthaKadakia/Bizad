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
        <div id="passwordrecovery"><h1>Forgot Password Recovery</h1><p>To reset your password, enter the email address you use to sign in to BizAd. This can be your Gmail address, your Yahoo email address, or another email address associated with your account.</p>
            <form id="passrecovery" action="AccountRecoveryPHP.php" method="POST">
                <label class="emaillabel">Email address:</label><input class="email" type="text" id="Email" name="Email" value="">
                <input type="submit" value="Get Reset Link" class="buttonsubmit"><p class="spacerec">&nbsp;</p>
            </form>
        </div>
    </body>
</html>
<?php
include 'Footer.php';
?>
