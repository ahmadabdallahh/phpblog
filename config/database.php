<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "blog_system";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
} catch (PDOException $e) {
    echo "Connection Failed " . " " . $e->getMessage();
}
