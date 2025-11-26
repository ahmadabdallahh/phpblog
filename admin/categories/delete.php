<?php
include("../includes/header.php");
include("../../config/database.php");

$id = $_GET["id"];

if ($id <= 0) {
    header("location: index.php");
    exit;
}

// INFO: Handle Delete Method
$sql = "DELETE FROM `categories` WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->execute([$id]);

header("location: index.php");
exit;
