<?php
header("Access-Control-Allow-Origin: *");
// Disable cache
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
require_once __DIR__ . '/../../conn.php';

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error)
{
	die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
	if (isset($_GET["case_id"]))
	{
		getAssigned($conn, $_GET["case_id"]);
	}
}

$conn->close();

function getAssigned($conn, $caseID)
{
	$sql = "SELECT username FROM assigned WHERE case_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $caseID);
	$statement->execute();
	$statement->bind_result($username);

	while ($statement->fetch())
	{
		echo $username . "\n";
	}
	$statement->close();
}
?>