<?php
/**
  * @author Abdelhamid Belarbi
  * Permet l'affichage du thésaurus par liste alphabétique.
  */

require_once 'controleurs/libs/Smarty.class.php';
require_once 'modeles/descripteur.class.php';

$template = new Smarty();

if (!empty($_GET['libelle']))
{

}
else
{
	$resultats = array();
}


$template->assign('resultats', $resultats);
$template->display('vues/resultat.vue.html');

?>
