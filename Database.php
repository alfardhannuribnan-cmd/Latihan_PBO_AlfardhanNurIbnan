<?php

class Database {


    private $host = "localhost";
    private $user = "root";
    private $password = "";
    private $database = "DB_LATIHAN_PBO_TRPL1A_ALFARDHANNURIBNAN";


    protected $koneksi;



    public function __construct(){


        $this->koneksi = new mysqli(
            $this->host,
            $this->user,
            $this->password,
            $this->database
        );



        if($this->koneksi->connect_error){

            die("Koneksi gagal : " . $this->koneksi->connect_error);

        }


    }




    public function getKoneksi(){


        return $this->koneksi;


    }



}

?>