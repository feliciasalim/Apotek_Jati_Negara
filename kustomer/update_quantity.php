<?php
require '../includes/connect.php';

$cartId = $_POST['cartId'];
$quantity = $_POST['quantity'];

$sql = "UPDATE keranjang SET qty = $quantity WHERE id_keranjang = $cartId";

if ($conn->query($sql) === TRUE) {
    echo "Quantity updated successfully";
} else {
    echo "Error updating quantity: " . $conn->error;
}

$conn->close();
?>