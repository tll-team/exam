<?php
	//grant all on hr.* to exams@localhost identified by 'exams'
	$servername = "localhost";
	$username = "exams";
	$password = "exams";

	// Create connection
	$conn = mysql_connect($servername, $username, $password);
	mysql_set_charset('utf8',$conn);
	// Check connection
	if (!($conn)) {
		die("Connection failed: " . mysql_error());
	}

	$sql = "
	SELECT  `id` ,  `PID` ,  `title` ,  `firstName` ,  `lastName` ,  `positionName` ,  `workStartDate` , birthDate
	FROM  hr.`persons`
	LIMIT 0 , 50
	";
	$result = mysql_query($sql,$conn);

	$listName="";
	while($row = mysql_fetch_assoc($result)) {
		   $listName .= "<div class='personInfo'> id: " . $row["id"]. " - Name: " . $row["firstName"]. " " . $row["lastName"]. "</div>";
	}
	if ($listName=="") {
		$listName="no result";
	}
	mysql_close();
?>

<!DOCTYPE html>
<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<TITLE>ข้อมูลพนักงาน บริษัท เอบีซี จำกัด [แบบทดสอบพนักงานตำแหน่งโปรแกรมเมอร์]</TITLE>
<script src='/exams/javascripts/jquery-3.3.1.min.js'></script>
<script src='/exams/javascripts/persons.js'></script>
</head>
<body>
<?php
  echo "<div class='main'>{$listName}</div>";
?>
</body>
</html>
