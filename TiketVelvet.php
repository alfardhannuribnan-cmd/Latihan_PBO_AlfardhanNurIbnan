<?php


require_once "Tiket.php";



class TiketVelvet extends Tiket{


private $bantalSelimutPack;

private $layananButler;



public function __construct($data){


parent::__construct($data);



$this->bantalSelimutPack = $data['bantal_selimut_pack'] ?? "Tidak tersedia";


$this->layananButler = $data['layanan_butler'] ?? "Tidak tersedia";



}




public function hitungTotalHarga(){


return ($this->jumlah_kursi * $this->hargaDasarTiket) * 1.5;


}





public function tampilkanInfoFasilitas(){


return "

Studio : Velvet <br>

Bantal Selimut Pack : $this->bantalSelimutPack <br>

Layanan Butler : $this->layananButler


";


}



}


?>