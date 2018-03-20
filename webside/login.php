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
	if (isset($_POST["username"]) && isset($_POST["password"]))
	{
		login($conn, $_POST["username"], $_POST["password"]);
	}
	else if (isset($_POST["username"]))
	{
		userExists($conn, $_POST["username"]);
	}
	else
	{
		listUsers($conn);
	}
}
else if ($_SERVER['REQUEST_METHOD'] === 'PUT')
{
	$_PUT = array();
	parse_str(file_get_contents('php://input'),$_PUT);

	if (isset($_PUT["username"]) && isset($_PUT["password"]) &&
		isset($_PUT["name"]) && isset($_PUT["admin"]))
	{
		createUser($conn, $_PUT["username"], $_PUT["password"], $_PUT["name"], $_PUT["admin"]);
	}
	else
	{
		echo "invalid parameters";
	}
}

$conn->close();

// Start of functions

function login($conn, $username, $password)
{
	if (passwordCorrect($conn, $password, $username))
	{
		$sql = "SELECT name, admin FROM users WHERE username=?";
		$statement = $conn->prepare($sql);
		$statement->bind_param("s", $username);
		$statement->execute();
		$statement->bind_result($name, $admin);

		while ($statement->fetch())
		{
			$row = array("name"=>$name, "admin"=>$admin);
			$resultArray[] = $row;
		}

		if (sizeof($resultArray) > 0)
		{
			echo $name . "\n";
			echo $admin;
		}
		else
		{
			echo "invalid";
		}

		$statement->close();
	}
	else
	{
		echo "invalid login";
	}
}

function userExists($conn, $username)
{
	$sql = "SELECT EXISTS (SELECT * FROM users WHERE username=?) as alreadyExists";
	$statement = $conn->prepare($sql);
	$statement->bind_param("s", $username);
	$statement->execute();
	$statement->bind_result($alreadyExists);

	while ($statement->fetch())
	{
		$result = array("alreadyExists"=>$alreadyExists);
	}
	$statement->close();

	echo $alreadyExists; // Echoes/returns 1 if user exists, 0 if it doesn't
	if ($alreadyExists === 1)
	{
		return true;
	}
	return false;
}

function createUser($conn, $username, $password, $name, $admin)
{
	if (!empty($username) && !empty($password) && !empty($name) && !userExists($conn, $username))
	{
		$passwordHashed = password_hash($password, PASSWORD_DEFAULT);
		$sql = "INSERT INTO users (username, password, name, admin) VALUES (?,?,?,?)";
		$statement = $conn->prepare($sql);
		$statement->bind_param("sssi", $username, $passwordHashed, $name, $admin);
		$statement->execute();
		$statement->close();
	}
	else
	{
		echo "user already exists";
	}
}

function listUsers($conn)
{
	$sql = "SELECT username, name, admin FROM users";
	$statement = $conn->prepare($sql);
	$statement->execute();
	$statement->bind_result($username, $name, $admin);

	$resultArray = array();
	while ($statement->fetch())
	{
		echo $username . "," . $name . "," . $admin . "\n";
	}

	$statement->close();
}

function passwordCorrect($conn, $password, $username)
{
	return password_verify($password, getHashedPassword($conn, $username));
}

function getHashedPassword($conn, $username)
{
	$sql = "SELECT password FROM users WHERE username=?";
	$statement = $conn->prepare($sql);
	$statement->bind_param("s", $username);
	$statement->execute();
	$statement->bind_result($hashedPassword);
	while ($statement->fetch())
	{
		$result = array("password"=>$hashedPassword);
	}
	$statement->close();

	return $hashedPassword;
}

?>