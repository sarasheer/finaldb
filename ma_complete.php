<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<h1>Median Age by Year</h1>
<?php

include_once "header.php";

$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

#To see the median ages of each country for each recorded year

$query = "SELECT * FROM median_age NATURAL JOIN country";
$result1 = $conn->query($query);
if (!$result1) die($conn->error);

$rows = $result1->num_rows;

echo "<table style=/'width:100%'/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Year</th>";
	echo "<th>Median Age</th>";
echo "</tr>";

while ($row = $result1->fetch_assoc()) {
	echo "<tr>";
	echo "<td>";
	echo $row["country_name"];
	echo "</td>";
	echo "<td>";
	echo $row["year"];
	echo "</td>";
	echo "<td>";
	echo $row["value"];
	echo "</td>";
	echo "</tr>";
}
echo "</table>";

include_once "dbfooter.php";
?>	

</body>
</html>