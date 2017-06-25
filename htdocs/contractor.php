<html>
<body>
<form method=post >
<h1>Contractor form</h1><br/>
<table>
<tr>
<td>Contractor id:<td><input type=text name="t1"/><br/><tr>
<td>Name:<td><input type=text name="t2"><br/><tr>
<td>Speciality:<td><input type=text name="t3"><br/><tr>
<td>Phone:<td><input type=text name="t4"><br/><tr>
<td>Email-id<td><input type=text name="t5"><br/><tr>
<td>Pan_no.:<td><input type=text name="t6"><br/><tr>
<td>Bank_ifsc:<td><input type=text name="t7"><br/><tr>
<td>Accno.:<td><input type=text name="t8"><br/><tr>
</table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/>
<?php
if(isset($_POST["s"]))
{
$id=$_POST["t1"];
$name=$_POST["t2"];
$spe=$_POST["t3"];
$ph=$_POST["t4"];
$em=$_POST["t5"];
$p=$_POST["t6"];
$b=$_POST["t7"];
$a=$_POST["t8"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into contractor values('$id','$name','$spe','$ph','$em','$p','$b','a')");
echo "Added";
}
?>
</form>
</body>
</html>