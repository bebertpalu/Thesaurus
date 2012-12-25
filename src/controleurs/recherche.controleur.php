<?php
/**
  * @author Abdelhamid Belarbi
  * Effectue la recherche du libellé passé dans la variable $_POST.
  */

require_once 'controleurs/libs/Smarty.class.php';
require_once 'modeles/descripteur.class.php';

$template = new Smarty();

if (!empty($_POST['libelle']))
{
	$resultats = Descripteur::rechercher($_POST['libelle']);
}
else
{
	$resultats = array();
}


$template->assign('resultats', $resultats);
$template->display('vues/resultat.vue.html');
?>