<?php
 
 $error="";

if(isset($_POST['keyword']) && !empty($_POST['keyword'])) 
{
	include_once 'modeles/Modele.php';	
	$modele = new Modele();
	//On charge le model demandé
	$ResultatModel = $modele->loadModele('Resultat');


	$resultat = $ResultatModel->exemple_requete($_POST['keyword']);

	if(isset($_POST['vue']) && $_POST['vue'] == "vue1"){


		   include 'vues/resultat1Vue.php';
	}
	
	if(isset($_POST['vue']) && $_POST['vue'] == "vue2"){

		  include 'vues/resultat2Vue.php';
	}else{
		
	   $error = $error."Vous devez selectionner une vue\n";
	   include 'controleurs/rechercheControleur.php';
	}

}
else 
{
    $error = $error."Vous devez saisir un terme dans le champs recherche\n";
    // On réaffiche la page d'accueil
    include 'vues/accueilVue.php';
}

?>
