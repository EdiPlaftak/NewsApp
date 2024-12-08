<!DOCTYPE html>
<html>

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

                <form method = "post" action = "registracija.php">
                    <p>Ime korisnika:</p>
                    <input type = "text" name = "ime" id = "ime">
                    <br><br>
                    <span id = "porukaIme">Morate unijeti ime korisnika!</span>
                    <p>Prezime korisnika:</p>
                    <input type = "text" name = "prezime" id = "prezime">
                    <br><br>
                    <span id = "porukaPrezime">Morate unijeti prezime korisnika!</span>
                    <p>Korisničko ime korisnika:</p>
                    <input type = "text" name = "korisnickoIme" id = "korisnickoIme">
                    <br><br>
                    <span id = "porukaKorisnickoIme">Morate unijeti korisnicko ime korisnika!</span>
                    <p>Lozinka korisnika:</p>
                    <input type = "password" name = "lozinka" id = "lozinka">
                    <br><br>
                    <span id = "porukaLozinka">Morate unijeti lozinku korisnika!</span>
                    <p>Ponovljena lozinka korisnika:</p>
                    <input type = "password" name = "ponovljenaLozinka" id = "ponovljenaLozinka">
                    <br><br>
                    <span id = "porukaPonovljenaLozinka">Morate unijeti ponovljenu lozinku!</span>
                    <br><br>
                    <input type = "submit" name = "submit" value = "Registracija" id = "gumb"/>
                    <br><br>
                    <span class = "bold" id = "poruka">Korisničko ime već postoji!</span>
                </form>

            </article>

        </section>


        <?php 

            include 'spajanje.php';
        
            if(isset($_POST['ime']) and isset($_POST['prezime']) and isset($_POST['korisnickoIme']) and isset($_POST['lozinka'])){

                if($dbc){

                    $ime = $_POST['ime'];
                    $prezime = $_POST['prezime'];
                    $korisnickoIme = $_POST['korisnickoIme'];
                    $lozinka = $_POST['lozinka'];
                    $razina = 0;

                    $hashiranaLozinka = password_hash($lozinka, CRYPT_BLOWFISH);

                    $sql1 = "SELECT korisnickoIme FROM korisnik WHERE korisnickoIme = ?";

                    $stmt1 = mysqli_stmt_init($dbc);

                    if(mysqli_stmt_prepare($stmt1, $sql1)){

                        mysqli_stmt_bind_param($stmt1, 's', $korisnickoIme);

                        mysqli_stmt_execute($stmt1);

                        mysqli_stmt_store_result($stmt1);

                        if(mysqli_stmt_num_rows($stmt1) > 0){

                            echo "
                            
                                <script type = 'text/javascript'>

                                    document.getElementById('poruka').style.display = 'inline';

                                </script>

                            ";

                        }
                        else {

                            $sql2 = "INSERT INTO korisnik (ime, prezime, korisnickoIme, lozinka, razina) VALUES(?, ?, ?, ?, ?)";

                            $stmt2 = mysqli_stmt_init($dbc);
        
                            if(mysqli_stmt_prepare($stmt2, $sql2)){
        
                                mysqli_stmt_bind_param($stmt2, 'ssssi', $ime, $prezime, $korisnickoIme, $hashiranaLozinka, $razina);
        
                                mysqli_stmt_execute($stmt2);
        
                            }

                        }

                    }

                }

            }

            mysqli_close($dbc);
        
        ?>

        <script type = "text/javascript">

            document.getElementById("gumb").onclick = function(event){

                var slanje_forme = true;

                document.getElementById("ime").style.border = "";
                document.getElementById("prezime").style.border = "";
                document.getElementById("korisnickoIme").style.border = "";
                document.getElementById("lozinka").style.border = "";
                document.getElementById("ponovljenaLozinka").style.border = "";

                document.getElementById("porukaIme").style.display = "none";
                document.getElementById("porukaPrezime").style.display = "none";
                document.getElementById("porukaKorisnickoIme").style.display = "none";
                document.getElementById("porukaLozinka").style.display = "none";
                document.getElementById("porukaPonovljenaLozinka").style.display = "none";

                var ime = document.getElementById("ime").value;

                if(ime.length < 1){

                    slanje_forme = false;

                    document.getElementById("ime").style.border = "1px dashed red";

                    document.getElementById("porukaIme").style.display = "inline";

                }

                var prezime = document.getElementById("prezime").value;

                if(prezime.length < 1){

                    slanje_forme = false;

                    document.getElementById("prezime").style.border = "1px dashed red";

                    document.getElementById("porukaPrezime").style.display = "inline";

                }

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

                var ponovljenaLozinka = document.getElementById("ponovljenaLozinka").value;

                if(ponovljenaLozinka.length < 1){

                    slanje_forme = false;

                    document.getElementById("ponovljenaLozinka").style.border = "1px dashed red";

                    document.getElementById("porukaPonovljenaLozinka").style.display = "inline";

                }

                if(lozinka.length >= 1 && ponovljenaLozinka.length >= 1 && lozinka != ponovljenaLozinka){

                    slanje_forme = false;

                    document.getElementById("lozinka").style.border = "1px dashed red";

                    document.getElementById("ponovljenaLozinka").style.border = "1px dashed red";

                    document.getElementById("porukaPonovljenaLozinka").innerHTML = "Lozinke moraju biti iste!";

                    document.getElementById("porukaPonovljenaLozinka").style.display = "inline";

                }

                if(slanje_forme != true){

                    event.preventDefault();

                }

            }

        </script>


        <footer>

            <p>WELT</p>

        </footer>

    </body>

</html>