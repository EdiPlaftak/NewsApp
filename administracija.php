<!DOCTYPE html>
<html>

    <?php

        session_start();
    
        include 'spajanje.php';

        if(isset($_SESSION['korisnickoIme']) == false and isset($_SESSION['razina']) == false){

            $_SESSION['korisnickoIme'] = "";
            $_SESSION['razina'] = "";

        }

        $nepostojeciKorisnik = 0;

        if(isset($_POST['prijava'])){

            $korisnickoIme = "";
            $lozinka = "";
            $razina = "";

            $sql1 = "SELECT korisnickoIme, lozinka, razina FROM korisnik WHERE korisnickoIme = ?";

            $stmt1 = mysqli_stmt_init($dbc);

            if(mysqli_stmt_prepare($stmt1, $sql1)){

                mysqli_stmt_bind_param($stmt1, 's', $_POST['korisnickoIme']);

                mysqli_stmt_execute($stmt1);

                mysqli_stmt_store_result($stmt1);

            }

            mysqli_stmt_bind_result($stmt1, $korisnickoIme, $lozinka, $razina);

            mysqli_stmt_fetch($stmt1);
        

            if(mysqli_stmt_num_rows($stmt1) > 0){

                if(password_verify($_POST['lozinka'], $lozinka)){

                    $_SESSION['korisnickoIme'] = $korisnickoIme;
                    $_SESSION['razina'] = $razina;
    
                }

            }
            else {

                $nepostojeciKorisnik = 1;

            }
        
                
        }

        if(isset($_POST['delete'])){

            $id = $_POST['id'];

            $query3 = "DELETE FROM vijest WHERE id = $id";

            $result3 = mysqli_query($dbc, $query3) or die("Greška prilikom izvršavanja upita!");

        }


        if(isset($_POST['update'])){

            $id = $_POST['id'];

            define('UPLPATH', 'slike/');


            $naslov2 = $_POST['naslov'];
            $sazetak2 = $_POST['sazetak'];
            $tekst2 = $_POST['tekst'];
            $kategorija2 = $_POST['kategorija'];

            $slika = $_FILES['slika']['name'];

            $direktorij = 'slike/' . $slika;
            move_uploaded_file($_FILES["slika"]["tmp_name"], $direktorij);

            $arhiva = 0;

            if(isset($_POST['arhiva'])){
                $arhiva = 1;
            }

            $datum = date("Y-m-d");


            $query4 = "UPDATE vijest SET naslov = '$naslov2', sazetak = '$sazetak2', tekst = '$tekst2', kategorija = '$kategorija2', slika = '$slika', arhiva = '$arhiva', datum = '$datum' WHERE id = $id";

            $result4 = mysqli_query($dbc, $query4) or die("Greška prilikom izvršavanja upita!");

        }

    ?>

    <head>

        <title>Welt</title>

        <link rel = "stylesheet" type = "text/css" href = "style.css">

    </head>

    <body>

        <header>

        <section class = "h-section">

            <p>WELT</p>

        </section>

        <nav>

            <ul>
                <li><a class = "a-index" href = "index.php">HOME</a></li>
                <li><a href = "kategorija.php?kategorija=beruf">BERUF & KARRIERE</a></li>
                <li><a class = "a-food" href = "kategorija.php?kategorija=food">FOOD</a></li>
                <li><a class = "a-administracija" href = "administracija.php">ADMINISTRACIJA</a></li>
                <li><a class = "a-unos" href = "unos.html">UNOS</a></li>
            </ul>

        </nav>

        </header>

        <section class = "b-section">

            <article class = "a3-article">

                <?php 

                if($_SESSION['razina'] == 1 and isset($_POST['odabir'])){
                    
                    $id = $_POST['vijest'];
                                
                    $query2 = "SELECT * FROM vijest WHERE id = $id";
                                
                    $result2 = mysqli_query($dbc, $query2) or die("Greška prilikom izvršavanja upita!");
                                
                    echo "<form enctype = 'multipart/form-data' method = 'post' action = 'administracija.php'>";
                                
                    while($row2 = mysqli_fetch_array($result2)){
                                
                        $naslov1 = $row2['naslov'];
                        $sazetak1 = $row2['sazetak'];
                        $tekst1 = $row2['tekst'];
                        $kategorija1 = $row2['kategorija'];
                        $slika1 = "slike/" .$row2['slika'];
                                
                        echo "
                                
                        <p>Naslov vijesti:</p>
                                
                        <input class = 'i1-input' type = 'text' name = 'naslov' value = '$naslov1'>
                                
                        <p>Sazetak vijesti:</p>
                                
                        <textarea name = 'sazetak'>$sazetak1</textarea>
                                
                        <p>Tekst vijesti:</p>
                                
                        <textarea name = 'tekst'>$tekst1</textarea>
                                
                        <p>Kategorija vijesti:</p>
                                
                        <select name = 'kategorija'>";
                                
                        if($kategorija1 == "beruf"){
                                
                            echo "
                                        
                                <option value = 'beruf'>BERUF & KARRIERE</option>
                                
                                <option value = 'food'>FOOD</option>";
                                
                        }
                        else {
                                
                            echo "
                                        
                                <option value = 'food'>FOOD</option>
                                
                                <option value = 'beruf'>BERUF & KARRIERE</option>";
                                
                        }
                                
                                    
                        echo "
                                
                        </select>
                                    
                        <p>Trenutna slika vijesti:</p>
                                
                        <img class = 'img' src = '$slika1'/>
                                
                        <p>Zeljena slika vijesti:</p>
                                        
                        <input type = 'file' accept = 'image/jpg, image/jpeg, image/png' name = 'slika'>
                                
                        <br><br>
                                    
                        <label>Arhiva vijesti: <label>
                                
                        <input type = 'checkbox' name = 'arhiva'>
                                
                        <input type = 'hidden' name = 'id' value = '$id'>
                                
                        <br><br>";
                                
                                
                        echo "
                                
                            <input type = 'reset' value = 'Ponisti'/>
                                
                            <input type = 'submit' name = 'delete' value = 'Izbrisi'/>
                                
                            <input type = 'submit' name = 'update' value = 'Izmjeni'/>
                                
                        </form>"; 
                                                
                                
                    }

                }
                else if($_SESSION['razina'] == 1){

                    $query1 = "SELECT * FROM vijest";

                    $result1 = mysqli_query($dbc, $query1) or die("Greška prilikom izvršavanja upita!");

                    echo "
                
                    <form class = 'f1' method = 'post' action = 'administracija.php'>
                
                         <select  name = 'vijest'>

                    ";

                    while($row1 = mysqli_fetch_array($result1)){

                        echo "<option value = '$row1[id]'>$row1[naslov]</option>";

                    }

                    echo "
                
                        </select>

                        <br><br>

                        <input type = 'submit' name = 'odabir' value = 'Odaberi vijest'/>

                    </form>";

                }
                else if($_SESSION['razina'] == 0){

                    echo "<p class = 'margin-3'>Korisniče $_SESSION[korisnickoIme], uspješno ste prijavljeni, no nemate administratorske ovlasti za pristup traženoj stranici!</p>";

                }
                else if($nepostojeciKorisnik == 1){

                    echo "<p class = 'margin-3'>Za daljnje korištenje stranice potrebna je registracija koju možete odraditi na navedenom <a class = 'link' href = 'registracija.php'>linku</a>.</p>";

                }
                else{

                    echo "
                    
                        <form method = 'post' action = 'administracija.php'>

                            <p class = 'margin-1'>Korisničko ime korisnika:</p>
                            <input type = 'text' name = 'korisnickoIme' id = 'korisnickoIme'>
                            <br><br>
                            <span id = 'porukaKorisnickoIme'>Morate unijeti korisnicko ime!</span>
                            <p>Lozinka korisnika:</p>
                            <input type = 'password' name = 'lozinka' id = 'lozinka'>
                            <br><br>
                            <span id = 'porukaLozinka'>Morate unijeti lozinku!</span>
                            <br><br>
                            <input class = 'margin-2' type = 'submit' name = 'prijava' value = 'Prijava' id = 'gumb'/>

                        </form>
                    
                    ";

                }
                
                ?>

                <script type = "text/javascript">

                    document.getElementById("gumb").onclick = function(event){

                        var slanje_forme = true;

                        document.getElementById("korisnickoIme").style.border = "";
                        document.getElementById("lozinka").style.border = "";

                        document.getElementById("porukaKorisnickoIme").style.display = "none";
                        document.getElementById("porukaLozinka").style.display = "none";

                        var korisnickoIme = document.getElementById("korisnickoIme").value;

                        if(korisnickoIme.length < 1){

                            slanje_forme = false;

                            document.getElementById("korisnickoIme").style.border = "1px dashed red";

                            document.getElementById("porukaKorisnickoIme").style.display = "inline";

                        }

                        var lozinka = document.getElementById("lozinka").value;

                        if(lozinka.length < 1){

                            slanje_forme = false;

                            document.getElementById("lozinka").style.border = "1px dashed red";

                            document.getElementById("porukaLozinka").style.display = "inline";

                        }

                        if(slanje_forme != true){

                            event.preventDefault();

                        }

                    }

                </script>

            </article>

        </section>

        <footer>

            <p>WELT</p>

        </footer>

    </body>

</html>