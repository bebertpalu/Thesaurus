<?php
/**
  * @author Abdelhamid Belarbi
  * Implémente la classe descripteur.
  */

include_once 'terme.class.php';
include_once 'util/basededonnees.class.php';

class Descripteur extends Terme
{
	private MT; // Microthésaurus.
	private TG; // Terme général.
	private EP; // Employé pour.
	private TA; // Termes associés.
	private TS; // Termes spécifiques.

	private bdd;

	public function __construct($lib)
	{
		parent::__construct($lib);
		$this->bdd = new BaseDeDonnees();
	}

	public function charger()
	{

	}
}
?>