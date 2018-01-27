<?php
header("Access-Control-Allow-Origin: *");
require_once('conn.php');

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error)
{
	die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
	if (isset($_POST["facility_name"]) && isset($_POST["facility_license"]))
	{
		createCase($conn, $_POST["facility_name"], $_POST["facility_license"]);
	}
}
else if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
	if (isset($_GET["case_id"]))
	{
		getCase($conn, $_GET["case_id"]);
	}
}

$conn->close();

function createCase($conn, $name, $license)
{
	$sql = "INSERT INTO case_files (facility_name, facility_license) VALUES " .
	"('" . $name . "','" . $license . "')";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->close();

	$sql = "SELECT @@IDENTITY AS theID";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($caseID);

	while ($statement->fetch())
	{
		echo $caseID;
	}

	$statement->close();
}

function getCase($conn, $caseID)
{
	$sql = "SELECT * FROM case_files WHERE case_id=" . $caseID;
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($caseID, $facilityName, $facilityLicense, $closed);

	while ($statement->fetch())
	{
		$row = array("facility_name"=>$facilityName, "facility_license"=>$facilityLicense, "closed"=>$closed);
		$resultArray[] = $row;
	}

	if (sizeof($resultArray) > 0)
	{
		echo $facilityName . "\n";
		echo $facilityLicense . "\n";
		echo $closed;
	}
	else
	{
		echo "invalid";
	}

	$statement->close();
}
?>