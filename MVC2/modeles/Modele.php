<?php

Class Modele {
	
	public $pdo;

	public function __construct() 
	{
		$pdo = PDO2::getInstance();
	}

	function loadModele($nameModel) 
	{
		$nameModel = ucfirst($nameModel).'Modele';
		include "modeles/$nameModel.php";
		$model = new $nameModel();
		return $model;
	}

}

?>