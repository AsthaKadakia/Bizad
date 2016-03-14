<?php

if(empty($_SESSION['email'])){
    echo "<script type=\"text/javascript\">
    alert(\"Yor are not logged in\");
   </script>";
}
require_once 'Connection.php';
try{
    $sql1="Select * from advertisement where usremail='".$_SESSION['email']."'";
    $result=mysql_query($sql1);

    while ($row = mysql_fetch_array($result)) {
        $id=$row['advertisementID'];
        $catid=$row['CategoryID'];
        $title=$row['AdsTitle'];
        $loc=$row['Location'];
        $desc=$row['Description'];
        $nm=$row['OwnerName'];
        $email12=$row['email'];
        $phn=$row['Phone'];
        $tag=$row['tag'];
        $imgid=$row['ImageID'];
        $url=$row['URL'];
        $code=$row['CouponCode'];
        
        $sq="Select * from category where CategoryID=$catid";
        $r1=  mysql_query($sq);
        while($a=  mysql_fetch_array($r1))
        {
            $cat=$r['CategoryName'];
        }
        
        //echo $faq_id;
        
        echo "        
        
         <a href=\"#\"><img src=\"$url\" alt=\"image not displayed\" /></a>            
         <h2> </h2><hr/>
         <h3>$title</h3>
             <h2>$cat</h2>
             <h1>$loc<h1>
                 <h3>$desc</h3>
         <span class=\"author-date\"><span id=\"author\"><strong>Title</strong>";  echo "|"
         . "</span><span id=\"date\"><strong>&nbsp;Date:</strong>";" "; "</span></span>
        <span class\"author-date\"> <p>";echo "<br/><br/>".$tag;"<br/><br/></p></span>";
         echo " <span class\"author-date\"><br/><br/><p>".$phn;"</p></span>"
         . "<span class\"author-date\"><br/><br/><p></p></span>";
        
        
                
            
            echo "<br/> <div class=\"button float_r\"><a href=\"blog_post.html\" class=\"more\">Publish</a></div>";    
        
        echo "";
        
      }   
}
catch (Exception $ex)
 {
    header('Location:Signin.php');
 }


