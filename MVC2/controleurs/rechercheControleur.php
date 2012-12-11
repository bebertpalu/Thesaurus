<?php 
    //On inclut la classe Model
include_once 'modeles/Modele.php';
$modele = new Modele();
//On charge le model demandé
$AccueilModel = $modele->loadModel('Recherche');




/* Instructions */

$resultat = $AccueilModel->recuperer_res();






//On inclut la vue
include 'vues/accueilVue.php';
?>
