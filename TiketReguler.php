<?php

require_once "Tiket.php";


class TiketReguler extends Tiket {


    protected $tipeAudio;
    protected $lokasiBaris;



    public function __construct($data){

        parent::__construct($data);

        $this->tipeAudio = $data['tipe_audio'];
        $this->lokasiBaris = $data['lokasi_baris'];

    }



    // Overriding method hitungTotalHarga()

    public function hitungTotalHarga(){

        return $this->jumlah_kursi * $this->harga_dasar_tiket;

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