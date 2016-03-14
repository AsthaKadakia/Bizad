<?php
include 'Header.php';
?>

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/menu.css" type="text/css" media="screen" />
        <title></title>
    </head>
    <body>
        <script type="text/javascript">
            function validate()
            {
                alert("hello");
//                var fname = document.getElementById('firstname').value;
//                 var lname = document.getElementById('lastname').value;
//                 var com = document.getElementById('company').value;
//                  var reg = document.getElementById('comregno').value;
//                  var street = document.getElementById('comstreet').value;
//                  var city = document.getElementById('comcity').value;
//                   var dist = document.getElementById('comDist').value;
//                    var state = document.getElementById('comstate').value;
//                     var code = document.getElementById('compostalcode').value; 
//                     var phn= document.getElementById('comphone').value;
//                     var email = document.getElementById('compemail').value; 
//                     var reemail= document.getElementById('recemail').value;
//                     var ans= document.getElementById('recans').value;

                var msg = "";
//                if (fname === null || fname === "")
//                {
//                    msg += "Name is required";
//                    alert(msg);
//                    return false;
//                }
                /* if (/^[a-zA-Z]$/.test(fname)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
//                if (lname === null || lname === "")
//                {
//                    msg += "LastName is required";
//                    alert(msg);
//                    return false;
//                }
                /* if (/^[a-zA-Z]$/.test(lname)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
//                 if (com === null || com === "")
//                {
//                    msg += "CompanyName is required";
//                    alert(msg);
//                    return false;
//                }
//                 if (reg=== null || reg === "")
//                {
//                    msg += "Registation No is required";
//                    alert(msg);
//                    return false;
//                }
//                 if (street=== null || street === "")
//                {
//                    msg += "Street Name is required";
//                    alert(msg);
//                    return false;
//                }
                /* if (/^[a-zA-Z]$/.test(street)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
//                 if (city=== null || city === "")
//                {
//                    msg += "City Name is required";
//                    alert(msg);
//                    return false;
//                }
                /* if (/^[a-zA-Z]$/.test(city)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
//                 if (dist=== null || dist === "")
//                {
//                    msg += "District  is required";
//                    alert(msg);
//                    return false;
//                }
//                 if (state=== null ||state === "")
//                {
//                    msg += "State Name is required";
//                    alert(msg);
//                    return false;
//                }
                /* if (/^[a-zA-Z]$/.test(state)) {
                 return false;
                 } else {
                 alert("Plase Enter Character");
                 return true;
                 }*/
//                 if (phn=== null || phn=== "")
//                {
//                    msg += "Phone No is required";
//                    alert(msg);
//                    return false;
//                }
                /*  if (/^[+][0-9]{10,15}$/.test(mobile)) {//add +
                 return false;
                 } else {
                 alert("Plase Enter Number and 10 digit or 15 digit");
                 return true;
                 }*/
//                  if (code=== null || code=== "")
//                {
//                    msg += "Code No is required";
//                    alert(msg);
//                    return false;
//                }
//                  if (/^[0-9]{7}$/.test(mobile)) {//add +
//                    return false;
//                } else {
//                    alert("Plase Enter Number and 10 digit or 15 digit");
//                    return true;
//                }
//                 if (email=== null || email === "")
//                {
//                    msg += "EmailID is required";
//                    alert(msg);
//                    return false;
//                }
                /*    if (/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/.test(email)) {
                 alert("hiiiiiiiiiiiiiiiii");
                 return false;
                 } else {
                 alert("Plase Enter Right Email");
                 return true;
                 }*/

//                if (reemail=== null || reemail === "")
//                {
//                    msg += "Re-Enter EmailID is required";
//                    alert(msg);
//                    return false;
//                }
                /*    if (/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/.test(reemail)) {
                 alert("hiiiiiiiiiiiiiiiii");
                 return false;
                 } else {
                 alert("Plase Enter Right Email");
                 return true;
                 }*/

//                if (ans=== null || ans=== "")
//                {
//                    msg += "Enter Select Question Answer is required";
//                    alert(msg);
//                    return false;
//                }
                if (document.getElementById('iBirthDay').value === ' ' || document.getElementById('iBirthMonth').value === ' ' ||
                        document.getElementById('iBirthYear').value === ' ' || document.getElementById('iGender').value === '' ||
                        document.getElementById('iSMSCountry').value === ' ' || document.getElementById('recoveryqueselect').value === '')
                {
                    msg += "Plase select at least one";
                    alert(msg);
                    return false;

                }
                else if (document.getElementById('iBirthDay').value === null || document.getElementById('iBirthMonth').value === null ||
                        document.getElementById('iBirthYear').value === null || document.getElementById('iGender').value === null ||
                        document.getElementById('iSMSCountry').value === null || document.getElementById('recoveryqueselect').value === null)
                {
                    msg += "Plase select at least one";
                    alert(msg);
                    return false;
                }


            }
        </script>
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
                <li><a href='FAQ.php' class="drop"><span>FAQ</span></a>
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
        <div id="userprofileregistration" >
            <form id="UserprofileRegisrtationform" action="userprofileReg.php" method="post">
                <fieldset>
                    <h1 class="userProfilehead">User Profile</h1>
                    <hr/>
                    <h1 id="userProfileh1">Basic</h1>
                    <p>
                        <label for="Name" class="lab">First Name:</label>
                        <input id="firstname" name="firstname" type="text" class="ntext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'First'"/>
                        <label for="Name" class="lab">Last Name:</label>
                        <input id="lastname" name="lastname" type="text" class="ntext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Last'"/>
                    </p>

                    <p>
                        <label for="iBirthMonth" id="BirthDateLabel" class="lab" >Birth date:</label><br/>
                        <select class="text" id="iBirthDay" name="iBirthDay" aria-label="Birth day"><option selected="" value="" disabled="disabled">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
                          <select class="text" id="iBirthMonth" name="iBirthMonth" aria-label="Birth month"><option selected="" value="" disabled="disabled">Month</option><option value="January">January</option><option value="February">February</option><option value="March">March</option><option value="April">April</option><option value="May">May</option><option value="June">June</option><option value="July">July</option><option value="August">August</option><option value="September">September</option><option value="October">October</option><option value="November">November</option><option value="December">December</option></select>
                        <select class="text" id="iBirthYear" name="iBirthYear" aria-label="Birth year"><option selected="" value="" disabled="disabled">Year</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option></select>
                    </p>        
                    <p>
                        <label class="lab">Gender:</label><br/>
                        <select id="iGender" name="iGender" class="text">
                            <option selected="" value="">Select one</option><option value="m">Male</option><option value="f">Female</option><option value="u">Not specified</option>
                        </select>
                    </p>
                    <h1 id="userProfileh1">Business</h1>
                    <p>
                        <label for="companylbl" class="lab">Company/Organization Name:</label><br/> 
                        <input id="company" name="company" type="text" class="text"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Name';"/>
                    </p>
                    <p>
                        <label for="companyRegno" class="lab">Company/Organization Registration Number:</label><br/>
                        <input id="comregno" name="comregno" type="text" class="text" onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Registration Number';"/>
                    </p>
                    <p>
                        <label for="companyAddres" class="lab">Company/Organization Address</label><br/><br/>
                        <label for="companyAddres" class="lab">Street:</label>
                        <input id="comstreet" name="comstreet" type="text" class="stext" onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Street';"/><br/><label for="companyAddres" class="lab">City&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                        <input id="comcity" name="comcity" type="text" class="atext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'City';"/><label for="companyAddres" class="lab">District:</label>
                        <input id="comDist" name="comDist" type="text" class="atext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'District';"/><br/><label for="companyAddres" class="lab">State&nbsp;&nbsp;:</label>
                        <input id="comstate" name="comstate" type="text" class="atext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'State';"/><br/><label for="companyAddres" class="lab">Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                        <select id="iSMSCountry" name="iSMSCountry" class="textcountry"><option selected="selected" disabled="disabled" value="">---Country---</option><option value="AF">Afghanistan ‏(‎+93)</option><option value="AL">Albania ‏(‎+355)</option><option value="DZ">Algeria ‏(‎+213)</option><option value="AD">Andorra ‏(‎+376)</option><option value="AO">Angola ‏(‎+244)</option><option value="AQ">Antarctica ‏(‎+672)</option><option value="AG">Antigua and Barbuda ‏(‎+1)</option><option value="AR">Argentina ‏(‎+54)</option><option value="AM">Armenia ‏(‎+374)</option><option value="AW">Aruba ‏(‎+297)</option><option value="AC">Ascension Island ‏(‎+247)</option><option value="AU">Australia ‏(‎+61)</option><option value="AT">Austria ‏(‎+43)</option><option value="AZ">Azerbaijan ‏(‎+994)</option><option value="BS">Bahamas ‏(‎+1)</option><option value="BH">Bahrain ‏(‎+973)</option><option value="BD">Bangladesh ‏(‎+880)</option><option value="BB">Barbados ‏(‎+1)</option><option value="BY">Belarus ‏(‎+375)</option><option value="BE">Belgium ‏(‎+32)</option><option value="BZ">Belize ‏(‎+501)</option><option value="BJ">Benin ‏(‎+229)</option><option value="BM">Bermuda ‏(‎+1)</option><option value="BT">Bhutan ‏(‎+975)</option><option value="BO">Bolivia ‏(‎+591)</option><option value="BA">Bosnia and Herzegovina ‏(‎+387)</option><option value="BW">Botswana ‏(‎+267)</option><option value="BV">Bouvet Island ‏(‎+47)</option><option value="BR">Brazil ‏(‎+55)</option><option value="IO">British Indian Ocean Territory ‏(‎+44)</option><option value="BN">Brunei ‏(‎+673)</option><option value="BG">Bulgaria ‏(‎+359)</option><option value="BF">Burkina Faso ‏(‎+226)</option><option value="BI">Burundi ‏(‎+257)</option><option value="KH">Cambodia ‏(‎+855)</option><option value="CM">Cameroon ‏(‎+237)</option><option value="CA">Canada ‏(‎+1)</option><option value="CV">Cape Verde ‏(‎+238)</option><option value="KY">Cayman Islands ‏(‎+1)</option><option value="CF">Central African Republic ‏(‎+236)</option><option value="TD">Chad ‏(‎+235)</option><option value="CL">Chile ‏(‎+56)</option><option value="CN">China ‏(‎+86)</option><option value="CX">Christmas Island ‏(‎+61)</option><option value="CC">Cocos (Keeling) Islands ‏(‎+61)</option><option value="CO">Colombia ‏(‎+57)</option><option value="KM">Comoros ‏(‎+269)</option><option value="CG">Congo ‏(‎+242)</option><option value="CD">Congo (DRC) ‏(‎+243)</option><option value="CK">Cook Islands ‏(‎+682)</option><option value="CR">Costa Rica ‏(‎+506)</option><option value="HR">Croatia ‏(‎+385)</option><option value="CU">Cuba ‏(‎+53)</option><option value="CY">Cyprus ‏(‎+357)</option><option value="CZ">Czech Republic ‏(‎+420)</option><option value="DK">Denmark ‏(‎+45)</option><option value="DJ">Djibouti ‏(‎+253)</option><option value="DM">Dominica ‏(‎+1)</option><option value="DO">Dominican Republic ‏(‎+1)</option><option value="EC">Ecuador ‏(‎+593)</option><option value="EG">Egypt ‏(‎+20)</option><option value="SV">El Salvador ‏(‎+503)</option><option value="GQ">Equatorial Guinea ‏(‎+240)</option><option value="ER">Eritrea ‏(‎+291)</option><option value="EE">Estonia ‏(‎+372)</option><option value="ET">Ethiopia ‏(‎+251)</option><option value="FK">Falkland Islands (Islas Malvinas) ‏(‎+500)</option><option value="FO">Faroe Islands ‏(‎+298)</option><option value="FJ">Fiji Islands ‏(‎+679)</option><option value="FI">Finland ‏(‎+358)</option><option value="FR">France ‏(‎+33)</option><option value="GF">French Guiana ‏(‎+594)</option><option value="PF">French Polynesia ‏(‎+689)</option><option value="GA">Gabon ‏(‎+241)</option><option value="GM">Gambia, The ‏(‎+220)</option><option value="GE">Georgia ‏(‎+995)</option><option value="DE">Germany ‏(‎+49)</option><option value="GH">Ghana ‏(‎+233)</option><option value="GI">Gibraltar ‏(‎+350)</option><option value="GR">Greece ‏(‎+30)</option><option value="GL">Greenland ‏(‎+299)</option><option value="GD">Grenada ‏(‎+1)</option><option value="GP">Guadeloupe ‏(‎+590)</option><option value="GU">Guam ‏(‎+1)</option><option value="GT">Guatemala ‏(‎+502)</option><option value="GG">Guernsey ‏(‎+44)</option><option value="GN">Guinea ‏(‎+224)</option><option value="GW">Guinea-Bissau ‏(‎+245)</option><option value="GY">Guyana ‏(‎+592)</option><option value="HT">Haiti ‏(‎+509)</option><option value="HN">Honduras ‏(‎+504)</option><option value="HK">Hong Kong SAR ‏(‎+852)</option><option value="HU">Hungary ‏(‎+36)</option><option value="IS">Iceland ‏(‎+354)</option><option value="IN">India ‏(‎+91)</option><option value="ID">Indonesia ‏(‎+62)</option><option value="IR">Iran ‏(‎+98)</option><option value="IQ">Iraq ‏(‎+964)</option><option value="IE">Ireland ‏(‎+353)</option><option value="IM">Isle of Man ‏(‎+44)</option><option value="IL">Israel ‏(‎+972)</option><option value="IT">Italy ‏(‎+39)</option><option value="JM">Jamaica ‏(‎+1)</option><option value="SJ">Jan Mayen ‏(‎+47)</option><option value="JP">Japan</option><option value="JE">Jersey ‏(‎+44)</option><option value="JO">Jordan ‏(‎+962)</option><option value="KZ">Kazakhstan ‏(‎+7)</option><option value="KE">Kenya ‏(‎+254)</option><option value="KI">Kiribati ‏(‎+686)</option><option value="KR">Korea ‏(‎+82)</option><option value="KW">Kuwait ‏(‎+965)</option><option value="KG">Kyrgyzstan ‏(‎+996)</option><option value="LA">Laos ‏(‎+856)</option><option value="LV">Latvia ‏(‎+371)</option><option value="LB">Lebanon ‏(‎+961)</option><option value="LS">Lesotho ‏(‎+266)</option><option value="LR">Liberia ‏(‎+231)</option><option value="LY">Libya ‏(‎+218)</option><option value="LI">Liechtenstein ‏(‎+423)</option><option value="LT">Lithuania ‏(‎+370)</option><option value="LU">Luxembourg ‏(‎+352)</option><option value="MO">Macao SAR ‏(‎+853)</option><option value="MK">Macedonia, Former Yugoslav Republic of ‏(‎+389)</option><option value="MG">Madagascar ‏(‎+261)</option><option value="MW">Malawi ‏(‎+265)</option><option value="MY">Malaysia ‏(‎+60)</option><option value="MV">Maldives ‏(‎+960)</option><option value="ML">Mali ‏(‎+223)</option><option value="MT">Malta ‏(‎+356)</option><option value="MH">Marshall Islands ‏(‎+692)</option><option value="MQ">Martinique ‏(‎+596)</option><option value="MR">Mauritania ‏(‎+222)</option><option value="MU">Mauritius ‏(‎+230)</option><option value="YT">Mayotte ‏(‎+262)</option><option value="MX">Mexico ‏(‎+52)</option><option value="FM">Micronesia ‏(‎+691)</option><option value="MD">Moldova ‏(‎+373)</option><option value="MC">Monaco ‏(‎+377)</option><option value="MN">Mongolia ‏(‎+976)</option><option value="ME">Montenegro ‏(‎+382)</option><option value="MS">Montserrat ‏(‎+1)</option><option value="MA">Morocco ‏(‎+212)</option><option value="MZ">Mozambique ‏(‎+258)</option><option value="MM">Myanmar ‏(‎+95)</option><option value="NA">Namibia ‏(‎+264)</option><option value="NR">Nauru ‏(‎+674)</option><option value="NP">Nepal ‏(‎+977)</option><option value="NL">Netherlands ‏(‎+31)</option><option value="AN">Netherlands Antilles (Former) ‏(‎+599)</option><option value="NC">New Caledonia ‏(‎+687)</option><option value="NZ">New Zealand ‏(‎+64)</option><option value="NI">Nicaragua ‏(‎+505)</option><option value="NE">Niger ‏(‎+227)</option><option value="NG">Nigeria ‏(‎+234)</option><option value="NU">Niue ‏(‎+683)</option><option value="KP">North Korea ‏(‎+850)</option><option value="MP">Northern Mariana Islands ‏(‎+1)</option><option value="NO">Norway ‏(‎+47)</option><option value="OM">Oman ‏(‎+968)</option><option value="PK">Pakistan ‏(‎+92)</option><option value="PW">Palau ‏(‎+680)</option><option value="PS">Palestinian Authority ‏(‎+972)</option><option value="PA">Panama ‏(‎+507)</option><option value="PG">Papua New Guinea ‏(‎+675)</option><option value="PY">Paraguay ‏(‎+595)</option><option value="PE">Peru ‏(‎+51)</option><option value="PH">Philippines ‏(‎+63)</option><option value="PL">Poland ‏(‎+48)</option><option value="PT">Portugal ‏(‎+351)</option><option value="QA">Qatar ‏(‎+974)</option><option value="CI">Republic of Côte d'Ivoire ‏(‎+225)</option><option value="RE">Reunion ‏(‎+262)</option><option value="RO">Romania ‏(‎+40)</option><option value="RU">Russia ‏(‎+7)</option><option value="RW">Rwanda ‏(‎+250)</option><option value="WS">Samoa ‏(‎+685)</option><option value="SM">San Marino ‏(‎+378)</option><option value="ST">São Tomé and Príncipe ‏(‎+239)</option><option value="SA">Saudi Arabia ‏(‎+966)</option><option value="SN">Senegal ‏(‎+221)</option><option value="RS">Serbia ‏(‎+381)</option><option value="SC">Seychelles ‏(‎+248)</option><option value="SL">Sierra Leone ‏(‎+232)</option><option value="SG">Singapore ‏(‎+65)</option><option value="SK">Slovakia ‏(‎+421)</option><option value="SI">Slovenia ‏(‎+386)</option><option value="SB">Solomon Islands ‏(‎+677)</option><option value="SO">Somalia ‏(‎+252)</option><option value="ZA">South Africa ‏(‎+27)</option><option value="ES">Spain ‏(‎+34)</option><option value="LK">Sri Lanka ‏(‎+94)</option><option value="SH">St. Helena ‏(‎+290)</option><option value="KN">St. Kitts and Nevis ‏(‎+1)</option><option value="LC">St. Lucia ‏(‎+1)</option><option value="PM">St. Pierre and Miquelon ‏(‎+508)</option><option value="VC">St. Vincent and the Grenadines ‏(‎+1)</option><option value="SD">Sudan ‏(‎+249)</option><option value="SR">Suriname ‏(‎+597)</option><option value="SZ">Swaziland ‏(‎+268)</option><option value="SE">Sweden ‏(‎+46)</option><option value="CH">Switzerland ‏(‎+41)</option><option value="SY">Syria ‏(‎+963)</option><option value="TW">Taiwan ‏(‎+886)</option><option value="TJ">Tajikistan ‏(‎+992)</option><option value="TZ">Tanzania ‏(‎+255)</option><option value="TH">Thailand ‏(‎+66)</option><option value="TL">Timor-Leste ‏(‎+670)</option><option value="TG">Togo ‏(‎+228)</option><option value="TK">Tokelau ‏(‎+690)</option><option value="TO">Tonga ‏(‎+676)</option><option value="TT">Trinidad and Tobago ‏(‎+1)</option><option value="TA">Tristan da Cunha ‏(‎+290)</option><option value="TN">Tunisia ‏(‎+216)</option><option value="TR">Turkey ‏(‎+90)</option><option value="TM">Turkmenistan ‏(‎+993)</option><option value="TC">Turks and Caicos Islands ‏(‎+1)</option><option value="TV">Tuvalu ‏(‎+688)</option><option value="UG">Uganda ‏(‎+256)</option><option value="UA">Ukraine ‏(‎+380)</option><option value="AE">United Arab Emirates ‏(‎+971)</option><option value="UK">United Kingdom ‏(‎+44)</option><option value="US">United States ‏(‎+1)</option><option value="UM">United States Minor Outlying Islands ‏(‎+1)</option><option value="UY">Uruguay ‏(‎+598)</option><option value="UZ">Uzbekistan ‏(‎+998)</option><option value="VU">Vanuatu ‏(‎+678)</option><option value="VA">Vatican City ‏(‎+379)</option><option value="VE">Venezuela ‏(‎+58)</option><option value="VN">Vietnam ‏(‎+84)</option><option value="VG">Virgin Islands, British ‏(‎+1)</option><option value="VI">Virgin Islands, U.S. ‏(‎+1)</option><option value="WF">Wallis and Futuna ‏(‎+681)</option><option value="YE">Yemen ‏(‎+967)</option><option value="ZM">Zambia ‏(‎+260)</option><option value="ZW">Zimbabwe ‏(‎+263)</option></select>                        
<!--<input id="comcountry" name="comcountry" type="text" class="text" value="Country" onfocus="this.value = ''" onblur="if (this.value == '')
                                    this.value = 'Country'"/>--><br/><label for="companyAddres" class="lab">Postal Code:</label>
                        <input id="compostalcode" name="compostalcode" type="text" class="aptext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Postal Code';"/><label for="companyAddres" class="lab">Phone No:</label>
                        <input id="comphone" name="comphone" type="text" class="aptext"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Phone Number';"/> <br/>
                    </p>
                    <p>
                        <label for="compemail" class="lab">Company Email:</label>
                        <input id="compemail" name="compemail" type="email" class="text"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Company Email Address'"/>  
                    </p>
                    <p>
                        <label for="companyweb" class="lab">Company/Organization Website</label>
                        <input id="comweb" name="comweb" type="text" class="text"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Website'"/>
                    </p>
                    <h1 id="userProfileh1">Recovery Option</h1>
                    <p>
                        <label for="altermail" class="lab">Recovery Email Address:</label>
                        <input id="recemail" name="recemail" type="email" class="text"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Recovery Email Address'"/>  
                    </p>
                    <p>
                        <label for="recoveryque" class="lab">Recovery Question:</label><br/>
                        <select id="recoveryqueselect" name="recoveryqueselect" class="textrec">
                            <option selected="" value="" disabled="disabled">Recovery Question?</option><option value="q1">What is your pat name????????????????????????????????????</option><option value="f">Female</option><option value="u">Not specified</option>
                        </select>
                    </p>
                    <p>
                        <label for="recoveryans" class="lab">Answer:</label><br/>
                        <input id="recans" name="recans" type="text" class="text"  onfocus="this.value = ''" onblur="if (this.value == '')
                    this.value = 'Answer'"/>
                    </p>
                    <hr/>
                    <p><input id="acceptTerms" name="acceptTerms" type="checkbox" class="sub"/>
                        <label for="acceptTerms" class="sul">
                            I agree to the <a href="">Terms and Conditions</a> and <a href="">Privacy Policy</a>
                        </label>

                        <button id="agree" type="submit" onclick="validate();">I Agree</button>
                    </p>
                </fieldset>

            </form>
        </div>
    </body>
</html>
<?php
include('Footer.php');
?>