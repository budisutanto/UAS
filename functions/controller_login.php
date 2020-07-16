<?php

require_once("core/init.php");

// validasi register
if(isset($_POST['submit']) ){
    $nama = $_POST['username'];
    $pass = $_POST['password'];

    // trim - remove spasi
    if( !empty(trim($nama)) && !empty(trim($pass)) ){
        
        if( login_cek_nama($nama) ){
            if( cek_data($nama, $pass) ){
                $_SESSION['username'] = $nama;
                header('Location: home.php');
            }
            else{
                echo "<script>alert('Username/Password salah')</script>";
            }
        }
        else{
            echo "<script>alert('Username tidak terdaftar')</script>";
        }
    }
    else{
        echo "<script>alert('Tidak boleh kosong')</script>";
    }
}