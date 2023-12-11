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
                window.location.href = 'semua_produk.php';
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

    <div class="title2">
            <p class="subtitle pt1" style="padding-top: 20px;">Kategori &nbsp</p> 
            <p class="subtitle pt2" style="padding-top: 20px;"><?= ucwords($_GET['kategori']) ?></p>
    </div>

    <div class="subpage4">
            <main class="grid">
            <?php
                $limit = 30;
                $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
                $halaman_awal = ($halaman>1) ? ($halaman * $limit) - $limit : 0;
                
                $sebelumnya = $halaman - 1;
                $selanjutnya = $halaman + 1;

                $query2 = "SELECT * FROM produk p
                JOIN batch b ON b.id_produk = p.id_produk
                WHERE p.status_produk = 'Ada' AND p.kategori = '{$_GET['kategori']}' LIMIT $halaman_awal, $limit";
                $query = mysqli_query($conn, "SELECT * FROM produk WHERE status_produk = 'Ada' AND kategori = '{$_GET['kategori']}'");
                $jlh_data = mysqli_num_rows($query);
                
                $jlh_halaman = ceil($jlh_data / $limit);
                $hal_akhir = $jlh_halaman;
                $result2 = mysqli_query($conn, $query2);

                $no = $halaman_awal + 1;

                while($data = $result2->fetch_assoc()){
            ?>
                <article class="item" style="background-image: url();">
                    <img src="../public/produk/<?= $data['img'] ?>" alt="" class="Img">
                    <a href="detail_produk.php?id=<?= $data['id_produk'] ?>" class="produk">
                        <p><?= $data['nama_produk']?> Rp <?= number_format($data['harga_jual'], 0, ',', '.') . ',-';?>/<?= $data['satuan_unit'] ?></p>
                    </a>       
                        <form id="addToCartForm" data-product-id="<?= $data['id_produk'] ?>" action="" method="post">
                            <input type="hidden" name="token" value="<?php echo $_SESSION['token']; ?>">
                            <input type="hidden" name="id_produk" value="<?= $data['id_produk'] ?>">
                            <button type="submit" class="add-to-cart" id="addToCartButton">Tambah ke &nbsp<img src="../public/cart.png" width="10px" alt=""></button>
                        </form>
                </article>  
                <?php } ?>
            </main>
            <div class="pagination">
            <div class="pagination">
    <?php
    $maxPages = 5; 
    $startPage = max(1, $halaman - $maxPages);
    $endPage = min($jlh_halaman, $halaman + $maxPages);
    
    $queryParameter = isset($_GET['kategori']) ? "&kategori={$_GET['kategori']}" : "";
    
    if ($startPage > 1) {
        echo "<li><a href='?halaman=1$queryParameter'>1</a></li>";
        echo "<li><span class='page-link'>...</span></li>";
    }
    
    for ($i = $startPage; $i <= $endPage; $i++) {
        $activeClass = ($i == $halaman) ? 'active' : '';
        echo "<li><a class='$activeClass' href='?halaman=$i$queryParameter'>$i</a></li>";
    }
    
    if ($endPage < $jlh_halaman) {
        echo "<li><span class='page-link'>...</span></li>";
        echo "<li><a class='page-link' href='?halaman=$jlh_halaman$queryParameter'>$jlh_halaman</a></li>";
    }
    ?>
                <a href="?halaman=<?= $selanjutnya ?>">&raquo;</a>
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
            url: 'semua_produk.php',
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