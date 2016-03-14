<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

                              
                               require_once 'Connection.php';
                               $query1= "select * from city";
                               $q1=mysql_query($query1);
 
                               while($row = mysql_fetch_array($q1)) 
                               {  
                                   
                                    $x[]=$row['CityName'];
                                    
                                 
                             
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
