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
	</body>
</html>
