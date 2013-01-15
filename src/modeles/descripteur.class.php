<?php
/**
  * @author Abdelhamid Belarbi
  * Implémente la classe descripteur.
  */

require_once 'terme.class.php';
require_once 'util/basededonnees.class.php';

class Descripteur extends Terme
{
	private $MT; // Microthésaurus.
	private $TG; // Terme général.
	private $EP; // Employé pour.
	private $TA; // Termes associés.
	private $TS; // Termes spécifiques.

	private $bdd;

	public function __construct($lib)
	{
		parent::__construct($lib);
		$this->bdd = new BaseDeDonnees();
	}

	public function charger()
	{
		$sql = "SELECT * FROM Descripteur WHERE libelle = $this->libelle";
		$resultat = $this->bdd->executerAvecResultat($sql);

		if (count($resultat) != 0)
		{
			$this->MT = $resultat->MT;
			$this->TG = $resultat->TG;
			$this->EP = $resultat->EP;
			$this->TA = $resultat->TA;
			$this->TS = $resultat->TS;
		}
	}

	public static function rechercher($libelle)
	{
		$sql = "SELECT * FROM Descripteur"; // WHERE libelle LIKE %$libelle%";
		$bdd = new BaseDeDonnees();
		return $bdd->executerAvecResultat($sql);
	}

	public function __toString()
	{
		return $this->libelle;
	}
}
?>
