<!DOCTYPE html>
<?php
    require_once ("tietokanta.php");
?>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="tyyli.css">
		<link href='https://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet'>
		<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Webhotelli</title>
	</head>
	<body>
	<div id="sailio">
		<header>
			<div id="otsikko">
				<h1>Oy Webhotelli Ab</h1>
			</div>
		</header>
		<main>
			<div id="kategoriat"><?php
                $hakusql = "SELECT nimi, kategoria_id FROM kategoria
                    ORDER BY jarjestysnro";
                    $tulokset = $yhteys->query($hakusql);
                    while($rivi = $tulokset->fetch_assoc()) {                    
            ?>
				<a href="kategoria.php?id=<?php echo $rivi["kategoria_id"];?>" title = "Siirry kategoriaan"><b><?php echo $rivi["nimi"];?></b></a>
            <?php } ?>
			</div>
			<div id="ohjesailio">
				<h2>Uusimmat ohjeet</h2>
				<nav id="linkit">
					<ul><?php
                        $hakusql = "SELECT otsikko, artikkeli_id FROM artikkeli
                            ORDER BY luontipvm DESC LIMIT 10";
                            $tulokset = $yhteys->query($hakusql);
                            while($rivi = $tulokset->fetch_assoc()) {
                        ?>
                            <li><a class="linkki" href="ohje.php?id=<?php echo $rivi["artikkeli_id"];?>" title = "Lue ohje"><?php echo $rivi["otsikko"];?></a></li>
                        <?php } ?>
					</ul>                    
				</nav>
			</div>
		</main>
		<footer>
			<div class="footer_sisalto">
				<div class="footer_infot">
					<div class="aspa_info">
						<p><b>Asiakaspalvelu</b><br>
						tuki@webhotelli.fi<br>
						puh. 01234567<br>
						Arkisin klo 9-16</p>
					</div>
					<div class="myynti_info">
						<p><b>Myynti</b><br>
						myynti@webhotelli.fi<br>
						puh. 01234567<br>
						Arkisin klo 9-16</p>
					</div>
				</div>
				<div class="some">
					<p><b>Sosiaalinen media</b></p>
					<ul class="somekuvake_sailio">
						<li class="facebook_link">
							<a href="https://www.facebook.com/"><img alt="Facebook" src="icon_facebook48px.png" title="Siirry Facebookin etusivulle"</a>
						</li>
						<li class="linkedin_link">
							<a href="https://www.linkedin.com/?trk=seo-authwall-base_nav-header-logo"><img alt="Linkedin" src="icon_linkedin48px.png" title="Siirry Linkedinin etusivulle"</a>
						</li>
						<li class="twitter_link">
							<a href="https://twitter.com/"><img alt="Twitter" src="icon_twitter48px.png" title="Siirry Twitterin etusivulle"</a>
						</li>
					</ul>
				</div>
			</div>
		</footer>
	</div>
	</body>
</html>