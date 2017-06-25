<html>
<head>
</head>
<body bgcolor="#c7d0d9">
<form method=post id="form_id">
<center><h1>Employee form</h1><br/>
<table>
<tr>
<td>Emp id:<td><input type=text name="t1"/><br/>
<tr>
<td>Name:<td><input type=text name="t2"><br/>
<tr>
<td>Designation:<td><input type=text name="t3"><br/><tr>
<td>Phone:<td><input type=text name="t4"><br/><tr>
<td>Email-id<td><input type=text name="t5"><br/><tr>
<td>Year of joining:<td><input type=text name="t6">(yyyy,mm,dd)<br/><tr>
<td>Date of birth:<td><input type=text name="t7">(yyyy,mm,dd)<br/></table>
<input type=reset>&nbsp<input type=submit name="s" value="Submit"><br/> </center>
<?php
if(isset($_POST["s"]))
{
$id=$_POST["t1"];
$name=$_POST["t2"];
$des=$_POST["t3"];
$ph=$_POST["t4"];
$em=$_POST["t5"];
$y=$_POST["t6"];
$d=$_POST["t7"];
mysql_connect("localhost","root","");
mysql_select_db("emp");
mysql_query("insert into emp values('$id','$name','$des','$ph','$em','$y','$d')");
echo "Added";
}
?>
</form>
</body>
</html>