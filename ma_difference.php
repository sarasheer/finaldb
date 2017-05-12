<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<h1>Increase in Median Age in Years, 2015-2050</h1>
<?php

include_once "header.php";

$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT country_name, ABS(sum((IF (year=2050, value, 0))-(IF(year=2015, value, 0)))) AS x FROM median_age NATURAL JOIN country GROUP BY country_id ORDER BY x";
$result4 = $conn->query($query);
if (!$result4) die($conn->error);

$rows = $result4->num_rows;

echo "<table style=/'width:100%/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Increase</th>";
echo "</tr>";

while ($row = $result4->fetch_assoc()) {
	echo "<tr>";
	echo "<td>";
	echo $row["country_name"];
	echo "</td>";
	echo "<td>";
	echo $row["x"];
	echo "</td>";
}
echo "</table>";

include_once "dbfooter.php";

?>

</body>
</html>