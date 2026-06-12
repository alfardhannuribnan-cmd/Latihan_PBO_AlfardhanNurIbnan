<?php

require_once "Tiket.php";


class TiketReguler extends Tiket{


private $tipeAudio;

private $lokasiBaris;



public function __construct($data){


parent::__construct($data);


$this->tipeAudio = $data['tipe_audio'] ?? "Tidak tersedia";


$this->lokasiBaris = $data['lokasi_baris'] ?? "Tidak tersedia";


}




public function hitungTotalHarga(){


return $this->jumlah_kursi * $this->hargaDasarTiket;


}





public function tampilkanInfoFasilitas(){


return "

Studio : Reguler <br>

Audio : $this->tipeAudio <br>

Lokasi Baris : $this->lokasiBaris


";


}



}

?>