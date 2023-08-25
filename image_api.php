<?php
include 'connect.php';

$imageId = isset($_GET['image_id']) ? $_GET['image_id'] : null;

if(!$imageId) {
    die("Image ID is required.");
}

$query = "SELECT * FROM images WHERE image_id = ?";

$stmt = $conn->prepare($query);
$stmt->bind_param('s', $imageId);

$stmt->execute();
$result = $stmt->get_result();
$image = $result->fetch_assoc();

header('Content-Type: application/json');
echo json_encode($image);
?>