<?php

require_once "Tiket.php";


class TiketReguler extends Tiket{


    protected $tipe_audio;
    protected $lokasi_baris;



    public function __construct($data){

        parent::__construct($data);

        $this->tipe_audio = $data['tipe_audio'];

        $this->lokasi_baris = $data['lokasi_baris'];

    }



    public function hitungTotalHarga(){

        return $this->jumlah_kursi * $this->harga_dasar_tiket;

    }



    public function tampilkanInfoFasilitas(){

        return "
        Studio Reguler <br>
        Audio : $this->tipe_audio <br>
        Lokasi Baris : $this->lokasi_baris
        ";

    }


}

?>