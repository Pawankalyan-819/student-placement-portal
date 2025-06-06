<?php
$host = "localhost";
$username = "root";     // Change if needed
$password = "";         // Add your DB password
$database = "student_placement";

$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("❌ Connection failed: " . $conn->connect_error);
}
// echo "✅ Database connected successfully";
?>
