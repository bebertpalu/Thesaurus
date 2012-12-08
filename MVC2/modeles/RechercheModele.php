<?php
Class RechercheModele extends Modele {

 	public function __construct() {}

 	function exemple_requete($keyword) {

		$requete = array(
					'keyword' => $keyword,
					'resultat' => "Voici le résultat !");
	
		return $requete;
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