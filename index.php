<?php

error_reporting(E_ALL);
ini_set('display_errors',1);


require_once "database.php";

require_once "Tiket.php";
require_once "TiketReguler.php";
require_once "TiketIMAX.php";
require_once "TiketVelvet.php";



$db = new Database();

$koneksi = $db->getKoneksi();



$query = "

SELECT * FROM tabel_tiket

WHERE jenis_studio IN ('REGULAR','IMAX','VELVET')

";



$result = $koneksi->query($query);



?>


<!DOCTYPE html>

<html>

<head>


<title>Cinema Ticket System</title>


<style>


body{

margin:0;

font-family:Arial, sans-serif;

background:#111;

color:white;

}



header{

text-align:center;

padding:25px;

background:#000;

}



header h1{

color:#ffd700;

}



.container{


width:90%;

margin:auto;

display:grid;

grid-template-columns:repeat(auto-fit,minmax(330px,1fr));

gap:25px;

padding:30px;


}



.card{


background:#1f1f1f;

padding:25px;

border-radius:20px;

box-shadow:0 0 15px #333;


}



.studio{


background:#ffd700;

color:black;

padding:10px;

text-align:center;

border-radius:20px;

font-weight:bold;


}



.info{

line-height:2;

}



.fasilitas{


background:#111;

padding:15px;

border-radius:10px;


}



.total{


color:#00ff88;

font-size:22px;

font-weight:bold;


}



</style>


</head>


<body>



<header>

<h1>🎬 CINEMA TICKET SYSTEM</h1>

<p>Daftar Tiket Penonton</p>

</header>



<div class="container">



<?php



while($data = $result->fetch_assoc()){



$tiket = null;



switch($data['jenis_studio']){


case "REGULAR":


$tiket = new TiketReguler($data);


break;



case "IMAX":


$tiket = new TiketIMAX($data);


break;



case "VELVET":


$tiket = new TiketVelvet($data);


break;



default:


continue 2;


}



?>



<div class="card">



<div class="studio">

<?= $data['jenis_studio']; ?>

</div>




<h2>

🎬 <?= $data['nama_film']; ?>

</h2>




<div class="info">


🎟 ID Tiket :

<?= $data['id_tiket']; ?>


<br>


📅 Jadwal :

<?= $data['jadwal_tayang']; ?>


<br>


💺 Jumlah Kursi :

<?= $data['jumlah_kursi']; ?>


<br>


💰 Harga Dasar :

Rp <?= number_format($data['harga_dasar_tiket']); ?>


</div>




<hr>




<h3>✨ Fasilitas Studio</h3>



<div class="fasilitas">


<?= $tiket->tampilkanInfoFasilitas(); ?>


</div>




<hr>




<div class="total">


Total Harga :

<br>


Rp <?= number_format($tiket->hitungTotalHarga()); ?>


</div>



</div>




<?php

}

?>



</div>



</body>

</html>