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
	if (isset($_POST["report_id"]) && isset($_POST["fields_xml"]))
	{
		createForm($conn, $_POST["report_id"], $_POST["fields_xml"]);
	}
}
else if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
	if (isset($_GET["report_id"]))
	{
		getFormsByReport($conn, $_GET["report_id"]);
	}
}

$conn->close();

function createForm($conn, $reportID, $fieldsXML)
{
	$sql = "INSERT INTO forms (report_id, fields_xml, last_modified) VALUES (?,?,UTC_TIMESTAMP())";
	$statement = $conn->prepare($sql);
	$statement->bind_param("is", $reportID, $fieldsXML);
	$statement->execute();
	$statement->close();

	$sql = "SELECT @@IDENTITY AS theID";
	$statement = $conn ->prepare($sql);
	$statement->execute();
	$statement->bind_result($formID);

	while ($statement->fetch())
	{
		echo $formID;
	}

	$statement->close();
}

function getFormsByReport($conn, $reportID)
{
	$sql = "SELECT * FROM forms WHERE report_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $reportID);
	$statement->execute();
	$statement->bind_result($formID, $reportID, $fieldsXML, $lastModified);

	while ($statement->fetch())
	{
		echo $formID . "|" . $reportID . "|" . $fieldsXML . "|" . $lastModified . "```";
	}

	$statement->close();
}

?>