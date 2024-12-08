<!DOCTYPE html>
<html>

    <?php 
    
    session_start();

    ?>

    <head>

        <title>Welt</title>

        <link rel = "stylesheet" type = "text/css" href = "style.css"/>

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

        <?php 

        include 'spajanje.php';

        define('UPLPATH', 'slike/');
        
        $id = $_GET['id'];

        $query = "SELECT * FROM vijest WHERE id = $id";

        $result = mysqli_query($dbc, $query) or die("Greška prilikom izvrašavanja upita!");

        while($row = mysqli_fetch_array($result)){

            $kategorija = "";

            if($row['kategorija'] == 'beruf'){
                $kategorija = 'BERUF & KARRIERE';
            }
            else {
                $kategorija = 'FOOD';
            }

            echo "
            
            <section class = 'b1-section'>

                <p><a class = 'a-clanak' href = 'kategorija.php?kategorija=$row[kategorija]'>$kategorija</a></p>

            </section>";

            echo "<article class = 'a2-article'>";

            echo "<p class = 'p1-article'>$row[naslov]</p>";

            $datum = $row['datum'];

            $formatiraniDatum = date("d.m.Y", strtotime($datum));

            echo "<p>Stand: $formatiraniDatum</p>";

            $slika = UPLPATH . $row['slika'];

            echo "<img src = '$slika'>";

            echo "<p class = 'clanak'>$row[sazetak]</p>";

            echo "<p class = 'clanak'>$row[tekst]</p>";

        }

        mysqli_close($dbc);
        
        ?>

        </section>


        <footer>

            <p>WELT</p>

        </footer>

    </body>

</html>