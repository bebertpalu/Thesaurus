<?php
/**
  * @author Bob !
  * Permet l'affichage du thésaurus par liste permutée.
 **/

require_once 'controleurs/libs/Smarty.class.php';
require_once 'modeles/descripteur.class.php';

$template = new Smarty();
$resultats = array();

if(isset($_POST['keyword']) && !empty($_POST['keyword']))
{
	/* 	
		La fonction Descripteur::rechercher() actuelle est idéale pour la recherche par liste permutée 
		mais pour plus de compréhension je l'ai renommé. 
	*/

	// $resultats = Descripteur::rechercheListePermutee($_POST['keyword']);
	$template->assign('resultats', $resultats);
	$template->display('vues/resultat.vue.html');
}
else 
{
	// Pour déférencier une recherche non fructueuse et une erreur de saisie
	$template->display('vues/erreur.vue.html');
}



?>