<?php

require_once "database.php";

require_once "TiketReguler.php";
require_once "TiketIMAX.php";
require_once "TiketVelvet.php";



$db = new Database();

$koneksi = $db->getKoneksi();



$query = "SELECT * FROM tabel_tiket";

$dataTiket = mysqli_query($koneksi,$query);



?>


<!DOCTYPE html>
<html>

<head>

<title>Daftar Tiket Bioskop</title>

<style>

body{
    font-family: Arial;
}


.card{

    border:1px solid black;
    padding:15px;
    margin:15px;
    width:350px;

}


h2{

    color:#333;

}

</style>


</head>


<body>


<h1>Daftar Tiket Penonton</h1>



<?php


while($data = mysqli_fetch_assoc($dataTiket)){



    // Polimorfisme

    if($data['jenis_studio']=="REGULER"){

        $tiket = new TiketReguler($data);

    }


    elseif($data['jenis_studio']=="IMAX"){


        $tiket = new TiketIMAX($data);

    }



    elseif($data['jenis_studio']=="VELVET"){


        $tiket = new TiketVelvet($data);

    }



    else{

        continue;

    }



?>



<div class="card">


<h2>
Studio 
<?= $data['jenis_studio']; ?>

</h2>



<b>ID Tiket :</b>

<?= $data['id_tiket']; ?>

<br>



<b>Film :</b>

<?= $data['nama_film']; ?>

<br>



<b>Jadwal :</b>

<?= $data['jadwal_tayang']; ?>

<br>



<b>Jumlah Kursi :</b>

<?= $data['jumlah_kursi']; ?>

<br>



<b>Harga Dasar :</b>

Rp <?= number_format($data['harga_dasar_tiket']); ?>

<br><br>



<hr>



<h3>Fasilitas Studio</h3>


<?php

// Memanggil method polymorphism

echo $tiket->tampilkanInfoFasilitas();


?>



<br><br>


<h3>

Total Harga :

Rp <?= number_format($tiket->hitungTotalHarga()); ?>

</h3>



</div>



<?php

}


?>


</body>

</html>