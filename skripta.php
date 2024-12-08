<?php 

include 'spajanje.php';

echo "
<title>Welt</title>
<link rel = 'stylesheet' type = 'text/css' href = 'style.css'/>
";

if(isset($_POST['posalji'])){

    $naslov = $_POST['naslov'];
    $sazetak = $_POST['sazetak'];
    $tekst = $_POST['tekst'];
    $kategorija = $_POST['kategorija'];

    $slika = $_FILES['slika']['name'];

    $direktorij = 'slike/' . $slika;
    move_uploaded_file($_FILES["slika"]["tmp_name"], $direktorij);

    $arhiva = 0;
    
    if(isset($_POST['arhiva'])){
        $arhiva = 1;
    }

    $datum = date("Y-m-d");

    $formatiraniDatum = date("d.m.Y", strtotime($datum));


    $query = "INSERT INTO vijest (naslov, sazetak, tekst, kategorija, slika, arhiva, datum) VALUES('$naslov', '$sazetak', '$tekst', '$kategorija', '$slika', '$arhiva', '$datum')";

    $result = mysqli_query($dbc, $query) or die("Greška prilikom izvršavanja upita!");

    mysqli_close($dbc);


    header("Location: index.php");

}

?>