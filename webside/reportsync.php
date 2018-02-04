<?php
header("Access-Control-Allow-Origin: *");
// Disable cache
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
require_once('conn.php');

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error)
{
	die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
	if (isset($_POST["case_id"]) && isset($_POST["author_id"]))
	{
		createReport($conn, $_POST["case_id"], $_POST["author_id"]);
	}
}
else if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
	if (isset($_GET["case_id"]))
	{
		getReportByCase($conn, $_GET["case_id"]);
	}
}

$conn->close();

function createReport($conn, $caseID, $authorID)
{
	$sql = "INSERT INTO reports (case_id, author_id, last_modified) VALUES " .
	"(?, ?, UTC_TIMESTAMP())";
	$statement = $conn->prepare($sql);
	$statement->bind_param("is", $caseID, $authorID);
	$statement->execute();
	$statement->close();

	$sql = "SELECT @@IDENTITY AS theID";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($reportID);

	while ($statement->fetch())
	{
		echo $reportID;
	}

	$statement->close();
}

function getReportByCase($conn, $caseID)
{

}

?>