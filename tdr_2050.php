<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<h1>Total Dependency Ratios in 2050</h1>
<?php

include_once "header.php";

$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT country_name, value FROM total_dependency NATURAL JOIN country WHERE year=2050 ORDER BY value";
$result = $conn->query($query);
if (!$result) die($conn->error);
$rows = $result->num_rows;

echo "<table style=/'width:100%'/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Total Dependency Ratio</th>";
echo "</tr>";
	
while ($row = $result->fetch_assoc()) {
	echo "<tr>";
	echo  "<td>";
	echo $row["country_name"];
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