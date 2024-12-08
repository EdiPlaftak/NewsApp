-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 06:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `welt`
--
CREATE DATABASE IF NOT EXISTS `welt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `welt`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(10) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `korisnickoIme` varchar(30) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnickoIme`, `lozinka`, `razina`) VALUES
(1, 'Davor', 'Novak', 'dn', '$2y$10$RHXutAlGTe6qHLiS92AoG.BsQdVDObSs070Y2jpqidzwtMUKTsRkK', 1),
(2, 'Pero', 'Hus', 'ph', '$2y$10$VbissSvuPk.nRaoieJSEhOODHyDaJe3hZDF4lvdtNPZeWQ/HQvZcq', 0),
(3, 'Zoran', 'Kos', 'zk', '$2y$10$G4YDpRhRKVlc0AgvPeLQJulOoUXu43DIXXDkeVFOH0ycGHciD0Huq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijest`
--

CREATE TABLE `vijest` (
  `id` int(10) NOT NULL,
  `naslov` varchar(100) NOT NULL,
  `sazetak` text NOT NULL,
  `tekst` text NOT NULL,
  `kategorija` varchar(30) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `arhiva` int(2) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijest`
--

INSERT INTO `vijest` (`id`, `naslov`, `sazetak`, `tekst`, `kategorija`, `slika`, `arhiva`, `datum`) VALUES
(9, 'Der Treibstoff von New York', 'Die Geschichte der gefeierten New Yorker Pizza', 'Kaum ein Snack mag jemals naher an das Pradikat systemrelevant gekommen sein als das legendare New Yorker Pizza Slice. Hunderttausende Metropolisten kamen ohne ihren Brennwert nicht durch U-Bahnen, Hauserschluchten und 14-Stunden-Tage. Ein Pizzastuck mit Kase im Gehen: es ist der Kraftstoff der Schnelllebigen an der US-Ostkuste. Reich an Geschichte, reich an Geschmack. Eine Hommage.\n\nDie erste Pizzeria in New York soll von Gennaro Lombardi im Jahr 1905 eroffnet worden sein – das Restaurant in Manhattan gibt es auch heute noch. Dem Food-Blogger Ed Levine zufolge war damit aber noch nicht der Verkauf in Stucken geboren. Die damaligen Kohleofen liessen die Pizzen beim Erkalten zah werden. Erst mit der Erfindung des weniger heissen Gasofens setzten Pizzerien in den 30er-Jahren auf Wagenrad-grosse Teige, die in Stucken verkauft wieder aufgewarmt wurden.\n\nWas ist eigentlich das New Yorker Pizza Slice? Die Eckdaten: ein dreieckiges Stuck, etwas grosser als der Pappteller, auf dem es oft serviert wird. Der Teig ist dünn, knusprig und trotzdem flexibel genug, um ihn der Lange nach falten zu konnen. Die Tomatensosse ist ungekocht und simpel, der Kase ein Mozzarella mit geringem Wasseranteil.\n\nMehr brauchte es nicht fur das erste goldene Zeitalter der New Yorker Pizza in der zweiten Halfte des 20. Jahrhunderts. Kaum einer verkorperte diese Ara so wie Domenico „Dom“ DeMarco, der 1959 aus der Nahe von Neapel nach New York kam. Sein Laden „Di Fara Pizza“ zog jahrzehntelang taglich Hunderte in das winzige Eckrestaurant im tiefsten Brooklyn – auch Superstars wie Leonardo DiCaprio.\n\nDom betrieb großen Aufwand – vom Teig uber die Tomaten bis zum Kase – um die perfekten Stucke zu backen. Die fertigen Pizzen nahm er der Legende nach mit blossen Handen aus dem Ofen. 2004 sagte er der „New York Times“: „Ich habe nicht vor, in Rente zu gehen. Aber ich mochte, dass meine Kinder den Platz ubernehmen. Sie müssen mir folgen. Sie mussen meiner Idee folgen.“ DeMarco starb 2022.\n\nNew York bleibt niemals stehen, auch seine Slices verandern sich stetig, wie Pizza-Fan Scott Wiener erklart. „New York ist keine Stadt, in die man kommen und ein Pizzeria-Museum besuchen kann, das sich seit 100 Jahren nicht verandert hat“, sagt Wiener. Es habe sich eine neue Generation von Pizzabackern angesiedelt. Der Weg zur Pizza-Neuerfindung fuhrt uber komplizierte Fermentierungstechniken, besondere Tomaten oder den perfekt temperierten Ofen.\n\n15 Stucke isst Wiener nach eigenen Angaben jede Woche, sein Geld verdient er mit Pizza-Touren in der Stadt. „Es ist absolut der Treibstoff für jeden, der in dieser Stadt lebt“, schwarmt er. Ein Snack fur alle und jederzeit, unabhangig von Gehalt, Status und Herkunft.\nAuf wohl keiner Bestenliste fehlt der Slice-Shop „L‘Industrie Pizzeria“ im Viertel Williamsburg in Brooklyn. Auch andere Laden wie „My Pie Pizzeria Romana“, „Scarr’s Pizza“ und „Patsy’s Pizzeria“ gelten derzeit als beliebt.\nAnders sieht es inzwischen wohl bei „Di Fara Pizza“ in Brooklyn aus. „Es gibt einen Grund, warum ich diesen Ort nicht in meine Bestenliste aufgenommen habe“, sagt Wiener. Seit dem Tod der Pizza-Legende DeMarco sei die Qualitat gesunken.\nEin Trost kann sein, dass sein Werk, seine Hingabe und Energie in Hunderten New Yorker Pizzerien weiterleben. Damit die New Yorker weiter die Kraft haben, niemals stillzustehen.\n', 'food', 'slice.jpg', 1, '2023-06-18'),
(14, 'Pommes for President', 'Die besten Pommes in Hamburg', 'Manchmal uberfallt er mich vollig unerwartet, der ungezugelte Appetit auf etwas der Kategorie „heiss und fettig“. So geschehen kurzlich am Hamburger Hauptbahnhof, dessen Stirnseite ich immer meide, weil ich „hinten“ meist meinen inoffiziellen Trottoir-Parkplatz frei vorfinde. Das ist seit vergangener Woche anders. Ich meide vorn nicht mehr. Ich habe den Airstream vor dem Haupteingang entdeckt.\n\nAhnungslos wartete ich im Auto, als plotzlich mein Mann mit einer Tute Pommes frites vor mir stand. Ich kostete, schmeckte uberhaupt kein Frittierfett, sondern nur Kartoffel, in dieser Kombination von aussen knusprig, innen ein bisschen matschig, die unverzuglich ein unbesiegbares „Ich will mehr“-Verlangen auslost. Mein Mann ging Richtung Bahnsteig, um dort jemanden abzuholen. Ich flitzte dorthin, wo seine Pommes herkamen. Zu dem Airstream.\n\n„CKTs Pommes for President“ – ein irritierender Name in diesen Zeiten? Nun, es soll einfach nur heissen: „Wir machen die besten Pommes“, so versichert es Sunny, der seit 15 Jahren fur die Frittenfirma mit Geschaftssitz in Wedel arbeitet. Und CKT, das sind die Initialen des Inhabers und Geschaftsfuhrers Christian Knoop-Troullier, der 1981 frisches „Food to go“ in die Wandelhalle gebracht hatte, damals waren es Croissants, die Pommes-Geschichte startete er um die Jahrtausendwende. Vor drei Jahren gab die Firma den festen Standort in der Einkaufszone des Bahnhofes auf und stellte stattdessen die silberne Zigarre vor den Haupteingang. Es sei an dieser Stelle noch erwahnt: Pommes frites wurden im 17. Jahrhundert von den Belgiern erfunden, Amerikaner nahmen die Kartoffelstabchen erst nach dem Ersten Weltkrieg aus Europa mit nach Ubersee und machten einen Nationalkult daraus.\n\nIch kaufte noch eine Tute. Es gibt auch Wedges, Kartoffelscheiben mit Schale und Susskartoffel-Pommes, ich hatte eine exotische Sosse ausprobieren konnen (orientalisch) oder eine niederlandische Joppie (Remoulade, Senf, Zwiebeln). Doch ich entschied mich fur die klassische Variante, mit doppelt Mayo. Ich beobachtete eine junge Frau in kurzem rotem Mantel, die, aus der Wandelhalle kommend, gezielt hierher steuerte und sich kurz darauf lachelnd ihrem Tuteninhalt widmete. Viele Passanten scheinen von den Gleisen direkt hierher zu streben.\n\n400 bis 500 Portionen verkauft das Team in dem umfunktionierten Wohnwagen, erfuhr ich von Sunny. Und: „Wir haben den Airstream in 300-stundiger Handarbeit so aufpolieren lassen.“ Auch von innen blitzt der Pommes-Pit-Stop, kein Appetithemmer stort das Auge. Die Kartoffeln kommen aus Bayern, werden ohne Zusatzstoffe verarbeitet, erzahlte Sunny weiter, wahrend ich schwelgte. Mein Mann kehrte zuruck, sah mich mit der leeren Tüte. Und war entsetzt, dass ich alles allein aufgegessen hatte.\n\nIch werde weiter meinen geheimen Parkplatz am Hintereingang des Hauptbahnhofs favorisieren. Aber definitiv ab und zu eine Ausnahme machen.\n', 'food', 'pommes.jpg', 1, '2023-06-18'),
(19, 'Mangeldnes Vertrauen', 'Wie ein Bewerbungstraining helfen kann - auch bei zu wenig Selbstvertrauen', 'Fachlich versiert, souveran, uberzeugend - einen solchen Eindruck mochten die meisten Menschen machen, wenn sie sich fur einen Job bewerben. Doch nicht immer klappt das wie gewunscht. Manche Bewerber haben etwa Probleme mit ihrem Anschreiben zu punkten, anderen fallt es schwer im Vorstellungsgesprach zu uberzeugen. Ein Bewerbungstraining kann dann eine Uberlegung wert sein. Doch was erwartet einen dabei eigentlich - und wie findet man das passende Angebot?\n\nBewerbungscoachings gibt es prinzipiell fur jeden - vom Berufseinsteiger bis zum Berufserfahrenen und sogar fur Fuhrungskrafte oder Personalverantwortliche. Denn auch wenn man selbst bereits Auswahlerfahrung hat und die Entscheiderperspektive kennt, kann ein Coaching sinnvoll sein. „Ist man selbst in der Bewerberrolle ist das eine vollkommen andere Situation“, sagt Ute Gietzen-Wieland, Business-Coachin in Bielefeld.\n\nEin Bewerbungstraining ist schliesslich die Vorbereitung auf einen Auftritt, bei dem es ums Ganze geht: Bekomme ich den Job oder nicht? „Selbst erfahrene Sportprofis bereiten sich intensiv auf jeden wichtigen Wettkampf mit Preisgeld vor, bei dem es nur einen Gewinner geben kann“, sagt Gietzen-Wieland.\n\nAm Anfang steht beim Coaching dann meist der Blick auf die Bewerbungsunterlagen. Ein Coach hilft, die Unterlagen so zu gestalten, dass sie auf die Anforderungen der jeweiligen Stelle abgestimmt sind und die eigenen Starken und Erfahrungen gut zur Geltung bringen. „Damit steigt die Chance, dass der Personalverantwortliche den Bewerber zu einem Gesprach einladt“, erklart die Hamburger Karriereberaterin Ragnhild Struss.\n\nIm Bewerbungscoaching lernen die Teilnehmer zudem, wie sie sich auf Bewerbungsgesprache vorbereiten. Und wie sie sich wahrend des Gesprachs prasentieren und verhalten konnen, um einen positiven Eindruck zu hinterlassen. Durch praktische Rollensimulationen lerne man, sich auf Echtsituationen vorzubereiten und konne hinter den Kulissen noch optimieren, erläutert Gietzen-Wieland. Dazu kommen „Tipps, in welchen Berufen und Stellen die Job-Person-Passung besonders hoch ist und wie man sich beruflich weiterentwickeln kann“, erklart Struss.\n\nEs gibt auch Coachings, die diagnostische Verfahren wie eine fundierte Personlichkeitsanalyse beinhalten. Hierbei haben Teilnehmer die Moglichkeit, sich ihre eigenen Starken, Fahigkeiten, Talente, Werte, Motive, Bedurfnisse oder Interessen bewusst zu machen. „Auf diese Weise kann das Coaching dazu beitragen, das Selbstbewusstsein der Teilnehmenden zu steigern, das Vertrauen in die eigenen Kompetenzen zu starken und Mut zu machen“, sagt Struss.\nEin gutes Training oder Coaching erkennt man daran, dass es individuell ist. Es beinhaltet vor allem Praxisubungen wie etwa Rollensimulationen oder Videoanalysen. Interessierte sollten sich ausserdem unbedingt nach den Qualifikationen des Coaches erkundigen. „Nachweislich echte Fach- und Feldkompetenz beim Berater sind wichtig, reine Theorie nutzt nichts“, sagt Gietzen-Wieland.\n\nDer Anbieter sollte eigene Rekrutierungserfahrung haben und im Idealfall in fruheren Jahren als Personalberater, Headhunter oder als Rekruter im Personalbereich eines Unternehmens tatig gewesen sein. Bei einem solchen beruflichen Hintergrund kann aus Sicht von Gietzen-Wieland ein Coach tatsachlich beraten, klare Empfehlungen aussprechen - und dafur sorgen, dass ein Bewerber gut vertraut ist mit der Sichtweise und den Erwartungen der Entscheiderseite.\n\nDoch es gibt auch No-Gos. Ein gutes Coaching ziele nie darauf ab, dass die Bewerber eine Rolle und auswendig gelernte Satze einstudieren, sagt Struss. Vielmehr gehe es darum, die Teilnehmer zu ermutigen, sich wahrheitsgetreu und authentisch zu prasentieren. Dazu zahle auch, eigene Bedürfnisse zu formulieren und Fragen zu stellen.\n\nUnd wie finanziert man das alles? Bei Arbeitslosigkeit zahlt oft die Agentur fur Arbeit Bewerbungstrainings. Dies sind allerdings in der Regel Gruppenformate. Wer es individueller mag oder den bisherigen Job einfach gerne wechseln mochte, muss selbst dafur aufkommen. „Ein intensives Bewerbungscoaching bei einem erfahrenen Profi ist schon eine grossere Investition, zehn Stunden sind die Untergrenze für eine ganzheitliche Begleitung“, sagt Gietzen-Wieland.\n\nEine Investition, die sich aber auszahlen kann, wenn man das passende Coaching wahlt - und daruber einen Job findet, der zur eigenen Personlichkeit passt und mit dem man gutes Geld verdient. „Mit einem Bewerbungscoaching investiert man in sich selbst und in die eigene Zukunft“, erklart Struss. Daher könne es sich auch lohnen, auf ein solches Coaching zu sparen. „Teilnehmende bekommen Fähigkeiten und Kenntnisse etwa aus den Bereichen Rhetorik, Korpersprache, Prasentation oder Personlichkeit vermittelt, die auch uber das Coaching hinaus anwendbar sind.“\n', 'beruf', 'coaching.jpg', 1, '2023-06-18'),
(21, 'Die unbekannte Ungleichheit', 'Hans-Bockler-Stiftung mit eine neue interessante Studie', 'Frauen sind nach einer Studie des Wirtschafts- und Sozialwissenschaftlichen Instituts (WSI) der gewerkschaftsnahen Hans-Bockler-Stiftung am Arbeitsmarkt nach wie vor in vielerlei Hinsicht benachteiligt. In 45 von 46 untersuchten Branchen verdienten Frauen auch 2022 weniger als Manner, wie das WSI in einer am Freitag veröffentlichten Studie berichtete. Auch in Fuhrungspositionen sind Frauen nach wie vor seltener zu finden.\n\nFur die Studie anlasslich des „Equal-Pay-Days“ und des Internationalen Frauentages in der kommenden Woche hatten die Wissenschaftlerinnen und Wissenschaftler die neuesten verfugbaren Daten des Statistischen Bundesamts und der Bundesagentur fur Arbeit ausgewertet, die die Jahre 2021 und 2022 beschreiben.\n\nIn 45 von 46 Branchen liegen Frauen bei der Bezahlung hinten. Manner verdienten der Studie zufolge 2022 branchenubergreifend im Durchschnitt 24,36 Euro brutto pro Stunde, Frauen 20,05 Euro – eine Differenz von rund 18 Prozent. Die Differenz schwankte dabei je nach Branche von vier Prozent im Personen- und Guterverkehr bis zu 30 Prozent im Gesundheitswesen und sogar 32 Prozent in der Rechts- und Steuerberatung. Einzige Ausnahme waren der Studie zufolge die Postdienste: Hier war der Stundenlohn der Frauen mit 16,26 Euro zwei Prozent hoher als der von Mannern mit 15,93 Euro.\n\nChefs gibt es der Studie zufolge nach wie vor deutlich haufiger als Chefinnen. In 26 von 34 Branchen, für die dazu Daten vorlagen, arbeiten Frauen seltener in leitender Funktion als Manner. Besonders ausgepragt sei die Ungleichheit in dieser Hinsicht im Bereich Erziehung und Unterricht, wo 50 Prozent der Manner, aber nur 28 Prozent der Frauen eine Leitungsposition innehatten, heisst es in der Untersuchung. Der einzige Bereich, in dem Frauen die Nase vorn hatten, sei der Personen- und Guterverkehr. Minijobs sind dagegen uberwiegend Frauensache. Manner arbeiten deutlich haufiger als Frauen Vollzeit.\n\nViele Bereiche der Wirtschaft – besonders in der Industrie – sind laut Studie nach wie vor Mannerdomanen. Im Maschinenbau, dem Hoch- und Tiefbau sowie bei Bauinstallation und Ausbaugewerbe liegt der Frauenanteil bei nur 17 Prozent. In den Dienstleistungsbranchen ist der Anteil der Arbeitnehmerinnen dagegen generell hoher. Drei Branchen sind sogar klar frauendominiert: Im Gesundheitswesen sind 80 Prozent der Beschaftigten weiblich, im Sozialwesen 76 Prozent, in Erziehung und Unterricht 72 Prozent.\n\nDer sogenannte „Equal Pay Day“, datiert auf den 7. Marz, gibt symbolisch an, bis zu welchem Tag im Jahr Frauen praktisch unbezahlt gearbeitet haben, obwohl sie die gleiche Arbeit wie Manner leisten, die bereits seit dem 1. Januar bezahlt werden.\n', 'beruf', 'euro.jpg', 1, '2023-06-18'),
(23, 'Arbeitslosenquote sinkt wieder', 'Im Landkreis Ebersberg finden wieder etwas mehr Leute einen Job', 'Die Arbeitslosigkeit im Landkreis geht weiter zuruck. Dies geht aus den Zahlen der auch fur Ebersberg zustandigen Arbeitsagentur Freising hervor. Demnach waren Ende Mai insgesamt 3476 Personen arbeitssuchend gemeldet, das sind 45 weniger, als im Vorjahr. Die Zahl der Bezieher von Arbeitslosengeld sank sogar um 48 auf 1837, das entspricht einer Quote von 2,3 Prozent und liegt um 0,1 Punkte unter dem Wert von April und Marz. Damit geht die Arbeitslosenquote nach zwei Monaten wieder nach unten, wie zuletzt im Marz. Im Februar hatte sie noch 2,4 Prozent betragen.\n\nIm Jahresvergleich ist die Zahl der Arbeitssuchenden indes weiterhin hoher als vor einem Jahr, im Mai 2022 lag sie bei 2856, die Zahl der Bezieher von Arbeitslosengeld lag bei 1482. Diese Entwicklung - ein leichter Rückgang im Vergleich zum Vormonat, aber noch ein gutes Stuck mehr als vor einem Jahr - zeigt sich auch in den Nachbarlandkreisen im Zustandigkeitsbereich der Freisinger Agentur. Insgesamt waren in Dachau, Ebersberg, Erding und Freising Ende Mai 16 516 Personen auf Arbeitssuche, 8704 von ihnen bezogen Arbeitslosengeld. Das sind 277 beziehungsweise 248 weniger als im Vormonat, aber 2301 und 1335 mehr als vor einem Jahr.\n\nDie Arbeitslosenquote fur alle vier Landkreise liegt aktuell bei 2,3 Prozent nach 2,4 Ende April. Am niedrigsten ist sie derzeit im Landkreis Erding mit 2,1 Prozent, in Dachau liegt sie bei 2,3 und in Freising bei 2,6 Prozent. Genau wie in Ebersberg verzeichnet die Agentur in allen anderen Landkreisen einen Ruckgang von 0,1 Prozentpunkten.\n\nBei den offenen Stellen ist das Bild uneinheitlicher: So waren bei der Arbeitsagentur Ende Mai insgesamt fur alle vier Landkreise 6427 Jobangebote registriert, sieben mehr, als im Vormonat und sogar 183 mehr als vor einem Jahr. Im Landkreis Ebersberg hingegen stieg die Zahl der Jobangebote im Vergleich zum April um 58, allerdings liegt die Zahl mit aktuell 1522 noch um 175 unter dem Mai des Vorjahres.\n\nBesonders gesucht werden nach wie vor qualifizierte Leute, von den 6427 offenen Stellen in der Region richten sich 5282 oder rund 82 Prozent an Fachkrafte. Dem wolle man durch Qualifizierungen und Weiterbildungen Rechnung tragen, so Katja Kurmaier, stellvertretende Chefin der Agentur fur Arbeit Freising: \"Wir beraten Unternehmen ganz individuell bezuglich Qualifizierungsbedarfen von Beschaftigten und entlasten bei Weiterbildungsvorhaben auch finanziell - zum Beispiel durch die Ubernahme von Lehrgangskosten oder die Auszahlung von Entgeltzuschussen.\" Ausführliche Informationen zu den Fordermoglichkeiten der Agentur fur Arbeit erhalten Betriebe aus den Landkreisen Freising, Erding, Ebersberg und Dachau im Arbeitgeber-Service oder unter der gebührenfreien Servicenummer (0800) 455 55 20.\n\nAuch regulare Ausbildungsplatze sind in der Region und im Landkreis noch zu vergeben. Insgesamt werden noch 1626 Azubis gesucht, in Ebersberg sind aktuell 352 Stellen vakant. Auf der Suche nach einem Ausbildungsplatz waren Ende Mai im Landkreis noch 217 und in der Region insgesamt 934 junge Leute. Wer bei der Suche noch Hilfe braucht, kann unter der kostenlosen Nummer (0800) 455 55 00 einen Termin bei der Arbeitsagentur vereinbaren.\n', 'beruf', 'arbeit.jpeg', 1, '2023-06-18'),
(24, 'Das beliebteste Fast Food', 'Was passierte mit der Currywurst?', 'In vielen deutschen Familien gibt es die Geschihte vom Opa oder Uropa, der alsechtes Fleisch nur Schweineschnitzel akzeptierte. Der als Beilage auf Kartoffeln schwor und Pasta oder Reis fur Teufelszeug hielt. Eine neue Yougov-Umfrage zeigt, dass bei den Jungeren in Deutschland ein Sinneswandel stattgefunden hat und die Liebe zur Currywurst oder Bratwurst verloren geht. In der jungen Generation sind Pizza, Pasta, Doner oder auch Burger als Snacks und Fast-Food-Gerichte weit beliebter als die fruher typisch deutschen Schweinefleischwaren.\n\nWahrend bei den Leuten uber 55 noch das deutsche Lokal mit gutburgerlicher Kuche beim Essengehen erste Wahl ist (mit 32 Prozent weit vor italienischer Kuche mit 21 Prozent), liegt bei jungeren Erwachsenen langst die italienische Kuche mit Abstand vorn.\n\nFragt man in Deutschland reprasentativ alle Erwachsenen, welche Richtung ihnen beim Essengehen am meisten zusagt, siegt wegen der bevolkerungstechnisch dominanten Gruppe der uber 55-Jahrigen nach wie vor „deutsche/gutburgerliche” Kuche (26 Prozent) - und zwar vor der italienischen (20 Prozent), griechischen (13) und chinesischen (12). Den Ausschlag dafur, dass die deutsche Kuche auf Platz eins landet, geben die Manner, bei denen sie mit Abstand vor der italienischen liegt (30 zu 16 Prozent). Frauen gehen dagegen lieber italienisch als deutsch essen (24 zu 22 Prozent).\n\nFragt man Leute uber 55, was ihr liebstes Fast-Food-Gericht sei, liegt Currywurst gleichauf mit Pizza (jeweils 16 Prozent), gefolgt von Doner (12), Bratwurst und Backfisch (je 10).\n\nBei jungeren Erwachsenen in Deutschland (18 Jahre bis Mitte vierzig) ist dagegen die Wurstliebe verloren gegangen - Currywurst oder auch Bratwurst landen bei der Umfrage recht weit hinten. Mit Abstand beliebtestes Fast Food ist die Pizza, gefolgt von Doner und Burger. Im direkten Duell von Currywurst und Doner, wenn die Befragten also einen dieser beiden Klassiker wahlen mussen, bevorzugen auch in der Gesamtbevolkerung 45 Prozent den Doner (und nur 37 Prozent die Currywurst). Je junger die Befragten, desto grosser die Doner-Liebe.\n', 'food', 'currywurst.jpg', 1, '2023-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- Indexes for table `vijest`
--
ALTER TABLE `vijest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vijest`
--
ALTER TABLE `vijest`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
