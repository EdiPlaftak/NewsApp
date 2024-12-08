<!DOCTYPE html>
<html>

    <?php 
    
    session_start();

    ?>

    <head>

        <link rel = "stylesheet" type = "text/css" href = "style.css">

        <title>Welt</title>

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

            <section class = "b1-section">

                <p><a class = "a-clanak" href = "kategorija.php?kategorija=beruf">BERUF & KARRIERE</a></p>

            </section>


            <?php 
            
            include 'spajanje.php';

            define('UPLPATH', 'slike/');
            
            ?>


            <section class = "b2-section">

            <?php 
            
            $query = "SELECT * FROM vijest WHERE kategorija = 'beruf' AND arhiva = 1 ORDER BY datum DESC LIMIT 3";
            
            $result = mysqli_query($dbc, $query) or die ("Greška prilikom izvršavanja upita!");

            while($row = mysqli_fetch_array($result)){

                echo "<article class = 'a1-article'>";

                    $slika = UPLPATH . $row['slika'];

                    echo "<img src = '$slika'>";

                    $id = $row['id'];

                    echo "<p class = 'p1-article'><a class = 'a-clanak' href = 'clanak.php?id=$id'>$row[naslov]</a></p>";

                    echo "<p class = 'p2-article'>$row[sazetak]</p>";

                    $datum = $row['datum'];

                    $formatiraniDatum = date("d.m.Y", strtotime($datum));

                    echo "<p>$formatiraniDatum</p>";

                echo "</article>";

            }

            ?>

            </section>

        </section>

        

        <section class = "b-section">

            <section class = "b1-section">

                <p><a class = "a-clanak" href = "kategorija.php?kategorija=food">FOOD</a></p>

            </section>

            <section class = "b2-section">

            <?php 
            
            $query = "SELECT * FROM vijest WHERE kategorija = 'food' AND arhiva = 1 ORDER BY datum DESC LIMIT 3";
            
            $result = mysqli_query($dbc, $query) or die ("Greška prilikom izvršavanja upita!");

            while($row = mysqli_fetch_array($result)){

                echo "<article class = 'a1-article'>";

                $slika = UPLPATH . $row['slika'];

                echo "<img src = '$slika'>";

                $id = $row['id'];

                echo "<p class = 'p1-article'><a class = 'a-clanak' href = 'clanak.php?id=$id'>$row[naslov]</a></p>";

                echo "<p class = 'p2-article'>$row[sazetak]</p>";

                $datum = $row['datum'];

                $formatiraniDatum = date("d.m.Y", strtotime($datum));

                echo "<p>$formatiraniDatum</p>";

                echo "</article>";

            }

            mysqli_close($dbc);

            ?>

            </section>

        </section>
        

        <footer>

            <p>WELT</p>

        </footer>

    </body>

</html>