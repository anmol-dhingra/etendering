<html>
<head>
<style>
#wrap{
background: #21A02A;
color:white;
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
<body>
<form method=post>
<center> 
<fieldset style="width:50%">
<legend id="wrap">Bidding form</legend>
<table id="wrap1">
<tr>
<td>Contractor ID:<td><input type=text name="t1"/><br/>
<tr>
<td>Tender Number:<td><input type=text name="t2"><br/>
<tr>
<td>Bidding Cost:<td><input type=text name="t3"><br/>
</table><input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/> </center>
</fieldset>


<?php
if(isset($_POST["s"]))
{
$cid=$_POST["t1"];
$tid=$_POST["t2"];
$bid=$_POST["t3"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into bidding values('$cid','$tid','$bid')");
echo "Added";
}
?>
</form>
</body>
</html>