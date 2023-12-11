<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicon-16x16.png">
    <title>Sign Up</title>
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
            <form method="post" action="register_process.php">
                <h2>Sign up</h2>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="nama">
                    <label>Nama</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="email" required name="email">
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="no_telp">
                    <label>No. Telp</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name=""></ion-icon>
                    </span>
                    <input type="text" required name="alamat">
                    <label>Alamat</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="password" required name="password">
                    <label>Password</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="password" required name="password2">
                    <label>Confirm Password</label>
                </div>
                <button type="submit" name="btnRegister">Sign up</button>
                <div class="register-link">
                    <p>Already have an account? <a href="login.php">Log in</a></p>
                </div>
            </form>
        </div>
    </section>
</body>

</html>