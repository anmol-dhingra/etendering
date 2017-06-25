<html>
<body>
<form method=post >
<h1>ContractorTender form</h1><br/>
<table>
<tr>
<td>Contractorid:<td><input type=text name="t1"/><br/><tr>
<td>Tenderno:<td><input type=text name="t2"><br/><tr>
</table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/>
<?php
if(isset($_POST["s"]))
{
$c=$_POST["t1"];
$t=$_POST["t2"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into contrtender values('$c','$t')");
echo "Added";
}
?>
</form>
</body>
</html>