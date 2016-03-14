<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link rel="stylesheet" href="css/procs.css" type="text/css" />
        <script type="text/javascript">
            function validate() {
                alert("hello");
                var name = document.getElementById('user_name').value;
                var firstname = document.getElementById('first_name').value;
                var lastname = document.getElementById('last_name').value;
                var phn = document.getElementById('phoneno').value;
                var mobile = document.getElementById('mbno').value;
                var email = document.getElementById('id_email').value;
                var website = document.getElementById('id_website').value;
                var twitter = document.getElementById('id_twitter').value;
                var facebook = document.getElementById('id_facebook').value;
                var paypal = document.getElementById('id_paypal').value;
                var cmpname = document.getElementById('cmpname').value;
                var cemail = document.getElementById('id_cemail').value;
                var comwebsite = document.getElementById('id_cwebsite').value;
                var cadd = document.getElementById('id_add').value;
                var con = document.getElementById('id_con').value;
                var reg = document.getElementById('id_reg').value;
                var oldpass = document.getElementById('oldpass').value;
                var newpass = document.getElementById('id_newpass').value;
                var conform = document.getElementById('id_conform').value;

                var msg = "";
                if (name === null || name === "")
                {
                    msg += "Name is required";
                    alert(msg);
                    return false;
                }

                if (firstname === null || firstname === "")
                {
                    msg += "FirstName is required";
                    alert(msg);
                    return false;
                }


                if (lastname === null || lastname === "")
                {
                    msg += "LastName is required";
                    alert(msg);
                    return false;
                }
                if (phn === null || phn === "")
                {
                    msg += "Phone number is required";
                    alert(msg);
                    return false;
                }
              /*  if (/^[+][0-9]{10,15}$/.test(phn)) {//add +
                    return false;
                } else {
                    alert("Plase Enter Number and 10 digit or 15 digit");
                    return true;
                }*/

                if (mobile === null || mobile === "")
                {
                    msg += "Mobile no is required";
                    alert(msg);
                    return false;
                }
                if (email === null || email === "")
                {
                    msg += "Email is required";
                    alert(msg);
                    return false;
                }
                if (/^([a-z\.]+[0-9])@([a-z\.]+[\.][a-z]{2,3})$/.test(email)) {
                    alert("hiiiiiiiiiiiiiiiii");
                    return false;
                } else {
                    alert("Plase Enter Right Email");
                    return true;
                }


                if (website === null || website === "")
                {
                    msg += "Website is required";
                    alert(msg);
                    return false;
                }
                if (twitter === null || twitter === "")
                {
                    msg += "Twitter is required";
                    alert(msg);
                    return false;
                }
                if (facebook === null || facebook === "")
                {
                    msg += "Facebook is required";
                    alert(msg);
                    return false;
                }

                if (paypal === null || paypal === "")
                {
                    msg += "PayPal is required";
                    alert(msg);
                    return false;
                }
                if (cmpname === null || cmpname === "")
                {
                    msg += "CompanyName is required";
                    alert(msg);
                    return false;
                }
                if (cemail === null || cemail === "")
                {
                    msg += "Company Email is required";
                    alert(msg);
                    return false;
                }
                if (comwebsite === null || comwebsite === "")
                {
                    msg += "Compsny Website is required";
                    alert(msg);
                    return false;
                }
                if (cadd === null || cadd === "")
                {
                    msg += "Company Address is required";
                    alert(msg);
                    return false;
                }
                if (con === null || con === "")
                {
                    msg += "Company Contect No is required";
                    alert(msg);
                    return false;
                }
                if (reg === null || reg === "")
                {
                    msg += "Company Registration is required";
                    alert(msg);
                    return false;
                }
                if (oldpass === null || oldpass === "")
                {
                    msg += "OldPassWord is required";
                    alert(msg);
                    return false;
                }
                if (newpass === null || newpass === "")
                {
                    msg += "NewPassWord is required";
                    alert(msg);
                    return false;
                }
                if (conform === null || conform === "")
                {
                    msg += "Conform PassWord is required";
                    alert(msg);
                    return false;
                }
                /*if (/^[a-zA-Z]$/.test(name)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
                /*  if (/^[a-zA-Z]$/.test(firstname)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/

                /* if (/^[a-zA-Z]$/.test(lastname)) {
                 return false;
                 } else {
                 alert("Plase Enter LastName Character");
                 return true;
                 }*/

                




            }
        </script>

    </head>
    <body>
        
            <div id="container">
                <!-- Start Facebook Top Bar --><!-- End Facebook Top Bar -->
                <div id="Cover_Photo">

                    <!-- Start Profile Photo; Replace [http://i.imgur.com/efuJM.jpg] with your 150x150 image -->
                    <div id="pro">
                        <div id="Photo">
                            <img src="http://i.imgur.com/efuJM.jpg" style="width:150px; height:150px;"></img>
                            <span>Edit Profile Picture</span>
                        </div>
                    </div><!-- End Profile Photo -->
                </div><!-- End Cover Photo -->

            </div>
            <!-- Begin Basic Info -->

            <div id="Basic_Info_Container" >

                <div id="name">Name
                </div>
                <input type="submit" name="submitedit" value="Edit" id="edit"/>
                <br/><br/><br/>


                <!-- Begin Info Details; Replace CAPS with appropriate text, delete blocks you don't need -->
                <div id="username">Username</div>
                <input type="text"  name="user_name" id="user_name"/><br/><br/>
                <div id="firstname">Firstname</div>
                <input type="text"  name="first_name" id="first_name"/><br/><br/>
                <div id="lastname">Lastname</div>
                <input type="text"  name="last_name" id="last_name"/><br/><br/>
                <div id="phone">Phone</div>
                <input type="text"  name="phoneno" id="phoneno"/><br/><br/>
                <div id="mobileno">MobileNo</div>
                <input type="text"  name="mbno" id="mbno"/><br/><br/>
            </div>
            <!-- End Basic Info -->
            <!-- Start contact Info -->
            <div id="coninfo">
                <div id="contactinfo">Contact Info</div>
                <div id="email">Email</div>
                <input type="text"  name="id_email" id="id_email"/><br/><br/>
                <div id="website">Website</div>
                <input type="text"  name="id_website" id="id_website"/><br/><br/>
                <div id="twitter">Twitter</div>
                <input type="text"  name="id_twitter" id="id_twitter"/><br/><br/>
                <div id="facebook">Facebook</div>
                <input type="text"  name="id_facebook" id="id_facebook"/><br/><br/>
                <div id="paypal">PayPal Email</div>
                <input type="text"  name="id_paypal" id="id_paypal"/><br/><br/>

                <!-- End contactInfo -->

            </div>
            <!-- Start CompanyInfo -->
            <div id="CompanyInfo" >
                <div id="cominfo">CompanyInfo</div><input type="submit" name="submitedit" value="Edit" id="edit" /><br/><br/><br/>
                <div id="companyname">Name</div>
                <input type="text" name="cmpname" id="cmpname"/><br/><br/>
                <div id="compemail">Email</div>
                <input type="text"  name="id_cemail" id="id_cemail"/><br/><br/>
                <div id="website">Website</div>
                <input type="text"  name="id_cwebsite" id="id_cwebsite"/><br/><br/>
                <div id="address">Address</div>
                <input type="text"  name="id_add" id="id_add"/><br/><br/>
                <div id="contact">Contact</div>
                <input type="text"  name="id_con" id="id_con"/><br/><br/>
                <div id="registraction">RegistrationID</div>
                <input type="text"  name="id_reg" id="id_reg"/><br/><br/>
            </div>
            <!-- End CompanyInfoCompanyInfo-->
            <!-- Start ChangePassword -->

            <div id="Changepassword" >
                <div id="changepass">ChangePassWord</div><input type="submit" name="submitedit" value="Edit" id="edit" /><br/><br/><br/>
                <div id="oldpassword">OldPassword</div>
                <input type="text" name="oldpass" id="oldpass"/><br/><br/>
                <div id="newpassword">NewPassWord</div>
                <input type="text"  name="id_newpass" id="id_newpass"/><br/><br/>
                <div id="Conformpass">ConFormPassWord</div>
                <input type="text"  name="id_conform" id="id_conform"/><br/><br/>

            </div>
            <input type="submit" name="submit" value="Save" id="submit" onclick="validate();"/>
            <!-- End ChangePassword-->
        
    </body></html>


