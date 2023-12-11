<?php
session_start();

require ("../includes/connect.php");
if(empty($_SESSION['name'])){
header("Location: ../login_register/login.php");
}

$id_user = $_SESSION['id'];

$keranjang_query = "SELECT * FROM keranjang k
JOIN produk p ON p.id_produk = k.id_produk
JOIN batch b ON b.id_produk = k.id_produk WHERE id_user = '$id_user'";
$keranjang_result = $conn->query($keranjang_query);

$latest_invoice_query = "SELECT MAX(CAST(SUBSTRING(no_invoice, 5) AS UNSIGNED)) AS latest_invoice FROM invoice_pelanggan";
$latest_invoice_result = mysqli_query($conn, $latest_invoice_query);
$latest_invoice_row = mysqli_fetch_assoc($latest_invoice_result);

$counter = $latest_invoice_row['latest_invoice'] + 1;

$paddedCounter = str_pad($counter, 6, '0', STR_PAD_LEFT);

$invoiceNumber = 'INV-' . $paddedCounter;

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['checkout'])) {
    $userId = $_SESSION['id'];
    $method = $_POST['paymentMethod'];
    
    $cart_query = "SELECT * FROM keranjang k
    JOIN produk p ON k.id_produk = p.id_produk
    JOIN batch b ON b.id_produk = k.id_produk
    WHERE id_user = {$_SESSION['id']}";
    $cart_result = $conn->query($cart_query);

    $invoice_query = "INSERT INTO invoice_pelanggan VALUES('$invoiceNumber','$id_user',NOW(),'$method')";
    $invoice_result = $conn->query($invoice_query);

    while ($cart = $cart_result->fetch_assoc()) {
        $detail_invoice_query = "INSERT INTO detail_invoice_pelanggan (no_invoice, nama_produk, harga_jual, qty)
        VALUES ('$invoiceNumber', '{$cart['nama_produk']}', '{$cart['harga_jual']}', '{$cart['qty']}')";
        $detail_invoice_result = $conn->query($detail_invoice_query);
    }

    $clear_cart_query = "DELETE FROM keranjang WHERE id_user = {$_SESSION['id']}";
    $clear_cart_result = $conn->query($clear_cart_query);

    header("Location: invoice.php?invoice=$invoiceNumber");


}

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../index.css">
    <link rel="stylesheet" href="../global.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pragmatica:wght@500&display=swap"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Apotek Jati Negara</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="cart_count.js"></script>
    <link rel="icon" type="image/x-icon" href="../public/favicon.jpg">
</head>
<body>
    <?php include 'components/header.php'; ?>
    
    <section id="shopping-cart" class="container mt-5">
        <h2>Keranjang Anda</h2>
        <table class="table">
            <thead>
                <tr>
                    <th></th>
                    <th class="cart-product">Produk</th>
                    <th>Harga</th>
                    <th>Kuantitas</th>
                    <th>Total</th>
                    <th></th>
                </tr>
            </thead>

            <tbody id="cart-items">
                <?php
                while($data = mysqli_fetch_array($keranjang_result)){
                ?>
                <tr>
                    <td>
                        <button class="btn btn-outline-danger delete-btn" type="button" data-cart-id="<?= $data['id_keranjang'] ?>">
                            <i class="fa fa-trash" aria-hidden="true"></i>
                        </button>
                    </td>
                    <td class="product_cart"><img src="../public/produk/<?= $data['img'] ?>" alt="" srcset="" width="80px"><?= $data['nama_produk'] ?></td>
                    <?php
                        $formatted_number = number_format($data['harga_jual'], 0, ',', '.') . ',-';
                    ?>
                    <td style="text-align:center;">Rp <?= $formatted_number ?></td>
                    <td>
                        <div class="input-group bootstrap-touchspin counter" data-cart-id="<?= $data['id_keranjang'] ?>">
                            <span class="input-group-btn">
                                <button class="btn btn-default bootstrap-touchspin-down" type="button">-</button>
                            </span>
                            <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span>
                            <input type="text" name="" value="<?= $data['qty'] ?>" class="input-qty form-control text-center" style="display: block;">
                            <span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                            <span class="input-group-btn"><button class="btn btn-default bootstrap-touchspin-up" type="button">+</button></span>
                        </div>
                    </td>
                    <td class="total-price" data-price-id="<?= $data['harga_jual'] ?>">Rp <?= number_format($data['harga_jual'] * $data['qty'], 0, ',', '.') . ',-'; ?></td>
                </tr>
                <?php
                }
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3"></td>
                    <td style="text-align:center;"><strong>Total Harga:</strong></td>
                    <td id="cart-total">Rp 0,-</td>
                </tr>
            </tfoot>
        </table>
        <div class="button">
            <a href="semua_produk.php">Kembali</a>
                <button class="cekout" onclick="openModal()">Cekout</button>
            </div>

        <div id="myModal" class="modal">
            <div class="modal-box">
                <span class="close" onclick="closeModal()">&times;</span>
                <p>Pilih metode pembayaran :</p>
                <form action="" method="post" id="form">
                        <div class="radio-group">
                            <label>
                                <input type="radio" name="paymentMethod" value="Transfer Bank Mandiri">
                                <img src="https://i0.wp.com/umsu.ac.id/berita/wp-content/uploads/2023/09/Cara-Buka-Rekening-Mandiri-Online.jpg?fit=784%2C459&ssl=1" alt="" srcset=""> Transfer Bank Mandiri (123456780)
                            </label>

                            <label>
                                <input type="radio" name="paymentMethod" value="Transfer Bank BCA">
                                <img src="https://www.openkerja.id/wp-content/uploads/2023/09/Lowongan-Kerja-Magang-PT-Bank-Central-Asia-Tbk-BCA.webp" alt="" srcset=""> Transfer Bank BCA (01234567)
                            </label>
                            
                            <label>
                                <input type="radio" name="paymentMethod" value="Transfer Bank BNI">
                                <img src="https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/1200px-BNI_logo.svg.png" alt="" srcset=""> Transfer Bank BNI (38484394)
                            </label>

                            <button class="bayar" name="checkout">Bayar</button>
                        </div>
                    </form>
            </div>
        </div>

    </section>

    <script>
        function openModal() {
            var modal = document.getElementById("myModal");
            modal.style.display = "block";
        }

        function closeModal() {
            var modal = document.getElementById("myModal");
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            var modal = document.getElementById("myModal");
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <script>
    $(document).ready(function() {
        $(document).on('click', '.bootstrap-touchspin-down', function() {
            updateQuantity($(this).closest('.bootstrap-touchspin'), -1);
        });

        $(document).on('click', '.bootstrap-touchspin-up', function() {
            updateQuantity($(this).closest('.bootstrap-touchspin'), +1);
        });
        function displayTotalPrice() {
            var totalPrice = 0;
            $('#cart-items tr').each(function() {
                var quantity = parseInt($(this).find('.input-qty').val());
                var pricePerUnit = parseFloat($(this).find('.total-price').data('price-id'));
                totalPrice += quantity * pricePerUnit;
            });

            $('#cart-total').text('Rp ' + totalPrice.toFixed(0).replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ',-');
        }

        displayTotalPrice();

        function updateQuantity(container, change) {
            var inputField = container.find('.input-qty');
            var currentValue = parseInt(inputField.val());
            var cartId = container.data('cart-id');
            var priceElement = container.closest('tr').find('.total-price');
            var pricePerUnit = parseFloat(priceElement.data('price-id'));

            
            if ((currentValue + change) >= 1) {
                var newQuantity = currentValue + change;
                inputField.val(newQuantity);
                
                var newTotalPrice = newQuantity * pricePerUnit;
                priceElement.text('Rp ' + newTotalPrice.toFixed(0).replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ',-');

                $.ajax({
                    url: 'update_quantity.php', 
                    type: 'POST',
                    data: { cartId: cartId, quantity: currentValue + change },
                    success: function(response) {
                        updateTotalPrice();
                    },
                    error: function(xhr, status, error) {
                        console.error('Error updating quantity:', error);
                    }
                });
            }
        }

        function updateTotalPrice() {
            var totalPrice = 0;
            $('#cart-items tr').each(function() {
                var quantity = parseInt($(this).find('.input-qty').val());
                var pricePerUnit = parseFloat($(this).find('.total-price').data('price-id'));
                totalPrice += quantity * pricePerUnit;
            });

            $('#cart-total').text('Rp ' + totalPrice.toFixed(0).replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ',-');
        }

        $(document).on('click', '.delete-btn', function() {
            var deleteButton = $(this);
            var cartId = deleteButton.data('cart-id');
            var rowToDelete = deleteButton.closest('tr'); 

            $.ajax({
                url: 'delete_item.php',
                type: 'POST',
                data: { cartId: cartId },
                success: function(response) {
                    rowToDelete.remove();
                    updateTotalPrice();
                    updateCartBadge();
                },
                error: function(xhr, status, error) {
                    console.error('Error deleting item:', error);
                }
            });
        });

    });
</script>
    
    
</body>
</html>