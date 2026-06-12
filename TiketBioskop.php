<?php


abstract class Tiket {


    // Properti terenkripsi protected
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $harga_dasar_tiket;



    // Constructor mapping dari database

    public function __construct($data){

        $this->id_tiket = $data['id_tiket'];

        $this->nama_film = $data['nama_film'];

        $this->jadwal_tayang = $data['jadwal_tayang'];

        $this->jumlah_kursi = $data['jumlah_kursi'];

        $this->harga_dasar_tiket = $data['harga_dasar_tiket'];

    }



    // Abstract method tanpa isi

    abstract public function hitungTotalHarga();

    abstract public function tampilkanInfoFasilitas();


}

?>