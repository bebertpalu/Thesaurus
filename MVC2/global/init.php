<?php
// Utilisation et démarrage des sessions
session_start();

// Inclusion du fichier de configuration (qui définit des constantes)
include_once 'config.php';


// Inclusion de Pdo2, potentiellement utile partout
include(dirname(__FILE__).'/../libs/pdo2.php');
?>