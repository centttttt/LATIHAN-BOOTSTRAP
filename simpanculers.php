<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "barcelona";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("error: Koneksi gagal: " . $conn->connect_error);
}

$nama = $_POST['nama'] ?? '';
$email = $_POST['email'] ?? '';

if (empty($nama) || empty($email)) {
    die("error: Nama dan email wajib diisi.");
}

$sql = "INSERT INTO culers (nama, email) VALUES ('$nama', '$email')";

if ($conn->query($sql) === TRUE) {
    echo "success: Data berhasil disimpan!";
} else {
    echo "error: " . $conn->error;
}

$conn->close();
?>
