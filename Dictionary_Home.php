<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<?php
// put your code here
session_start();
$_SESSION['i']=false;
include 'Header.php';
require_once 'Connection.php';
?>
<html>
    <head>
        <title>BizAd Dictionary</title>
        <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
    </head>
    <body>
       
   <script type="text/javascript">
        

            function autoload()
            {
                Dropdown_Source();
            }


            function Dropdown_Source()
            {
               
                
                 var xmlhttp;

                   var source_list = document.getElementById('source');

                    if (window.XMLHttpRequest)
                    {
                         // code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp=new XMLHttpRequest();
                    }

                     else
                    {
                          // code for IE6, IE5
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }

                    xmlhttp.onreadystatechange=function()
                    {
                        
                        //alert("Poonam");

                         if (xmlhttp.readyState===4 && xmlhttp.status===200)
                         {
                           var tmp = xmlhttp.responseText;
                            source = tmp.split(',');

                            var i=0;

                            for(i=0;i<source.length;i++)
                                append_source(source[i]);

                         }
                    }

                        xmlhttp.open("POST","city.php",true);
                        xmlhttp.send();

            }

            function append_source(source_value)
            {
                var source_list = document.getElementById('source');
                source_list.options[source_list.options.length] = new Option(source_value);
            }


            
            function Dropdown_Dest(source)
            {
                

                 var xmlhttp;

                   var dest_list = document.getElementById('dest');

                    if (window.XMLHttpRequest)
                    {
                         // code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp=new XMLHttpRequest();
                    }

                     else
                    {
                          // code for IE6, IE5
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }

                    xmlhttp.onreadystatechange=function()
                    {

                         if (xmlhttp.readyState===4 && xmlhttp.status===200)
                         {
                            //document.getElementById("Mydiv").innerHTML=xmlhttp.responseText;
                            var tmp = xmlhttp.responseText;
                            dest = tmp.split(',');

                            if(dest_list.length > 1)
                            clean_dest(dest_list);

                            var i=0;

                            for(i=0;i<dest.length;i++)
                                append_dest(dest[i]);

                         }
                    }

                        xmlhttp.open("GET","area.php?source="+source,true);
                        xmlhttp.send();

            }

            function append_dest(dest_value)
            {
                var dest_list = document.getElementById('dest');
                dest_list.options[dest_list.options.length] = new Option(dest_value);
            }

            function clean_dest()
            {
                var dest_list = document.getElementById('dest');
                dest_list.options.length = 1;
            }


         

           
        </script>

         </head>
         <body class="js-only" onLoad="autoload();">
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
  
        
        <form name="myform" action="Dictionary_body.php" method="post">

                    <select id="source" name="source" onChange="Dropdown_Dest(this.value);">
                        <option value="0">Vadodara</option>
                                    
                                      </select>
               <select id="dest" name="dest" onChange="Dropdown_TrainID(source.value, this.value);">
                                    <option value="0">SELECT AREA</option>
                       </select>
           
                       
                            

<!--                    <section class="jcs">
                        <a style="display: inline-block;" id="arlnk" class="citl " href="javascript:void(0);">Karelibaug</a>
                        <span id="arBox" class="jsi dn" style="display: none;">
                            <input class="jsin" autocomplete="OFF" tabindex="3" id="where" name="where" value="Karelibaug" type="text">
                            <span style="display: none;" class="jauto dn" id="aauto"></span>
                        </span>			
                    </section>			-->
                    <span class="rem">
                        <input autocomplete="OFF" tabindex="4" id="chkrembercity" checked="" type="hidden"><!--&nbsp;Remember My Location-->
                    </span>	
                    <section class="jcot">
                        <section class="jccs">
                            <input class="jsin  grey" value="" autocomplete="OFF" tabindex="2" id="what" name="what" type="text">
                            <span style="display: none;" class="jauto dn" id="sauto"></span>
                        </section>			
                        <button class="jgb" type="submit" id="go" name="go" value="GO" >GO</button>
                    </section>
                </section>
            </section>
        </form>
                <div class="container">
                    <section class="tabs">
                        <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
                        <label for="tab-1" class="tab-label-1">Popular Search Categories</label>

                        <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
                        <label for="tab-2" class="tab-label-2">Popular B2B Categories</label>
                        <!--
                            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
                                <label for="tab-3" class="tab-label-3">Work</label>
                                
                            <input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
                                <label for="tab-4" class="tab-label-4">Contact</label>
                        -->
                        <div class="clear-shadow"></div>
                        <div class="content">
                            <div class="content-1">
                                <span style="display: inline;" id="hotkeys">
                                    <ul class="hotKeys"><li><a class="block" href="http://www.justdial.com/Mumbai/97/Movies_b2c" onClick="_ct('psc_Movies', 'hmpg');" title="Movies in Mumbai"><span class="mv"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/97/Movies_b2c" onClick="_ct('psc_Movies', 'hmpg');" title="Movies in Mumbai">Movies</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/89/Restaurants_b2c" onClick="_ct('psc_Restaurants ', 'hmpg');" title="Restaurants in Mumbai"><span class="rc"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/89/Restaurants_b2c" onClick="_ct('psc_Restaurants ', 'hmpg');" title="Restaurants in Mumbai">Restaurants </a></li><li><a class="block" href="http://www.justdial.com/verticals/flowers?city=Mumbai" onClick="_ct('psc_Order Flowers', 'hmpg');" target="_blank" title="Order Flowers in Mumbai"><span class="fnp"></span></a><a class="nm" href="http://www.justdial.com/verticals/flowers?city=Mumbai" onClick="_ct('psc_Order Flowers', 'hmpg');" target="_blank" title="Order Flowers in Mumbai">Order Flowers</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/71/Hotels_b2c" onClick="_ct('psc_Hotels', 'hmpg');" title="Hotels in Mumbai"><span class="hr"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/71/Hotels_b2c" onClick="_ct('psc_Hotels', 'hmpg');" title="Hotels in Mumbai">Hotels</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/59/Repairs_b2c" onClick="_ct('psc_Repairs', 'hmpg');" title="Repairs in Mumbai"><span class="ers"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/59/Repairs_b2c" onClick="_ct('psc_Repairs', 'hmpg');" title="Repairs in Mumbai">Repairs</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/95/Travel_b2c" onClick="_ct('psc_Travel', 'hmpg');" title="Travel in Mumbai"><span class="ts"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/95/Travel_b2c" onClick="_ct('psc_Travel', 'hmpg');" title="Travel in Mumbai">Travel</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/78/Personal-Finance_b2c" onClick="_ct('psc_Personal Finance', 'hmpg');" title="Personal Finance in Mumbai"><span class="lf"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/78/Personal-Finance_b2c" onClick="_ct('psc_Personal Finance', 'hmpg');" title="Personal Finance in Mumbai">Personal Finance</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/43/Automobile_b2c" onClick="_ct('psc_Automobile', 'hmpg');" title="Automobile in Mumbai"><span class="auto"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/43/Automobile_b2c" onClick="_ct('psc_Automobile', 'hmpg');" title="Automobile in Mumbai">Automobile</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/62/Food_b2c" onClick="_ct('psc_Food', 'hmpg');" title="Food in Mumbai"><span class="fbp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/62/Food_b2c" onClick="_ct('psc_Food', 'hmpg');" title="Food in Mumbai">Food</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/41/Apparels_b2c" onClick="_ct('psc_Apparels', 'hmpg');" title="Apparels in Mumbai"><span class="ac"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/41/Apparels_b2c" onClick="_ct('psc_Apparels', 'hmpg');" title="Apparels in Mumbai">Apparels</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/51/Computers_b2c" onClick="_ct('psc_Computers', 'hmpg');" title="Computers in Mumbai"><span class="cp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/51/Computers_b2c" onClick="_ct('psc_Computers', 'hmpg');" title="Computers in Mumbai">Computers</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/57/Doctors_b2c" onClick="_ct('psc_Doctors', 'hmpg');" title="Doctors in Mumbai"><span class="ds"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/57/Doctors_b2c" onClick="_ct('psc_Doctors', 'hmpg');" title="Doctors in Mumbai">Doctors</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/58/Education_b2c" onClick="_ct('psc_Education', 'hmpg');" title="Education in Mumbai"><span class="lnt"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/58/Education_b2c" onClick="_ct('psc_Education', 'hmpg');" title="Education in Mumbai">Education</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/54/Electronics_b2c" onClick="_ct('psc_Electronics', 'hmpg');" title="Electronics in Mumbai"><span class="ce"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/54/Electronics_b2c" onClick="_ct('psc_Electronics', 'hmpg');" title="Electronics in Mumbai">Electronics</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/61/Entertainment_b2c" onClick="_ct('psc_Entertainment', 'hmpg');" title="Entertainment in Mumbai"><span class="et"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/61/Entertainment_b2c" onClick="_ct('psc_Entertainment', 'hmpg');" title="Entertainment in Mumbai">Entertainment</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/201/Essentials_b2c" onClick="_ct('psc_Essentials', 'hmpg');" title="Essentials in Mumbai"><span class="ess"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/201/Essentials_b2c" onClick="_ct('psc_Essentials', 'hmpg');" title="Essentials in Mumbai">Essentials</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/63/Furniture_b2c" onClick="_ct('psc_Furniture', 'hmpg');" title="Furniture in Mumbai"><span class="ff"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/63/Furniture_b2c" onClick="_ct('psc_Furniture', 'hmpg');" title="Furniture in Mumbai">Furniture</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/86/Jobs_b2c" onClick="_ct('psc_Jobs', 'hmpg');" title="Jobs in Mumbai"><span class="pc"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/86/Jobs_b2c" onClick="_ct('psc_Jobs', 'hmpg');" title="Jobs in Mumbai">Jobs</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/47/Mobile-Phones_b2c" onClick="_ct('psc_Mobile Phones', 'hmpg');" title="Mobile Phones in Mumbai"><span class="cpa"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/47/Mobile-Phones_b2c" onClick="_ct('psc_Mobile Phones', 'hmpg');" title="Mobile Phones in Mumbai">Mobile Phones</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/88/Real-Estate_b2c" onClick="_ct('psc_Real Estate', 'hmpg');" title="Real Estate in Mumbai"><span class="re"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/88/Real-Estate_b2c" onClick="_ct('psc_Real Estate', 'hmpg');" title="Real Estate in Mumbai">Real Estate</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/91/Security_b2c" onClick="_ct('psc_Security', 'hmpg');" title="Security in Mumbai"><span class="sp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/91/Security_b2c" onClick="_ct('psc_Security', 'hmpg');" title="Security in Mumbai">Security</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/208/Shopping_b2c" onClick="_ct('psc_Shopping', 'hmpg');" title="Shopping in Mumbai"><span class="shop"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/208/Shopping_b2c" onClick="_ct('psc_Shopping', 'hmpg');" title="Shopping in Mumbai">Shopping</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/148/Taxis_b2c" onClick="_ct('psc_Taxis', 'hmpg');" title="Taxis in Mumbai"><span class="taxi"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/148/Taxis_b2c" onClick="_ct('psc_Taxis', 'hmpg');" title="Taxis in Mumbai">Taxis</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/96/Wedding_b2c" onClick="_ct('psc_Wedding ', 'hmpg');" title="Wedding in Mumbai"><span class="wr"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/96/Wedding_b2c" onClick="_ct('psc_Wedding ', 'hmpg');" title="Wedding in Mumbai">Wedding </a></li></ul>		<section class="jpag"><a href="javascript:;" class="dis"><span>&lt;&lt;</span> Prev</a><span class="act">1</span><a href="#" onClick="fn_Banner('2', '24', 'b2c', '0');">2</a><a href="#" onClick="fn_Banner('3', '48', 'b2c', '0');">3</a><a href="#" onClick="fn_Banner('2', '24', 'b2c', '0');">Next <span>&gt;&gt;</span></a></section>	</span>
                            </div>
                            <div class="content-2">
                                <span id="hotkeys">
                                    <ul class="hotKeys"><li><a class="block" href="http://www.justdial.com/Mumbai/116/Food-&amp;-Beverage_b2b" onClick="_ct('b2b_Food &amp; Beverage', 'hmpg');" title="Food &amp; Beverage in Mumbai"><span class="fbp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/116/Food-&amp;-Beverage_b2b" onClick="_ct('b2b_Food &amp; Beverage', 'hmpg');" title="Food &amp; Beverage in Mumbai">Food &amp; Beverage</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/105/Construction,-Machinery-&amp;-Supplies_b2b" onClick="_ct('b2b_Construction, Machinery &amp; Supplies', 'hmpg');" title="Construction, Machinery &amp; Supplies in Mumbai"><span class="constmech"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/105/Construction,-Machinery-&amp;-Supplies_b2b" onClick="_ct('b2b_Construction, Machinery &amp; Supplies', 'hmpg');" title="Construction, Machinery &amp; Supplies in Mumbai">Construction, Machinery &amp; Supplies</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/125/Personal-Finance_b2b" onClick="_ct('b2b_Personal Finance', 'hmpg');" title="Personal Finance in Mumbai"><span class="lf"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/125/Personal-Finance_b2b" onClick="_ct('b2b_Personal Finance', 'hmpg');" title="Personal Finance in Mumbai">Personal Finance</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/109/Electrical-Equipments_b2b" onClick="_ct('b2b_Electrical Equipments', 'hmpg');" title="Electrical Equipments in Mumbai"><span class="elequp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/109/Electrical-Equipments_b2b" onClick="_ct('b2b_Electrical Equipments', 'hmpg');" title="Electrical Equipments in Mumbai">Electrical Equipments</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/123/Industrial-Supplies_b2b" onClick="_ct('b2b_Industrial Supplies', 'hmpg');" title="Industrial Supplies in Mumbai"><span class="indsup"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/123/Industrial-Supplies_b2b" onClick="_ct('b2b_Industrial Supplies', 'hmpg');" title="Industrial Supplies in Mumbai">Industrial Supplies</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/120/Hardware-&amp;-Tools_b2b" onClick="_ct('b2b_Hardware &amp; Tools', 'hmpg');" title="Hardware &amp; Tools in Mumbai"><span class="hrdto"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/120/Hardware-&amp;-Tools_b2b" onClick="_ct('b2b_Hardware &amp; Tools', 'hmpg');" title="Hardware &amp; Tools in Mumbai">Hardware &amp; Tools</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/146/Office-Supplies,-Appliances-&amp;-Services_b2b" onClick="_ct('b2b_Office Supplies, Appliances &amp; Services', 'hmpg');" title="Office Supplies, Appliances &amp; Services in Mumbai"><span class="offel"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/146/Office-Supplies,-Appliances-&amp;-Services_b2b" onClick="_ct('b2b_Office Supplies, Appliances &amp; Services', 'hmpg');" title="Office Supplies, Appliances &amp; Services in Mumbai">Office Supplies, Appliances &amp; Services</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/126/Logistic-Services_b2b" onClick="_ct('b2b_Logistic Services', 'hmpg');" title="Logistic Services in Mumbai"><span class="lgs"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/126/Logistic-Services_b2b" onClick="_ct('b2b_Logistic Services', 'hmpg');" title="Logistic Services in Mumbai">Logistic Services</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/139/Security_b2b" onClick="_ct('b2b_Security', 'hmpg');" title="Security in Mumbai"><span class="sp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/139/Security_b2b" onClick="_ct('b2b_Security', 'hmpg');" title="Security in Mumbai">Security</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/40/Advertising-Services_b2b" onClick="_ct('b2b_Advertising Services', 'hmpg');" title="Advertising Services in Mumbai"><span class="ads"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/40/Advertising-Services_b2b" onClick="_ct('b2b_Advertising Services', 'hmpg');" title="Advertising Services in Mumbai">Advertising Services</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/98/Agriculture_b2b" onClick="_ct('b2b_Agriculture', 'hmpg');" title="Agriculture in Mumbai"><span class="agri"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/98/Agriculture_b2b" onClick="_ct('b2b_Agriculture', 'hmpg');" title="Agriculture in Mumbai">Agriculture</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/100/Automobile_b2b" onClick="_ct('b2b_Automobile', 'hmpg');" title="Automobile in Mumbai"><span class="auto"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/100/Automobile_b2b" onClick="_ct('b2b_Automobile', 'hmpg');" title="Automobile in Mumbai">Automobile</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/103/Business-Services_b2b" onClick="_ct('b2b_Business Services', 'hmpg');" title="Business Services in Mumbai"><span class="busser"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/103/Business-Services_b2b" onClick="_ct('b2b_Business Services', 'hmpg');" title="Business Services in Mumbai">Business Services</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/111/Engineering-Components_b2b" onClick="_ct('b2b_Engineering Components', 'hmpg');" title="Engineering Components in Mumbai"><span class="engg"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/111/Engineering-Components_b2b" onClick="_ct('b2b_Engineering Components', 'hmpg');" title="Engineering Components in Mumbai">Engineering Components</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/114/Film-Production_b2b" onClick="_ct('b2b_Film Production', 'hmpg');" title="Film Production in Mumbai"><span class="film"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/114/Film-Production_b2b" onClick="_ct('b2b_Film Production', 'hmpg');" title="Film Production in Mumbai">Film Production</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/121/Health-&amp;-Medical_b2b" onClick="_ct('b2b_Health &amp; Medical', 'hmpg');" title="Health &amp; Medical in Mumbai"><span class="helmed"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/121/Health-&amp;-Medical_b2b" onClick="_ct('b2b_Health &amp; Medical', 'hmpg');" title="Health &amp; Medical in Mumbai">Health &amp; Medical</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/128/Metals_b2b" onClick="_ct('b2b_Metals', 'hmpg');" title="Metals in Mumbai"><span class="metls"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/128/Metals_b2b" onClick="_ct('b2b_Metals', 'hmpg');" title="Metals in Mumbai">Metals</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/131/Packaging-&amp;-Paper_b2b" onClick="_ct('b2b_Packaging &amp; Paper', 'hmpg');" title="Packaging &amp; Paper in Mumbai"><span class="packp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/131/Packaging-&amp;-Paper_b2b" onClick="_ct('b2b_Packaging &amp; Paper', 'hmpg');" title="Packaging &amp; Paper in Mumbai">Packaging &amp; Paper</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/134/Plant-&amp;-Machinery_b2b" onClick="_ct('b2b_Plant &amp; Machinery', 'hmpg');" title="Plant &amp; Machinery in Mumbai"><span class="plnt"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/134/Plant-&amp;-Machinery_b2b" onClick="_ct('b2b_Plant &amp; Machinery', 'hmpg');" title="Plant &amp; Machinery in Mumbai">Plant &amp; Machinery</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/135/Plastic-&amp;-PVC_b2b" onClick="_ct('b2b_Plastic &amp; PVC', 'hmpg');" title="Plastic &amp; PVC in Mumbai"><span class="ppvc"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/135/Plastic-&amp;-PVC_b2b" onClick="_ct('b2b_Plastic &amp; PVC', 'hmpg');" title="Plastic &amp; PVC in Mumbai">Plastic &amp; PVC</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/136/Printing-&amp;-Publishing_b2b" onClick="_ct('b2b_Printing &amp; Publishing', 'hmpg');" title="Printing &amp; Publishing in Mumbai"><span class="pp"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/136/Printing-&amp;-Publishing_b2b" onClick="_ct('b2b_Printing &amp; Publishing', 'hmpg');" title="Printing &amp; Publishing in Mumbai">Printing &amp; Publishing</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/138/Scientific-Instruments_b2b" onClick="_ct('b2b_Scientific Instruments', 'hmpg');" title="Scientific Instruments in Mumbai"><span class="sciinst"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/138/Scientific-Instruments_b2b" onClick="_ct('b2b_Scientific Instruments', 'hmpg');" title="Scientific Instruments in Mumbai">Scientific Instruments</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/140/Telecommunication_b2b" onClick="_ct('b2b_Telecommunication', 'hmpg');" title="Telecommunication in Mumbai"><span class="tele"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/140/Telecommunication_b2b" onClick="_ct('b2b_Telecommunication', 'hmpg');" title="Telecommunication in Mumbai">Telecommunication</a></li><li><a class="block" href="http://www.justdial.com/Mumbai/141/Textiles-&amp;-Leather_b2b" onClick="_ct('b2b_Textiles &amp; Leather', 'hmpg');" title="Textiles &amp; Leather in Mumbai"><span class="txtler"></span></a><a class="nm" href="http://www.justdial.com/Mumbai/141/Textiles-&amp;-Leather_b2b" onClick="_ct('b2b_Textiles &amp; Leather', 'hmpg');" title="Textiles &amp; Leather in Mumbai">Textiles &amp; Leather</a></li></ul>		<section class="jpag"><a href="javascript:;" class="dis"><span>&lt;&lt;</span> Prev</a><span class="act">1</span><a href="#" onClick="fn_Banner('2', '24', 'b2b', '0');">2</a><a href="#" onClick="fn_Banner('2', '24', 'b2b', '0');">Next <span>&gt;&gt;</span></a></section>	
                                </span>
                            </div>
                            <!--        <div class="content-3">
                                                    <h2>Portfolio</h2>
                            <p>The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.</p>
                                                    <h3>Examples</h3>
                                                    <p>Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's going to be? He's the exact opposite of the hero. And most times they're friends, like you and me! I should've known way back when... You know why, David? Because of the kids. They called me Mr Glass. </p>
                                        </div>
                                        <div class="content-4">
                                                    <h2>Contact</h2>
                            <p>You see? It's curious. Ted did figure it out - time travel. And when we get back, we gonna tell everyone. How it's possible, how it's done, what the dangers are. But then why fifty years in the future when the spacecraft encounters a black hole does the computer call it an 'unknown entry event'? Why don't they know? If they don't know, that means we never told anyone. And if we never told anyone it means we never made it back. Hence we die down here. Just as a matter of deductive logic.</p>
                                                    <h3>Get in touch</h3>
                                                    <p>Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. </p>
                                        </div>-->
                        </div>
                    </section>
                </div>

                </body>
                </html>
                <?php
// put your code here
                include 'Footer.php';
                ?>