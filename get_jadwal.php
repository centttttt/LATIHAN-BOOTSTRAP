<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "barcelona";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// ambil 1 pertandingan terdekat dari hari ini
$sql = "SELECT pertandingan, lokasi, tanggal 
        FROM jadwal 
        WHERE tanggal >= CURDATE() 
        ORDER BY tanggal ASC 
        LIMIT 1";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $tanggal = date("d F Y", strtotime($row["tanggal"]));
    echo "<strong>{$row['pertandingan']}</strong> — {$row['lokasi']} • {$tanggal}";
} else {
    echo "<span class='text-muted'>Belum ada jadwal pertandingan berikutnya.</span>";
}

$conn->close();
?>
