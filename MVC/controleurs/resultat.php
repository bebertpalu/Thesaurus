<?php
$error = "";
if(isset($_POST['keyword']) && !empty($_POST['keyword'])) {

	include(dirname(__FILE__).'/../modeles/resultat.php');
	
	if(isset($_POST['vue']) && $_POST['vue'] == "vue1"){
		   include(dirname(__FILE__).'/../vues/vue1.php');
	}
	
	if(isset($_POST['vue']) && $_POST['vue'] == "vue2"){
		  include(dirname(__FILE__).'/../vues/vue2.php');
	}else{
	   $error = $error."Vous devez selectionner une vue\n";
	   include(dirname(__FILE__).'/../controleurs/recherche.php');
	}

}
else {
    $error = $error."Vous devez saisir un terme dans le champs recherche\n";
    // On réaffiche le formulaire de connexion
    include(dirname(__FILE__).'/../controleurs/recherche.php');
}

?>