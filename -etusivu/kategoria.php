<!DOCTYPE html>
<?php
    require_once ("tietokanta.php");
?>
<html lang="fi">
	<head>
		<meta charset="UTF-8">
		<title>Kategoria</title>
		<link rel="stylesheet" type="text/css" href="tyyli.css">
		<link href='https://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet'>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
			
		<style>
		
		</style>
			
	</head>
		
	<body>
		
		<div id="sailio">
			
			<header>
				<div id="otsikko">
					<a class="otsikkolinkki" href="index.php"><h1>Oy Webhotelli Ab</h1></a>
				</div>
			</header>
			
			<main>
				<h2>Tukiohjeet: [kategorian nimi]</h2>
			
				<div id="kategoriasailio">
					
					
					<section class="ohje">
					
						<h3>Ohjeen otsikko</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ultricies tristique tellus eget 
						ullamcorper. Nullam egestas nunc vel posuere placerat.</p>
						<a class="ohjelinkki" href="ohje.html">Lue koko ohje</a>
					
					</section>
					
					<section class="ohje">
					
						<h3>Ohjeen otsikko</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ultricies tristique tellus eget 
						ullamcorper. Nullam egestas nunc vel posuere placerat.</p>
						<a class="ohjelinkki" href="ohje.html">Lue koko ohje</a>
					
					</section>
					
				
				</div>
				
				<div id="ohjesailio">
				<h3>Uusimmat ohjeet</h3>
				<nav id="linkit">
					<ul><?php
                        $hakusql = "SELECT otsikko, artikkeli_id FROM artikkeli
                            ORDER BY luontipvm DESC LIMIT 10";
                            $tulokset = $yhteys->query($hakusql);
                            while($rivi = $tulokset->fetch_assoc()) {
                        ?>
                            <li><a class="linkki" href="ohje.php?id=<?php echo $rivi["artikkeli_id"];?>"><?php echo $rivi["otsikko"];?></a></li>
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
								<a href="https://www.facebook.com/"><img alt="Facebook" src="icon_facebook48px.png" title="Facebook"</a>
							</li>
							<li class="linkedin_link">
								<a href="https://www.linkedin.com/?trk=seo-authwall-base_nav-header-logo"><img alt="Linkedin" src="icon_linkedin48px.png" title="Linkedin"</a>
							</li>
							<li class="twitter_link">
								<a href="https://twitter.com/"><img alt="Twitter" src="icon_twitter48px.png" title="Twitter"</a>
							</li>
						</ul>
					</div>
				</div>
			</footer>		
		</div>	
	</body>
</html>