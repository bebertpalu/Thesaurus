<?php
/**
  * @author Abdelhamid Belarbi
  * Effectue la recherche du libellé passé dans la variable $_GET.
  */

require_once 'controleurs/libs/Smarty.class.php';
require_once 'modeles/descripteur.class.php';

$template = new Smarty();

if (!empty($_GET['libelle']))
{
	$resultats = Descripteur::rechercher($_GET['libelle']);
}
else
{
	$resultats = array();
}


$template->assign('resultats', $resultats);
$template->display('vues/resultat.vue.html');
?>