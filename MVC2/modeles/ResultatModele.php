<?php
Class ResultatModele extends Modele {

 	public function __construct() 
 	{
 		parent::__construct();
 		//die(var_dump($this));
 	}

 	function exemple_requete($keyword) {
 		$resultat = array(
 			'keyword'=> $keyword,
 			'resultat' => ''
 			);

 		$requete = $this->pdo->query("SELECT * FROM TEST_BDD");
 		// PDO::FETCH_OBJ : retourne un objet anonyme avec les noms de propriétés qui correspondent 
		// aux noms des colonnes retournés dans le jeu de résultats 
		$resultat['resultat'] = $requete->fetch(PDO::FETCH_ASSOC);

		return $resultat;
	}


	function exemple_concret_model() {

		$requete = $pdo->prepare("SELECT id FROM membres
			WHERE
			nom_utilisateur = :nom_utilisateur AND 
			mot_de_passe = :mot_de_passe AND
			hash_validation = ''");

		$requete->bindValue(':nom_utilisateur', $nom_utilisateur);
		$requete->bindValue(':mot_de_passe', $mot_de_passe);
		$requete->execute();
		
		if ($result = $requete->fetch(PDO::FETCH_ASSOC)) {
		
			$requete->closeCursor();
			return $result['id'];
			$requete = "Voici le résultat !";
			return $requete;
		}
		return false;
	}

}