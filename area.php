<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

                               require_once 'Connection.php';
                                $source = $_GET["source"];
                                $q="SELECT distinct CityId FROM city where CityName = '$source'";
                            $q2=mysql_query($q);
 
                               while($row = mysql_fetch_array($q2)) 
                               {  
                                   $f=$row['CityId'];
                                   
                               }
                               $query1= "select * from area where CityId=$f";
                               $q1=mysql_query($query1);
 
                               while($row = mysql_fetch_array($q1)) 
                               {  
                                   
                                    $x[]=$row['AreaName'];
                                }
            $suggest = "";
            for ($i = 0; $i < count($x); $i++)
            {
                if ($suggest == "")
                    {
                        $suggest = $x[$i];
                    }
                    else
                    {
                        $suggest = $suggest . " , " . $x[$i];
                    }

            }
      
        echo $suggest;

?>
