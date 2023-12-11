<?php
require '../includes/connect.php';

$cartId = $_POST['cartId'];

$delete_query = "DELETE FROM keranjang WHERE id_keranjang = '$cartId'";
$delete_result = $conn->query($delete_query);

$conn->close();
?>