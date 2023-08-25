<?php
include 'connect.php';

$relationToChurch = isset($_GET['relation_to_church']) ? $_GET['relation_to_church'] : null;

$query = "SELECT * FROM Hospitals";

if($relationToChurch) {
    $query .= " WHERE relation_church = ?";
}

$stmt = $conn->prepare($query);

if($relationToChurch) {
    $stmt->bind_param('s', $relationToChurch);
}

$stmt->execute();
$result = $stmt->get_result();
$hospitals = $result->fetch_all(MYSQLI_ASSOC);

header('Content-Type: application/json');
echo json_encode($hospitals);
?>