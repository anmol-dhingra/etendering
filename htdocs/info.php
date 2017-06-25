<html>
<head>
</head>
<body bgcolor="#c7d0d9">
<?php
$id1=$_POST['id'];
mysql_connect("localhost","root","");
mysql_select_db("emp");
$query=mysql_query("select * from contractor where contractorid='$_POST[id]'");
$query1=mysql_query("select * from address where contractorid='$_POST[id]'");
$query2=mysql_query("select * from bank,contractor where contractor.bank_ifsc=bank.bank_ifsc and contractor.contractorid='$_POST[id]'");
?>
<font face="monotype corsiva"><h3>Welcome:</font>
<?php
while($record=mysql_fetch_array($query))
{
echo $record['name']."<br><br>";
echo 
(
"Contractor Details"."<br/>"."<table border=1>
<tr><th>Contractor id</th><th>Name</th><th>Speciality</th><th>Phone</th><th>Email</th><th>Pan_no</th><th>Bank_Ifsc</th><th>Acc_no</th>
<tr><td>".$id1."<td>".$record['name']."<td>".$record['speciality']."<td>".$record['Phone']."<td>".$record['email']."<td>".$record['pan_no']."<td>".$record['bank_ifsc']."<td>".$record['acc_no']."<br/>
</table></br>"
);
}
while($ad=mysql_fetch_array($query1))
{
echo
(
"Address Details"."<br>".
"<table border=2>
<tr><th>Address</th><th>City</th><th>Pincode</th><th>Country</th><th>State</th>
<tr><td>".$ad['address']."<td>".$ad['city']."<td>".$ad['pincode']."<td>".$ad['country']."<td>".$ad['state'].
"</table><br>"
);
}
while($bn=mysql_fetch_array($query2))
{
echo
(
"Bank Details"."<br/>".
"<table border=2>
<tr><th>Bank Ifsc<th>Name<th>Bank Branch
<tr><td>".$bn['bank_ifsc']."<td>".$bn['bank_name']."<td>".$bn['bank_branch'].
"</table>"
);
}
?>
</body>
</html>