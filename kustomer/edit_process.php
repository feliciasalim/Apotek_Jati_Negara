<?php
    session_start();

    include '../includes/connect.php';
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];
    $no_telp = $_POST['no_telp'];

    $sql = "UPDATE user SET 
            nama = '$nama', 
            email = '$email', 
            no_telp = '$no_telp', 
            alamat = '$alamat' 
        WHERE id_user = '{$_SESSION['id']}'";

      
    $sql_result = mysqli_query($conn, $sql);
    if($sql_result){
            echo"
            <script>
                alert('Edit Profil Berhasil');
                document.location.href = 'home.php';
            </script>";
        }
      $conn->close();   
?>