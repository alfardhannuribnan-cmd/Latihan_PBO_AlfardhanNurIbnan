<?php

require_once "database.php";
require_once "TiketReguler.php";


$db = new Database();

$koneksi = $db->getKoneksi();



$query = "SELECT * FROM tabel_tiket LIMIT 1";

$result = $koneksi->query($query);



$data = $result->fetch_assoc();



$tiket = new TiketReguler($data);



echo "ID Tiket : ".$data['id_tiket']."<br>";

echo "Film : ".$data['nama_film']."<br>";

echo "Jadwal : ".$data['jadwal_tayang']."<br>";

echo "Jumlah Kursi : ".$data['jumlah_kursi']."<br>";

echo "Harga Dasar : ".$data['harga_dasar_tiket']."<br>";

echo "Total Harga : ".$tiket->hitungTotalHarga()."<br>";

echo "Fasilitas : ".$tiket->tampilkanInfoFasilitas();


?>