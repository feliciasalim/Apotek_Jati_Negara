<?php
session_start();

require ("../includes/connect.php");
if(empty($_SESSION['name'])){
header("Location: ../login_register/login.php");
}

$selling_invoice_query = "SELECT * FROM detail_invoice_pelanggan d
                        JOIN invoice_pelanggan i USING(no_invoice)
                        WHERE no_invoice = '{$_GET['invoice']}' ";
$selling_invoice_result = mysqli_query($conn, $selling_invoice_query);

$currentDateTime = date('d F Y');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../invoice.css">
    <title>Apotek | Invoice</title>
</head>
<body>
    <div class="invoice-container">
        <header>
            <h1><b>INVOICE</b></h1>
            <div class="info-item">
                <p class="identity">No. invoice</p>
                <p>: <?= $_GET['invoice'] ?></p>
            </div>
            <div class="info-item">
                <p class="identity">Nama</p>
                <p>: <?= $_SESSION['name'] ?></p>
            </div>
            <div class="info-item">
                <p class="identity">Alamat</p>
                <p>: <?= $_SESSION['alamat'] ?></p>
            </div>
            <div class="info-item">
                <p class="identity">No. telepon</p>
                <p>: <?= $_SESSION['no_telp'] ?></p>
            </div>
            <div class="info-item">
                <p class="identity">Date</p>
                <p>: <?= $currentDateTime ?></p>
            </div>

        </header>
        
        <main>
            <table>
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $total_price = 0;
                    while($data = $selling_invoice_result->fetch_assoc()){
                    ?>
                    <tr>
                        <td><?= $data['nama_produk'] ?></td>
                        <td><?= $data['qty'] ?></td>
                        <td>Rp <?= number_format($data['harga_jual'], 0, ',', '.') . ',-'; ?></td>
                        <td>Rp <?= number_format($data['harga_jual'] * $data['qty'], 0, ',', '.') . ',-'; ?></td>
                    </tr>
                    <?php
                    $total_price += $data['harga_jual'] * $data['qty'];
                    }
                    ?>
                </tbody>
            </table>
        </main>
        
        <footer>
            <div class="total">
                <p>Total:</p>
                <p>Rp <?= number_format($total_price, 0, ',', '.') . ',-'; ?></p>
            </div>
            <p>Thank you for your business!</p>
        </footer>

        <div class="buttons">
            <button onclick="goBack()" class="back">Back</button>
            <button onclick="window.print()">Print</button>
        </div>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
