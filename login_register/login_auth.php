<?php
include '../includes/connect.php';

if(isset($_POST['btnLogin']))
{
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM user WHERE email = '$email'";
    $query = mysqli_query($conn, $sql);
    $data = mysqli_fetch_assoc($query);

    if (password_verify($password, $data['password']) == 1) {
        $_SESSION['name'] = $data['nama'];
        $_SESSION['id'] = $data['id_user'];
        $_SESSION['alamat'] = $data['alamat'];
        $_SESSION['no_telp'] = $data['no_telp'];
        header('location: ../kustomer/home.php');
    } 

    else {
        echo "
        <script>
            alert('Username atau password salah. Silahkan login kembali');
            document.location.href = 'login.php';
        </script>
        ";
    }
}
?>