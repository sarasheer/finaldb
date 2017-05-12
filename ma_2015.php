<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<h1>Median Age in 2015</h1>
<?php

include_once "header.php";

$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT country_name, value FROM median_age NATURAL JOIN country WHERE year=2015 ORDER BY value";
$result2 = $conn->query($query);
if (!$result2) die($conn->error);

$rows = $result2->num_rows;

echo "<table style=/'width:100%'/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Median Age</th>";
echo "</tr>";
	
while ($row = $result2->fetch_assoc()) {
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