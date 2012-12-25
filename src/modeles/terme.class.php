<?php
/**
  * @author Abdelhamid Belarbi
  * Implémente la classe descripteur.
  */

abstract class Terme
{
	protected $libelle;

	public function __construct($lib)
	{
		$this->libelle = $lib;
	}
}
?>