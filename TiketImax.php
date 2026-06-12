<?php

require_once "Tiket.php";


class TiketIMAX extends Tiket {


    protected $kacamata3dId;
    protected $efekGerakFitur;



    public function __construct($data){

        parent::__construct($data);


        $this->kacamata3dId = $data['kacamata_3d_id'];

        $this->efekGerakFitur = $data['efek_gerak_fitur'];

    }




    // Overriding method hitungTotalHarga()

    public function hitungTotalHarga(){


        return 
        ($this->jumlah_kursi * $this->harga_dasar_tiket) + 35000;


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