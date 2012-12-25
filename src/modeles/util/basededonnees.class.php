<?php
/**
  * @author : Abdelhamid 
  * Classe simple permettant d'utiliser une base de données Oracle.
  */

class BaseDeDonnees extends PDO
{
	private $nomBdd;
	private $utilisateur;
	private $motDePasse;

	public function __construct()
	{
		$nomBdd = 'localhost/XE';
		$utilisateur = 'system';
		$motDePasse = 'root';	
	}

	private function connecter()
	{
		try
		{
			parent::__construct('oci:dbname='.$this->urlBdd, $this->utilisateur, $this->motDePasse);
		}
		catch (Exception $e)
		{
			echo 'Connexion à la base de données impossible';
			die();
		}
	}

	private function deconnecter()
	{
		if ($this)
			$this::close();
	}

	public function executerSansResultat($sql)
	{}

	public function executerAvecResultat($sql)
	{
		$this->connecter();
		$resultat = $this->query($sql);
		$ret = array();

		if ($resultat)
		{
			$ret = $resultat->fetchAll(PDO::FETCH_OBJ);
			$resultat->closeCursor();
		}

		$this->deconnecter();
		return $ret;
	}
}
?>