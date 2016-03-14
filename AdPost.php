<?php
include 'Header.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>BizAd Ad post</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="generator" content="WordPress 3.6"/>     
         <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
        <script>
                    (function(i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                            i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                            a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                            a.async = 1;
                            a.src = g;
                            m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                    ga('create', 'UA-43877535-1', 'adsportal.in');
                    ga('send', 'pageview');</script>
    </head>

    <body style="">
        <div id='cssmenu'>
            <ul class="mainmenu">
                <li><a href='index.php'><span>Home</span></a></li>
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
                <li ><a href='FAQ.php' class="drop"><span>FAQ</span></a>
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
        <div id="adpost">
            <h1 class="adposthead">Post a Classified </h1><hr/>
            <p class="alignright">
                <span class="indicates">*</span>
                Indicates mandatory fields </p>
            <form name="createjob_frm" id="createjob_frm" method="post" action="postad.php" enctype="multipart/form-data">
                <p><label class="lab">Select Category : <span class="indicates">*</span> </label>
                    <select name="termid" id="termid" class="text">
                        <option value="">Select Category</option>
                        <option value="3"> AutoMobiles</option><option value="9"> Business</option><option value="11"> Buy &amp; Sell</option><option value="14"> Computer</option><option value="15"> Construction</option><option value="16"> Education</option><option value="29"> Electronics</option><option value="17"> Employment</option><option value="35"> Featured</option><option value="19"> Finance</option><option value="25"> Flowers/Gifts</option><option value="20"> Health &amp; Beauty</option><option value="21"> Industrial &amp; Agricultural</option><option value="22"> Matrimonial</option><option value="30"> Mobile Phones</option><option value="23"> Personal</option><option value="24"> Real Estate</option><option value="36"> Rent/Hire</option><option value="26"> Services</option><option value="27"> Special Deals</option><option value="28"> Technology</option>     </select>
                    <span id="termidInfo" class=""></span></p>
                <p><label class="lab"> Ads Title : <span class="indicates">*</span> </label><span class="space1"/>  
                    <input name="post_title" id="post_title" value="" type="text" class="atext">
                        <span id="post_titleInfo"></span>
                </p>
                <p><label class="lab"> Location : <span class="indicates">*</span></label><span class="space1"/>
                    <input name="post_location" id="post_location" value="" type="text" class="atext">
                        <span id="post_locationInfo"></span>
                </p>
                <p><label class="lab"> Description :</label><br/>
                    <textarea class="text" id="desc" cols="10" rows="10"></textarea><br/><span class="note">You can enter maximum of 1000  chars.</span>
                </p>
                <p><label class="lab"> Owner Name : <span class="indicates">*</span></label><span class="space2"/>
                    <input name="owner_name" id="owner_name" value="john Smith" type="text" class="atext">
                        <span id="owner_nameInfo"></span>
                </p>




                <p>
                    <span class="note">Inquiry will be send to this email address </span><br/>
                    <label class="lab"> Email ID  : <span class="indicates">*</span></label><span class="space1"/   >
                        <input name="owner_email" id="owner_email" value="johnsmith@gmail.com" type="text" class="atext">
                            <span id="owner_emailInfo"></span>
                            </p>




                            <p><label class="lab"> Phone :</label><span class="space3"/>
                                <input name="owner_phone" id="owner_phone" value="" type="text" class="atext"> </p>




                            <p><label class="lab"> Tags : </label><span class="space4"/>
                                <input name="post_tags" id="post_tags" value="" type="text" class="atext"> </p>



                            <p><span class="note"> i.e. http://www.mysite.com </span><br/><label class="lab"> URL :  </label><span class="space5"/>
                                <input name="post_url" id="post_url" value="" type="text" class="atext">

                            </p> 


                            <p> <label class="lab"> Upload Image </label>
                                <span class="space6"/>
                                <input name="images[]" id="img" value="" type="file" class="atext">
                                <br/>
                            </p>
                            <p><span class="note"> Enter Coupon Code if you have </span><br/> <label class="lab"> Coupon Code :  </label><span class="space2"/> 
                                <input name="coupon_code" id="coupon_code" value="" type="text" class="atext"/></p><hr><p>
                                    <input id="agree" type="submit" name="submit" value="Post"/></p>
                                </form>
                                <script>
                                            function removeImage(imagename, divid)
                                            {
                                            document.getElementById(divid).innerHTML = '';
                                            }
                                </script>   
                                <script>
                                    var Row = 1;
                                            function customClick(customfield, nameval)
                                            {
                                            Row++;
                                                    var email_div = customfield + '_div';
                                                    var emailDiv = document.getElementById(email_div);
                                                    var newDiv = document.createElement('div');
                                                    newDiv.setAttribute('id', email_div + Row);
                                                    newDiv.setAttribute('style', 'margin-top:5px');
                                                    var newTextBox = document.createElement('input');
                                                    newTextBox.type = 'file';
                                                    newTextBox.setAttribute('id', customfield + '_name' + Row);
                                                    newTextBox.setAttribute('name', 'images[]');
                                                    newTextBox.setAttribute('class', 'textbox');
                                                    newTextBox.setAttribute('size', '15');
                                                    newTextBox.setAttribute('maxlength', '50');
                                                    newTextBox.setAttribute('style', 'width:auto');
                                                    if (nameval) {
                                            newTextBox.setAttribute('value', nameval);
                                            } else {
                                            newTextBox.setAttribute('value', customfield);
                                            }
                                            newTextBox.setAttribute("onblur", "if(this.value=='') this.value = '" + customfield + "';");
                                                    newTextBox.setAttribute("onfocus", "if(this.value=='" + customfield + "') this.value= '';");
                                                    nameStr = document.getElementById(customfield + 'Title').value;
                                                    valueStr = document.getElementById(customfield + 'Id').value;
                                                    var newLink = document.createElement('a');
                                                    newLink.setAttribute('class', 'smallLink');
                                                    newLink.setAttribute('href', 'javascript:void(0)');
                                                    newLink.setAttribute('tabindex', '2');
                                                    document.getElementById('Count').value = Row;
                                                    var linkText = document.createTextNode('Remove');
                                                    newLink.appendChild(linkText);
                                                    newLink.onclick = function RemoveEntry() {
                                                    var imDiv = document.getElementById(email_div);
                                                            emailDiv.removeChild(this.parentNode);
                                                    }

                                            newDiv.appendChild(newTextBox);
                                                    newDiv.appendChild(document.createTextNode('\u00A0\u00A0\u00A0\u00A0'));
                                                    newDiv.appendChild(newLink);
                                                    emailDiv.appendChild(newDiv);
                                            }
                                </script>
                                <script type="text/javascript" src="js/Adpost/jquery(1).js"></script>
                                <script type="text/javascript" src="js/Adpost/adv_validation.js"></script> 
                                <script type="text/javascript" src="js/Adpost/tiny_mce.js"></script>
                                <script type="text/javascript">
                                            tinyMCE.init({
                                            // General options
                                            mode: "textareas",
                                                    theme: "advanced",
                                                    plugins: "advimage,advlink,iespell,",
                                                    // Theme options
                                                    theme_advanced_buttons1: "bold,italic,underline,strikethrough,|,bullist,numlist,blockquote,|,link,unlink,anchor,image,code",
                                                    theme_advanced_buttons2: "",
                                                    theme_advanced_buttons3: "",
                                                    theme_advanced_buttons4: "",
                                                    theme_advanced_toolbar_location: "top",
                                                    theme_advanced_toolbar_align: "left",
                                                    theme_advanced_statusbar_location: "bottom",
                                                    theme_advanced_resizing: true,
                                                    // Example word content CSS (should be your site CSS) this one removes paragraph margins
                                                    content_css: "css/word.css",
                                                    // Drop lists for link/image/media/template dialogs
                                                    template_external_list_url: "lists/template_list.js",
                                                    external_link_list_url: "lists/link_list.js",
                                                    external_image_list_url: "lists/image_list.js",
                                                    media_external_list_url: "lists/media_list.js",
                                                    // Replace values for the template plugin
                                                    template_replace_values: {
                                                    username: "Some User",
                                                            staffid: "991234"
                                                    }
                                            });</script>
<!--                                <script type="text/javascript" src="js/Adpost/en.js" onload="tinymce.dom.ScriptLoader._onLoad(this, & #39; http://www.adsportal.in/wp-content/themes/Classifieds/library/js/tiny_mce/langs/en.js&#39;,0);"></script>
                                <script type="text/javascript" src="js/Adpost/editor_template.js" onload="tinymce.dom.ScriptLoader._onLoad(this, & #39; http://www.adsportal.in/wp-content/themes/Classifieds/library/js/tiny_mce/themes/advanced/editor_template.js&#39;,1);"></script>
                                <script type="text/javascript" src="js/Adpost/en(1).js"></script>
                                <script type="text/javascript" src="js/Adpost/editor_plugin.js" onload="tinymce.dom.ScriptLoader._onLoad(this, & #39; http://www.adsportal.in/wp-content/themes/Classifieds/library/js/tiny_mce/plugins/advimage/editor_plugin.js&#39;,2);"></script>
                                <script type="text/javascript" src="js/Adpost/editor_plugin(1).js" onload="tinymce.dom.ScriptLoader._onLoad(this, & #39; http://www.adsportal.in/wp-content/themes/Classifieds/library/js/tiny_mce/plugins/advlink/editor_plugin.js&#39;,3);"></script>
                                <script type="text/javascript" src="js/Adpost/editor_plugin(2).js" onload="tinymce.dom.ScriptLoader._onLoad(this, & #39; http://www.adsportal.in/wp-content/themes/Classifieds/library/js/tiny_mce/plugins/iespell/editor_plugin.js&#39;,4);"></script>-->
                                </div>

                                <!--content-wrap end -->

                                </body></html>
                                <?php
                                include 'Footer.php';
                                ?>