$palvelin = "localhost";
$kayttaja = "root";  
$salasana = "";
$tietokanta = "tukisivusto";

$yhteys = new mysql($palvelin, $kayttaja, $salasana, $tietokanta);

if ($yhteys->connect_error) {
   die("Yhteyden muodostaminen epäonnistui: " . $yhteys->connect_error);
}

$yhteys->set_charset("utf8");