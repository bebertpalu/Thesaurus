<?php
    include_once('Terme.class.php')

    class NonDescripteur extends Terme
    {
        public function __construct($libelle)
        {
            parent::__construct($libelle);
        }
    }
?>