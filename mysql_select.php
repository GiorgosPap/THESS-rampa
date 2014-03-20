<?php

//Stoixeia gia th sundesh sth vash dedomenwn.
$db_server["host"] = "mysql13.000webhost.com"; //database server
$db_server["username"] = "a1790531_thess"; // DB username
$db_server["password"] = "123qwe"; // DB password
$db_server["database"] = "a1790531_thess";// database name


//sundesh sthn vash dedomenwn.
$connection = mysql_connect($db_server["host"], $db_server["username"], $db_server["password"]);
 mysql_query ('SET CHARACTER SET utf8');
 mysql_query ('SET COLLATION_CONNECTION=utf8_general_ci');
 mysql_select_db($db_server["database"], $connection);

if(!$connection) die('Could not connect to MySQL:' . mysql_error() ); 


$query="SELECT * FROM rampa";

 
$result = mysql_query($query,$connection);
												
//katametrhsh epistrefomenwn grammwn
$num=mysql_num_rows($result);
												
//an ektelesthke swsta
if($num>0){

	while($row = mysql_fetch_array($result,MYSQL_NUM)){
		$r_id = $row[0];
		$r_lat = $row[1];
		$r_lng = $row[2];
		$r_movement = $row[3];
		$r_type= $row[4];
		$r_floor = $row[5];
		$r_cond_floor = $row[6];
		$r_parking = $row[7];
		$r_rating = $row[8];
        
		
		
		echo "<script type='text/javascript'>
			    elements.push(['".$r_id."','".$r_lat."','".$r_lng."','".$r_movement."','".$r_type."','".$r_floor."','".$r_cond_floor."','".$r_parking."','".$r_rating."']);
			  </script>
			 ";
    }
}
mysql_close($connection);

//header('Location:http://localhost/project_thes/index.php');
?>