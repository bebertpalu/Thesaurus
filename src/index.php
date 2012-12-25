<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Thesaurus</title>
		<link rel="stylesheet" type="text/css" media="screen" href="css/styles.css" />
	</head>

	<body>
	
	<header class="container">
    <h1>Thesaurus</h1>
    <nav>
        <ul id="navlist">
            <li id="active"><a href="#">Accueil</a></li>
            <li><a href="#">Recherche</a></li>
            <li><a href="#">Alphabétique</a></li>
            <li><a href="#">Permuté</a></li>
            <li><a href="#">Microthésaurus</a></li>
        </ul>
    </nav>
  </header>
  <section class="container">
    <section class="content">
<?php
    if (!empty($_GET['page']) && is_file('controleurs/'.$_GET['page'].'.controleur.php'))
    {
        include_once 'controleurs/'.$_GET['page'].'.controleur.php';
    }
    else
    {?>
        <form method="post" action="index.php?page=recherche">
            <input type="text" name="libelle">
        </form>
    <?php
    }
?>
    </section>
    </section>

    <footer class="container">
    <p>Copyright &copy; Groupe. All rights reserved. Design by <a href="#" title="J'ai rien mis">Thesaurus</a> 
            <a class="footerLink" href="http://validator.w3.org/check/referer" title="This page validates as HTML5"><abbr title="HyperText Markup Language">HTML5</abbr></a> | 
            <a class="footerLink" href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS3</abbr></a></p>
    </footer>
	</body>
</html>
