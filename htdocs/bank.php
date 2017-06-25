<html>
<body>
<form method=post>
<h1>Bank info</h1><br/>
<table>
<tr>
<td>IFSC CODE:<td><input type=text name="t1"/><br/><tr>
<td>Bank:<td><input type=text name="t2"><br/><tr>
<td>Bank branch:<td><input type=text name="t3"><br/><tr>
</table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/>
<?php
if(isset($_POST["s"]))
{
$ic=$_POST["t1"];
$bn=$_POST["t2"];
$bb=$_POST["t3"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into bank values('$ic','$bn','$bb')");
echo "Added";
}
?>
</form>
</body>
</html>