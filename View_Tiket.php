<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


require_once "database.php";

require_once "TiketReguler.php";
require_once "TiketIMAX.php";
require_once "TiketVelvet.php";



// koneksi database

$db = new Database();

$koneksi = $db->getKoneksi();



$query = "SELECT * FROM tabel_tiket";


$result = mysqli_query($koneksi, $query);



if(!$result){

    die("Query error : " . mysqli_error($koneksi));

}



?>


<!DOCTYPE html>
<html>

<head>

<title>Daftar Tiket Bioskop</title>


<style>


body{

    font-family: Arial;
    background:#f2f2f2;

}



.container{

    display:flex;
    flex-wrap:wrap;

}



.card{


    background:white;

    border:1px solid #ccc;

    border-radius:10px;

    padding:20px;

    margin:15px;

    width:350px;


}



h1{

    text-align:center;

}



h2{

    color:#333;

}



</style>


</head>


<body>



<h1>DAFTAR TIKET PENONTON</h1>



<div class="container">



<?php



if(mysqli_num_rows($result)==0){


    echo "<h3>Data tiket masih kosong</h3>";


}



while($data = mysqli_fetch_assoc($result)){



    // memilih class sesuai jenis studio


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
Studio : 
<?= $data['jenis_studio']; ?>

</h2>



<b>ID Tiket :</b>

<?= $data['id_tiket']; ?>

<br><br>



<b>Nama Film :</b>

<?= $data['nama_film']; ?>

<br><br>



<b>Jadwal Tayang :</b>

<?= $data['jadwal_tayang']; ?>

<br><br>



<b>Jumlah Kursi :</b>

<?= $data['jumlah_kursi']; ?>

<br><br>



<b>Harga Dasar :</b>

Rp <?= number_format($data['harga_dasar_tiket']); ?>



<hr>



<h3>Fasilitas Studio</h3>


<?php


echo $tiket->tampilkanInfoFasilitas();



?>


<hr>



<h3>

Total Harga :

Rp 

<?= number_format($tiket->hitungTotalHarga()); ?>


</h3>



</div>



<?php


}


?>


</div>


</body>


</html>