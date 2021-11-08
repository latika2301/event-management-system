<?php
$servername = "localhost:8111";
$username = "root";
$password = "";
$dbname = "sanchalana2k21";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}