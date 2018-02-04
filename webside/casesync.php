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
	else if (isset($_POST["caseID"]) && isset($_POST["username"]))
	{
		assignUser($conn, $_POST["caseID"], $_POST["username"]);
	}
}
else if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
	if (isset($_GET["case_id"]) && isset($_GET["username"]))
	{
		isUserAssigned($conn, $_GET["case_id"], $_GET["username"]);
	}
	else if (isset($_GET["case_id"]))
	{
		getCase($conn, $_GET["case_id"]);
	}
	else
	{
		getAllCases($conn);
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

function getAllCases($conn)
{
	$sql = "SELECT * FROM case_files";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($caseID, $facilityName, $facilityLicense, $closed);

	while ($statement->fetch())
	{
		echo $caseID . "|" . $facilityName . "|" . $facilityLicense . "|" . $closed . "\n";
		//$row = array("case_id"=>$caseID, "facility_name"=>$facilityName, "facility_license"=>$facilityLicense, "closed"=>$closed);
		//$resultArray[] = $row;
	}

	$statement->close();
}

function assignUser($conn, $caseID, $userID)
{
	$sql = "INSERT INTO assigned (username, case_id) VALUES " .
	"('" . $userID . "','" . $caseID . "')";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->close();
}

function isUserAssigned($conn, $caseID, $userID)
{
	$sql = "SELECT EXISTS (SELECT * FROM assigned WHERE case_id='" . $caseID . "' AND username='" . $userID . "') as isAssigned";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($isAssigned);

	while ($statement->fetch())
	{
		$result = array("isAssigned"=>$isAssigned);
	}
	$statement->close();

	echo $isAssigned; // Echoes/returns 1 if user is assigned, otherwise 0
	if ($isAssigned === 1)
	{
		return true;
	}
	return false;
}
?>