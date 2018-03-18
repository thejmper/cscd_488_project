<?php
header("Access-Control-Allow-Origin: *");
// Disable cache
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
require_once __DIR__ . '/../conn.php';

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
	else if (isset($_POST["close"]) && isset($_POST["caseID"]))
	{
		closeCase($conn, $_POST["caseID"]);
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
	"(?, ?)";
	$statement = $conn->prepare($sql);
	$statement->bind_param("si", $name, $license);
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
	$sql = "SELECT * FROM case_files WHERE case_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $caseID);
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

function closeCase($conn, $caseID)
{
	$sql = "UPDATE case_files SET closed=1 WHERE case_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $caseID);
	$statement->execute();
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

function getFacility($conn, $facilityID)
{
	$sql = "SELECT * FROM facilities WHERE facility_id=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("i", $facilityID);
	$statement->execute();
	$statement->bind_result($facilityID, $facilityLicense, $facilityName);

	while ($statement->fetch())
	{
		$result = array("facilityID"=>$facilityID, "facilityLicense"=>$facilityLicense, "facilityName"=>$facilityName);
	}

	$statement->close();
	return $result;
}

function getAllFacilities($conn)
{
	$sql = "SELECT * FROM facilities";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($facilityID, $facilityLicense, $facilityName);

	while ($statement->fetch())
	{
		$row = array("facilityID"=>$facilityID, "facilityLicense"=>$facilityLicense, "facilityName"=>$facilityName);
		$resultArray[] = $row;
	}

	$statement->close();
	return $resultArray;
}

function assignUser($conn, $caseID, $userID)
{
	$sql = "INSERT INTO assigned (username, case_id) VALUES " .
	"(?, ?)";
	$statement = $conn->prepare($sql);
	$statement->bind_param("si", $userID, $caseID);
	$statement->execute();
	$statement->close();
}

function isUserAssigned($conn, $caseID, $userID)
{
	$sql = "SELECT EXISTS (SELECT * FROM assigned WHERE case_id=? AND username=?) as isAssigned";
	$statement = $conn->prepare($sql);
	$statement->bind_param("is", $caseID, $userID);
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