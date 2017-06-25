<?php
if(isset($_POST["s"]))
{
$rand=rand(100,999);
$id=$_POST["t2"].$rand;
$name=$_POST["t2"].$_POST["t2a"];
$spe=$_POST["t3"];
$ph=$_POST["t4"];
$em=$_POST["t5"];
$p=$_POST["t6"];
$a=$_POST["t8"];
$ic=$_POST["t9"];
$bn=$_POST["t10"];
$bb=$_POST["t11"];
$pa=$_POST["t12"];
$c=$_POST["t13"];
$pc=$_POST["t14"];
$co=$_POST["t15"];
$st=$_POST["t16"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into bank values('$ic','$bn','$bb')");
mysql_query("insert into contractor values('$id','$name','$spe','$ph','$em','$p','$ic','a')");
mysql_query("insert into address values('$id','$pa','$c','$pc','$co','$st')");
echo "<h3>Congrats</h3>You have been successfully registered <br/> Your Login id: $id";
}
?>