<?php
 
if(isset($_POST['keyword']) && !empty($_POST['keyword'])) {


//On inclut le modèle afin de pouvoir utiliser les fonctions de requêtes 
	include(dirname(__FILE__).'/../modeles/recherche.php');

	$resultat = exemple_requete($_POST['keyword']);

//On inclut la vue
	include(dirname(__FILE__).'/../vues/resultat.php');

}
else {

    // On réaffiche le formulaire de connexion
    include(dirname(__FILE__).'/../vues/accueil.php');
}

?>
