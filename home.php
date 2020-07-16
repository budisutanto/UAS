<?php

require_once "core/init.php";

include("views/navbar.php");

if (!isset($_SESSION['username'])) {
    header('Location: home.php');
}
?>

<br><center><h1>Selamat Datang di Website Data Relawan Covid 19</h1><br>
            <h2>kelompok 2</h2><br>
            <h3>1. Budi Sutanto </h3>
            <h3>2. Arisman Laia </h3>
            <h3>3. Billy Ruanda</h3>
            <h3>4. Chairul Mudjahid</h3>
        	<h3>5. Asmarudin <h3></center>
