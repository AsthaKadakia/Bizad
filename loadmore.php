
<?php
include './Header.php';
require_once 'Connection.php';

try{
    $sql1="Select * from advertisement";
    $result=mysql_query($sql1);

    while ($row = mysql_fetch_array($result)) {
        $id=$row['advertisementID'];
        $catid=$row['CategoryID'];
        $title=$row['AdsTitle'];
        $loc=$row['Location'];
        $desc=$row['Description'];
        $nm=$row['OwnerName'];
        $email=$row['email'];
        $phn=$row['Phone'];
        $tag=$row['tag'];
        $imgid=$row['ImageID'];
        $url=$row['URL'];
        $code=$row['CouponCode'];
        
        $sql="Select * from category where CategoryID=$catid";
        $result1=mysql_query($sql);
        while($row1=  mysql_fetch_array($result1))
        {
            $catname=$row1['CategoryName'];
        }
        
        
        //echo $faq_id;
        $_SESSION['adid']=$id;
        echo "  <li>      
         <div class=\"post_section\"><span class=\"bottom\"></span> 
        <div> 
                            <img src=\"$url\" alt=\"\">
                        </a>
                    </div>         
         <h2> </h2><hr/>
         <h3>$title</h3>
             <h2>$catname</h2>
             <h1>$loc<h1>
                 <h3>$desc</h3>
         <span class=\"author-date\"><span id=\"author\"><strong>Title</strong>"; "|"
         . "</span><span id=\"date\"><strong>&nbsp;Date:</strong>";  "</span></span>
        <span class\"author-date\"> <p>";echo "<br/><br/>".$tag;"<br/><br/></p></span>";
         echo " <span class\"author-date\"><br/><br/><p>".$phn;"</p></span>"
         . "<span class\"author-date\"><br/><br/><p></p></span>";
   echo "<br/> <div class=\"button float_r\"><a href=\"View.php\" class=\"more\">More</a></div>";    
        
        echo "</div></li>";
        
      }   
}
catch (Exception $ex)
 {
    header('Location:Signin.php');
 }

 ?>