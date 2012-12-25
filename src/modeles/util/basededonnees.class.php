<?php
/**
  * @author : Abdelhamid 
  * Classe simple permettant d'utiliser une base de données Oracle.
  */

class BaseDeDonnees extends PDO
{
	private const $nomBdd = 'localhost/XE';
	private const $utilisateur = 'system';
	private const $motDePasse = 'root';

	public function __construct()
	{}

	public function connecter()
	{
		parent::__construct('oci:dbname='.$this->urlBdd,
							$this->utilisateur, 
							$this->motDePasse);
	}

	public function deconnecter()
	{
		$this::close();
	}
}
?>