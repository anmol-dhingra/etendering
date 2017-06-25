<html>
<head>
<style>
#wrap{
background: #21A02A;
color:#fff;
font-weight:bold;
font-size:20px;
height:25px;
padding-top:0px;
padding:0px;
padding-left:0px;
border-radius:2px;
padding:10px;
}

#wrap1{
margin: 10px auto;
width:20%;
height%:190px;
font-size:18px;
color:black;
}
</style>
</head>
<title> Latest Tender 
</title>
<body>
<form method=post>
<center>
<fieldset style="width:50%">
<legend id="wrap">
Latest Tender
</legend>
<table id="wrap1">
<tr><td>Tender No.<td><input type=text name=tn><br/></tr>
<tr><td>Document Request Date<td><input type=text name=rd><font size=1 face=arial>(As yyyy-mm-dd)</font><br/></tr>
<tr><td>Tender Description<td><textarea rows=10 cols=25 name=td></textarea><br/></tr>
</table><br/>
<input type=reset>&nbsp<input type=submit name=sb value=Submit>
</fieldset>
</center>
<?php
if(isset($_POST["sb"]))
{
$t=$_POST['tn'];
$r=$_POST['rd'];
$td=$_POST['td'];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into latest_tender values('$t','$td','$r')");
echo "Added";
}
?>
</form>
</body>
</html>