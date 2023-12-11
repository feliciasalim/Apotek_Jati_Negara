<?php
include 'includes/connect.php';

if(isset($_POST['btnLogin']))
{
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM admin WHERE email = '$email'";
    $query = mysqli_query($conn, $sql);
    $data = mysqli_fetch_assoc($query);

    if (password_verify($password, $data['password']) == 1) {
        $_SESSION['nama'] = $data['nama'];
        header('location: admin/index.php');
    } 

    else {
        echo "
        <script>
            alert('Username atau password salah. Silahkan login kembali');
            document.location.href = 'admin_login.php';
        </script>
        ";
    }
}
?>