<?php

require_once "Tiket.php";


class TiketIMAX extends Tiket{


private $kacamata3dId;

private $efekGerakFitur;



public function __construct($data){


parent::__construct($data);


$this->kacamata3dId = $data['kacamata_3d_id'] ?? "Tidak tersedia";


$this->efekGerakFitur = $data['efek_gerak_fitur'] ?? "Tidak tersedia";


}




public function hitungTotalHarga(){


return 

($this->jumlah_kursi * $this->hargaDasarTiket) + 35000;


}





public function tampilkanInfoFasilitas(){


return "

Studio : IMAX <br>

Kacamata 3D ID : $this->kacamata3dId <br>

Efek Gerak : $this->efekGerakFitur


";


}



}

?>