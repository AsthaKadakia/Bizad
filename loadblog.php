<?php

require_once 'Connection.php';
    $sql1="Select * from blog";
    $result=mysql_query($sql1);
    while ($row = mysql_fetch_array($result)) {
        
        $id=$row['id'];
        $name=$row['name'];
        $title=$row['title'];
        $blog=$row['blog'];
        $img=$row['imageid'];
        
        $date1=$row['date'];
        
        $sql="select ImageURL from image where ImageID=".$img;
        $re=  mysql_query($sql);
        while($r=  mysql_fetch_array($re))
        {
            $_SESSION['id']=$id;
           
            $img1=$r['ImageURL'];
        
                    echo "<div class=\"post_section\"><span class=\"bottom\"></span>
                    <img src='$img1'/>         
                    <h2> ";echo $title."<br/></h2><hr/>
                    <span class=\"author-date\"><span id=\"author\"><strong>Author:</strong>".$name." |</span><span id=\"date\"><strong>&nbsp;Date:</strong>".$date1."</span></span>
                    <p>".$blog."</p>
                        
                    <div class=\"button float_r\"><a href=\"loadparticularblog.php\" class=\"more\">Load More...</a></div>
                </div>
                </div>
            </div>";
        }
         
        }
        