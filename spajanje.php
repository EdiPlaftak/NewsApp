<?php 

$naziv_servera = "localhost";
$korisnickoIme = "root";
$lozinka = "";
$naziv_baze = "welt";

$dbc = mysqli_connect($naziv_servera, $korisnickoIme, $lozinka, $naziv_baze) or die("Greška prilikom spajanja na bazu!");

?>