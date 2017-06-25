<html>
<body>
<form method=post >
<h1>Tender form</h1><br/>
<table>
<tr>
<td>Tender_no:<td><input type=text name="t1"/><br/><tr>
<td>Line_no:<td><input type=text name="t2"><br/><tr>
<td>Estimatedcost:<td><input type=text name="t3"><br/><tr>
<td>Closing_date<td><input type=text name="t4">yyyy-mm-dd<br/><tr>
<td>Opening_date<td><input type=text name="t5">yyyy-mm-dd<br/><tr>
</table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/>
<?php
if(isset($_POST["s"]))
{
$tn=$_POST["t1"];
$ln=$_POST["t2"];
$ec=$_POST["t3"];
$cd=$_POST["t4"];
$od=$_POST["t5"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into tender values('$tn','$ln','$ec','$cd','$od')");
echo "Added";
}
?>
</form>
</body>
</html>