<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "barcelona";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$sql = "SELECT tanggal, kompetisi, pertandingan, lokasi, jam FROM jadwal ORDER BY tanggal ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $tanggal = date("d F Y", strtotime($row["tanggal"]));
        $jam = date("H:i", strtotime($row["jam"]));
        echo "<tr>
                <td>{$tanggal}</td>
                <td>{$row["kompetisi"]}</td>
                <td>{$row["pertandingan"]}</td>
                <td>{$row["lokasi"]}</td>
                <td>{$jam}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='5' class='text-muted'>Belum ada jadwal pertandingan.</td></tr>";
}
$conn->close();
?>
