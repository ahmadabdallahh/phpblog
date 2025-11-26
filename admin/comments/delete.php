<?php


include("../../config/database.php");

$id = isset($_GET['id']) ? $_GET['id'] : 0;

if ($id > 0) {
    $sql = "DELETE FROM comments WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);
}

header("Location: index.php");
exit;
