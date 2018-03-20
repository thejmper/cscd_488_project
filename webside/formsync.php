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
	if (isset($_POST["form_id"]) && isset($_POST["fields_xml"]))
	{
		updateForm($conn, $_POST["form_id"], $_POST["fields_xml"]);
	}
	else if (isset($_POST["report_id"]) && isset($_POST["fields_xml"]))
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
	else if (isset($_GET["form_id"]))
	{
		formExists($conn, $_GET["form_id"]);
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

function updateForm($conn, $formID, $fieldsXML)
{
	$sql = "UPDATE forms SET fields_XML=?, last_modified=UTC_TIMESTAMP() WHERE form_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("si", $fieldsXML, $formID);
	$statement->execute();
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

function formExists($conn, $formID)
{
	$sql = "SELECT EXISTS (SELECT * FROM forms WHERE form_id=?) as doesExist";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $formID);
	$statement->execute();
	$statement->bind_result($doesExist);

	while ($statement->fetch())
	{
		$result = array("doesExist"=>$doesExist);
	}
	$statement->close();
	if ($doesExist === 1)
	{
		echo "true";
		return true;
	}
	else
	{
		echo "false";
		return false;
	}
}

?>