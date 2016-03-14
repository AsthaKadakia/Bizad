<?php
include 'Header.php';
require_once 'Connection.php';
    $sql1="Select * from advertisement where advertisementID=".$_SESSION['adid'];
    $result=mysql_query($sql1);

    while ($row = mysql_fetch_array($result)) {
        $id=$row['advertisementID'];
        $catid=$row['CategoryID'];
        $title=$row['AdsTitle'];
        $loc=$row['Location'];
        $desc=$row['Description'];
        $nm=$row['OwnerName'];
        $email123=$row['email'];
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
        
        $sqla="select ImageURL from image where ImageID=".$imgid;
        $re=  mysql_query($sqla);
        while($r=  mysql_fetch_array($re))
        {
            $img1=$r['ImageURL'];
        //echo $faq_id;
        }
        echo "        
         <div class=\"post_section\"><span class=\"bottom\"></span> 
         <a href=\"#\"><img src=\"$img1\" alt=\"image not displayed\" /></a>            
         <h2> </h2>
         <h3>$title</h3>
             <h2>$catname</h2>
             <h1>$loc<h1>
                 <h3>$desc</h3>
         <span class=\"author-date\"><span id=\"author\"><strong>Title</strong>";echo "|"
         . "</span><span id=\"date\"><strong>&nbsp;Date:</strong>"; echo $email123." "; "</span></span>
        <span class\"author-date\"> <p>";echo "<br/><br/>".$tag;"<br/><br/></p></span>";
         echo " <span class\"author-date\"><br/><br/><p>".$phn;"</p></span>"
         . "<span class\"author-date\"><br/><br/><p></p></span>";
        echo "</div>";
        
      }   

    