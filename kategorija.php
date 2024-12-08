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

                <?php 

                $kategorija = $_GET['kategorija'];
                
                if($kategorija == 'beruf'){
    
                    echo "<p>BERUF & KARRIERE</p>";
        
                }
                else {
            
                    echo "<p>FOOD</p>";
        
                }
                
                ?>

            </section>

            <?php 
                
                include 'spajanje.php';

                define('UPLPATH', 'slike/');

                $query = "SELECT * FROM vijest WHERE kategorija = '$kategorija' AND arhiva = 1 ORDER BY datum DESC";

                $result = mysqli_query($dbc, $query) or die("Greška prilikom izvršavanja upita!");

                $i = 0;

                while($row = mysqli_fetch_array($result)){

                    if($i == 0 || $i % 3 == 0){

                        echo "<section class = 'b2-section'>";

                    }

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

                    $i++;

                    if($i == 0 || $i % 3 == 0){

                        echo "</section>";

                    }

                    }

                mysqli_close($dbc);
                
                ?>
                
        </section>

        <footer>

            <p>WELT</p>

        </footer>

    </body>

</html>

