<html>
<body>
<form method=post >
<h1>Supplier form</h1><br/>
<table>
<tr>
<td>Supplier_id:<td><input type=text name="t1"/><br/><tr>
<td>Company:<td><input type=text name="t2"><br/><tr>
<td>Address:<td><input type=text name="t3"><br/><tr>
<td>Region:<td><input type=text name="t4"><br/><tr>
<td>Phone<td><input type=text name="t5"><br/><tr>
</table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/>
<?php
if(isset($_POST["s"]))
{
$id=$_POST["t1"];
$c=$_POST["t2"];
$ad=$_POST["t3"];
$re=$_POST["t4"];
$ph=$_POST["t5"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into supplier values('$id','$c','$ad','$re','$ph')");
echo "Added";
}
?>
</form>
</body>
</html>