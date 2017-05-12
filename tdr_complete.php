<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="dbstyle.css" />
</head>
<body>
<h1>Total Dependency Ratios by Year</h1>
<?php

include_once "header.php";

$hn = 'localhost';
$db = 'practice';
$un = 'root';
$pw = '';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM total_dependency NATURAL JOIN country";
$result = $conn->query($query);
if (!$result) die($conn->error);

$rows = $result->num_rows;

echo "<table style=/'width:100%'/>";

echo "<tr>";
	echo "<th>Country</th>";
	echo "<th>Year</th>";
	echo "<th>Total Dependency Ratio</th>";
echo "</tr>";

while ($row = $result->fetch_assoc()) {
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
