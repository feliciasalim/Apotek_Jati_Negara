<?php
session_start();

require ("../includes/connect.php");
if(empty($_SESSION['name'])){
header("Location: ../login_register/login.php");
}

$user_query = "SELECT * FROM user WHERE id_user = '{$_SESSION['id']}'";
$user_result = $conn->query($user_query);
$user = $user_result->fetch_assoc();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../public/favicon.jpg">
    <title>Apotek | Edit Profile</title>
    <link rel="stylesheet" href="../css/register.css">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>

<body>
    <header class="navbar">
        <a href="../index.php"><img src="../public/logo.png" alt="" width="200px"></a>
    </header>
    
    <section>
        <div class="login-box">
            <form method="post" action="edit_process.php">
                <h2>Edit Profile</h2>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="nama" value="<?= $user['nama'] ?>">
                    <label>Nama</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="email" required name="email"value="<?= $user['email'] ?>">
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="no_telp" value="<?= $user['no_telp'] ?>">
                    <label>No. Telp</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="alamat" value="<?= $user['alamat'] ?>">
                    <label>Alamat</label>
                </div>
                <button type="submit" name="btnEdit">Edit Profile</button>
            </form>
        </div>
    </section>
</body>

</html>