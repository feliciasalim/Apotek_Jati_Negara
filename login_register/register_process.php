<?php
    include '../includes/connect.php';
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];
    $no_telp = $_POST['no_telp'];
    $pass = $_POST['password'];
    $pass2 = $_POST['password2'];
    $password = password_hash($pass, PASSWORD_DEFAULT);

    $sql = "INSERT INTO user (nama, email,no_telp,alamat, password) VALUES ('$nama', '$email','$no_telp', '$alamat', '$password')";

      $cekEmail = mysqli_query($conn, "SELECT email FROM user WHERE email='$email'");

        if ($pass !== $pass2 ) {
            echo "<script>
                    alert('Konfirmasi password tidak sesuai!');
                </script>";
                return false;
        }
        
        if(mysqli_num_rows($cekEmail) > 0){
            echo"
                <script>
                    alert('Email Sudah Ada!');
                    document.location.href = 'register.php';
                </script>
            ";
        }else{
            mysqli_query($conn, $sql);
            echo"
            <script>
                alert('Registrasi Akun Berhasil');
                document.location.href = 'login.php';
            </script>";
        }
      $conn->close();   
?>