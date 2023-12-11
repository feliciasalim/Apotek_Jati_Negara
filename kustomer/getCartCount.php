<?php
session_start();
require("../includes/connect.php");

if (empty($_SESSION['name'])) {
    echo json_encode(['status' => 'error', 'message' => 'User not logged in.']);
    exit();
}

$id_user = $_SESSION['id'];

$cartCountQuery = "SELECT COUNT(*) AS cartCount FROM keranjang WHERE id_user = '$id_user'";
$result = $conn->query($cartCountQuery);

if ($result) {
    $row = $result->fetch_assoc();
    echo json_encode(['status' => 'success', 'cartCount' => $row['cartCount']]);
} else {
    echo json_encode(['status' => 'error', 'message' => $conn->error]);
}

$conn->close();
?>
