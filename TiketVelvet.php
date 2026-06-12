<?php

require_once "Tiket.php";


class TiketVelvet extends Tiket {


    protected $bantalSelimutPack;
    protected $layananButler;




    public function __construct($data){

        parent::__construct($data);


        $this->bantalSelimutPack = $data['bantal_selimut'];

        $this->layananButler = $data['layanan_butler'];

    }




    // Overriding method hitungTotalHarga()

    public function hitungTotalHarga(){


        return 
        ($this->jumlah_kursi * $this->harga_dasar_tiket) * 1.50;


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