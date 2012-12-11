<?php

Class Modele {
	
	public $pdo;

	public function __construct() 
	{
		$this->pdo = PDO2::getInstance();
	}

	function loadModel($nameModel) 
	{
		$nameModel = ucfirst($nameModel).'Modele';
		include "modeles/$nameModel.php";
		$model = new $nameModel();
		//die(var_dump($model));
		return $model;
	}

}

?>