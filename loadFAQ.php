<?php

    require_once 'Connection.php';
    $sql1="Select * from faq ORDER BY `faq`.`date` ASC";
    $result=mysql_query($sql1);
    
    echo " <html>
         <head></head>
         <body>
         <div class=\"Category\">";
         
    
    
    while ($row = mysql_fetch_array($result)) {
        $faq_id=$row['faqID'];
        $name=$row['name'];
        $quest=$row['Ques'];
        $date1=$row['date'];
        
        //echo $faq_id;
        
        echo "        
         <div class=\"post_section\"><span class=\"bottom\"></span> 
         <a href=\"\"><img src=\"images/userprofilephoto.png\" alt=\"image not displayed\" /></a>            
         <h2> </h2><hr/>
         <span class=\"author-date\"><span id=\"author\"><strong>User</strong>"; echo " ".$name; echo "|"
         . "</span><span id=\"date\"><strong>&nbsp;Date:</strong>"; echo $date1." "; "</span></span>
         <p>";echo "<br/><br/>".$quest;"</p>";
         $anssql="Select ansid from faqans where faqid=".$faq_id;
         $res=  mysql_query($anssql);
         while ($row1 = \mysql_fetch_array($res)) {
            $ans_id=$row1['ansid'];
            
            $s="select * from faqans where ansid=".$ans_id;
            $re=  mysql_query($s);
            while ($row2 = \mysql_fetch_array($re)) {
                echo "<p><br/><br/>". $row2['ans']."</p>";
                echo "<br/>"
                       . " <div class=\"button float_r\"><a href=\"reply1\" class=\"more\">Reply</a></div>"
                        
                . "<div id=\"reply1\" style=visibility:hidden>
                    <form method=\"post\" >
                        <label for=\"email\">E-Mail:</label>
                        <input type=\"email\" name=\"email\" id=\"email\" autofocus required><br><br>
                        <label for=\"name\">Name:</label>&nbsp;
                        <input type=\"name\" name=\"name\" id=\"name\"    autofocus required><br><br>
                        <label for=\"reply\">Reply:</label>
                        <textarea name=\"reply\" id=\"comments\" rows=\"5\" cols=\"23\"></textarea>
                        <input class=\"action\" type=\"submit\" value=\"Submit\">
                    </form></div>"
                 ; 
            }
            
            
        }
           echo "</div>";
      }   
     
      echo "</div></div></body></hmtl>";
      
