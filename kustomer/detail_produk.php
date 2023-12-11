<?php
    session_start();
    require ("../includes/connect.php");
    if(empty($_SESSION['name'])){
    header("Location: ../login_register/login.php");
    }

    function generateToken() {
        return bin2hex(random_bytes(32));
    }
    
    function processFormSubmission($conn) {
        $id_user = $_SESSION['id'];
        $id_produk = $_POST['id_produk'];
    
        $check_query = "SELECT * FROM keranjang WHERE id_user = '$id_user' AND id_produk = '$id_produk'";
        $check_result = $conn->query($check_query);

        if ($check_result->num_rows == 0) {
            $cart_query = "INSERT INTO keranjang (id_user, id_produk, qty) VALUES ('$id_user', '$id_produk', '1')";
            $cart_result = $conn->query($cart_query);

        } else {
            echo
                "<script>
                alert('This product is already in your cart.');
                window.location.href = 'detail_produk.php?id=$id_produk';
                </script>";
        }
    
        unset($_SESSION['token']);
    }
    
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        if (isset($_POST['token']) && $_POST['token'] === $_SESSION['token']) {
            processFormSubmission($conn);
        } else {
            echo "Invalid token. Please try again.";
        }
    }
    
    $_SESSION['token'] = generateToken();

    $id_produk = $_GET['id'];
    $detail_query = "SELECT * FROM produk p 
    JOIN batch b ON b.id_produk = p.id_produk WHERE p.id_produk = '$id_produk' ORDER BY b.tgl_expired ASC";
    $detail_result = mysqli_query($conn,$detail_query);
    $data = mysqli_fetch_array($detail_result);
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

    <div class="subpage6">
        <div class="produk-row">
            <div class="produk-col-1">
                <img src="../public/produk/<?= $data['img'] ?>" alt="" class="produkfoto">
                <?php
                $formatted_number = number_format($data['harga_jual'], 0, ',', '.') . ',-';
                ?>
                <p class="harga">Harga Rp <?= $formatted_number ?>/ <?= $data['satuan_unit'] ?></p>
                <form id="addToCartForm" data-product-id="<?= $data['id_produk'] ?>" action="" method="post">
                            <input type="hidden" name="token" value="<?php echo $_SESSION['token']; ?>">
                            <input type="hidden" name="id_produk" value="<?= $data['id_produk'] ?>">
                            <a href=""><button style="width: fit-content;" class="add-to-cart" id="addToCartButton2">Tambahkan ke keranjang &nbsp<img src="../public/cart.png" width="10px" alt=""></button></a>
                </form>
            </div>

            <div class="produk-col-2">
                <p class="nama" ><?= $data['nama_produk'] ?></p>
                <?php
                if($data['kategori'] == 'Obat Keras'){
                    ?>
                <p class="warning">*Harus dengan resep dokter</p>
                <?php } ?>
                <p class="detil">Kegunaan: </p>
                <p class="detil"><?= $data['kegunaan'] ?></p>
                <p class="detil">Dosis:</p>
                <p class="detil"><?= $data['dosis'] ?></p>
            </div>
        </div>
    </div>

    <?php include 'components/footer.php'; ?>
    
    <script>
$(document).ready(function () {
    $(".addToCartButton").click(function () {
        var form = $(this).closest('form');
        var productId = form.data('product-id');

        $(this).prop('disabled', true);

        $.ajax({
            type: 'POST',
            url: 'detail_produk.php',
            data: form.serialize(),
            dataType: 'json',
            success: function (response) {
                if (response.status === 'success') {
                    updateCartBadge();
                } else {
                    alert('Error: ' + response.message);
                }
            },
            complete: function () {
                $(".addToCartButton").prop('disabled', false);
            }
        });
    });

});
</script>
</body>
</html>