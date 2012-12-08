<?php
 
if(isset($_POST['keyword']) && !empty($_POST['keyword'])) 
{
	include_once 'modeles/Modele.php';
	$modele = new Modele();
	//On charge le model demandé
	$RechercheModel = $modele->loadModele('Recherche');


	$resultat = $RechercheModel->exemple_requete($_POST['keyword']);

	//On inclut la vue
	include 'vues/resultatVue.php';

}
else 
{
    // On réaffiche la page de recherche
    include 'vues/accueilVue.php';
}

?>
