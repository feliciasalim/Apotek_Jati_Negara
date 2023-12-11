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
    <title>Apotek Jati Negara</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="cart_count.js"></script>
    <link rel="icon" type="image/x-icon" href="../public/favicon.jpg">
</head>
<body>

    <?php include 'components/header.php'; ?>
    <div class="apotekcards">
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide card1" style="background-image: url(../public/bann1.png);"></div>
            <div class="swiper-slide card2"style="background-image: url(../public/ban3.png);"></div>
            <div class="swiper-slide card2"style="background-image: url(../public/ban2.png);"></div>
        </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
  </div>

  <div class="subpage">
    <p class="title">Kategori</p>
    <div class="kategori">
        <div class="sub kategori1">
            <a href="kategori.php?kategori=Obat bebas">
                <img src="../public/bebas.png" alt="" width="30%">
                <p>Obat Bebas</p>
            </a>
        </div>
        <div class="sub kategori2">
            <a href="kategori.php?kategori=Obat bebas terbatas">
                <img src="../public/bebas-terbatas.jpg" alt="" width="30%">
                <p>Obat Bebas Terbatas</p>
            </a>
        </div>
        <div class="sub kategori3">
            <a href="kategori.php?kategori=Obat Keras">
                <img src="../public/keras.jpg" alt="" width="30%">
                <p>Obat Keras</p>
            </a>
        </div>
        <div class="sub kategori4">
            <a href="kategori.php?kategori=Obat herbal (jamu)">
                <img src="../public/herbal.png" alt="" width="30%">
                <p>Obat Herbal (Jamu)</p>
            </a>
        </div>
        <div class="sub kategori5">
            <a href="kategori.php?kategori=Non obat">
                <img src="../public/nonobat.png" alt="" width="28%">
                <p>Non-Obat</p>
            </a>
        </div>
    </div>
  </div>

    <div class="title2">
        <p class="subtitle pt1">Produk &nbsp</p> 
        <p class="subtitle pt2">Terlaris</p>
    </div>

    <div class="subpage2">
        <main class="grid">
            <?php
            $popular_query= "SELECT p.id_produk, p.img, p.nama_produk, b.harga_jual, p.satuan_unit, COUNT(d.nama_produk) AS popular_product
            FROM produk p
            JOIN detail_invoice_pelanggan d ON p.nama_produk = d.nama_produk
            JOIN batch b ON b.id_produk = p.id_produk
            GROUP BY p.id_produk,p.img,p.nama_produk,b.harga_jual,p.satuan_unit
            ORDER BY popular_product DESC
            LIMIT 5;";
            $popular_result= $conn->query($popular_query);

            while($data = $popular_result->fetch_assoc()){
            ?>
            <article class="item" style="background-image: url();">
                <img src="../public/produk/<?= $data['img']?>" alt="" class="Img">
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
    </div>

    <div class="title2">
        <p class="subtitle pt1">Produk &nbsp</p> 
        <p class="subtitle pt2">Lainnya</p>
    </div>

    <div class="subpage2">
        <main class="grid">
        <?php
            $near_expired_query= "SELECT *
            FROM batch b
            JOIN produk p ON b.id_produk = p.id_produk 
            ORDER BY ABS(DATEDIFF(tgl_expired, NOW()))
            LIMIT 5;";
            $near_expired_result= $conn->query($near_expired_query);

            while($data = $near_expired_result->fetch_assoc()){
            ?>
            <article class="item" style="background-image: url();">
                <img src="../public/produk/<?= $data['img']?>" alt="" class="Img">
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
        <button class="semuaProduk"><a href="../kustomer/semua_produk.php">Semua Produk ></a></button>
    </div>

    <div class="subpage3" id="Contact" style="margin-top: 10vh;">
      <div class="container">
        <div class="contact">
            <div class="contactCard">
                <p class="contactUs">Customer Service</p>
                <div class="contactText">
                  <img src="../public/material-symbols_mail.png" alt="" width="20px" style="padding: 0px 5px 0 0;">
                  <p>xxxxxxxxxxx@gmail.com</p>
                </div>
                <div class="contactText">
                  <img src="../public/ic_baseline-whatsapp.png" alt="" width="20px" style="padding: 0px 5px 0 0;">
                  <p>+62 XXX XXXX XXXX</p>
                </div>
                <div class="contactText">
                  <img src="../public/mingcute_time-line.png" alt="" width="20px" style="padding: 0px 5px 0 0;">
                  <p>Jam Operasional 08.00 - XX.XX WIB</p>
                </div>
                <div class="contactText">
                  © 2023 - Apotek Jati Negara
                </div>
            </div>
        </div>
      </div>
</div>


  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script src="../script.js"></script>
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 40,
      slidesPerGroup: 1,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
  
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