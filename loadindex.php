<?php
require_once 'Connection.php';
        $sql="Select * from advertisement";
        $res=  mysql_query($sql);
        
        while($row=  mysql_fetch_array($res))
        {
            $title=$row['AdsTitle'];
            $desc=$row['Description'];
            $imgid=$row['ImageID'];
            $tags=$row['tag'];
            
            $s="Select ImageURL from image where ImageID=".$imgid;
            $r=  mysql_query($s);
            
            while($rw=  mysql_fetch_array($r))
            {
                $imgurl=$rw['ImageURL'];
        echo " <li>
                    <div> <a  class=\"magnify\" >
                            <img src=\"$imgurl\" alt=\"\">
                        </a>
                    </div>
                    <a class=\"js-load\" href=\"http://ads.economist.com/detail/bmw-ideas-on-the-table\">
                        <h2 title=\"BMW: Ideas on the Table\">$title</h2>
                        
                            <p>$tags</p>
                    </a>
                </li> 
               
";
            }
        }