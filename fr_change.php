<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<body>
<h1>Percentage Change in Fertility Rates, 1980-2015</h1>
<?php

include_once "header.php";


$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT country_name, sum((IF (year=2015, value, 0)-IF (year=1980, value, 0))) / (
IF (year=1980, value, 0)) * 100 AS percentage FROM fertility_rate NATURAL JOIN country 
GROUP BY country_id ORDER BY percentage";

$result = $conn->query($query);
if (!$result) die($conn->error);

$rows = $result->num_rows;

echo "<table style=/'width:100%/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Change</th>";
echo "</tr>";

while ($row = $result->fetch_assoc()) {
	echo "<tr>";
	echo "<td>";
	echo $row["country_name"];
	echo "</td>";
	echo "<td>";
	echo $row["percentage"];
	echo "</td>";
}
echo "</table>";

include_once "dbfooter.php";

?>

</body>
</html>

</html></html>