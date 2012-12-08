<?php
 
//On inclut le modèle
include(dirname(__FILE__).'/../modeles/accueil.php');

$resultat = recuperer_res();

//On inclut la vue
include(dirname(__FILE__).'/../vues/accueil.php');
?>
