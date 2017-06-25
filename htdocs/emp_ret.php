<html>
<head>
</head>
<body bgcolor="#c7d0d9">
<?php
$id1=$_POST['id'];
mysql_connect("localhost","root","");
mysql_select_db("emp");
$query=mysql_query("select * from emp where name='$_POST[id]'");
while($record=mysql_fetch_array($query))
{
echo $record['name']."<br><br>";
echo 
(
"<table border=1>
<tr>
	<th>Employee ID</th>
	<th>Designation</th>
	<th>Contact No</th>
	<th>Email-ID</th>
	<th>Year of Joining</th>
	<th>Date of Birth</th>
</tr>
<tr>
	 <td>".$record['empid'].
	"<td>".$record['designation'].
	"<td>".$record['Phone'].
	"<td>".$record['Emailid'].
	"<td>".$record['Year_of_joining'].
	"<td>".$record['dob'].
"</tr>
<br/>
</table></br>"
);
}
?>
</body>
</html>
