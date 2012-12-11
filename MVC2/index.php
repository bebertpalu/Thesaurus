
<?php
include_once 'global/init.php';
//include_once "global/init.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv=”Content-Language” content=”fr” charset=UTF-8” />
		<title>Projet BDD</title>
		<link rel="stylesheet" type="text/css" media="screen" href="css/styles.css" />
	</head>

	<body>
	
	<header class="container">
    <h1>Thesaurus</h1>
    <nav>
        <ul id="navlist">
            <li id="active"><a href="#">Accuei</a></li>
            <li><a href="#">Recherche</a></li>
            <li><a href="#">Info</a></li>
        </ul>
    </nav>
  </header>

  
  


<?php

//On inclut le contrôleur s'il existe et s'il est spécifié
if (!empty($_GET['page']) && is_file('controleurs/'.$_GET['page'].'Controleur.php'))
{
    include_once 'controleurs/'.$_GET['page'].'Controleur.php';
}
else
{
	include_once 'controleurs/rechercheControleur.php';
}

?>

 <footer class="container">
    <p>Copyright &copy; Groupe. All rights reserved. Design by <a href="#" title="J'ai rien mis">Thesaurus</a> 
            <a class="footerLink" href="http://validator.w3.org/check/referer" title="This page validates as HTML5"><abbr title="HyperText Markup Language">HTML5</abbr></a> | 
            <a class="footerLink" href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS3</abbr></a></p>
  </footer>
	</body>
</html>
