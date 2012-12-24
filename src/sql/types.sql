/*
 * Auteur : Abdelhamid Belarbi
 * Script de création des types.
 */

CREATE OR REPLACE TYPE Terme_t AS OBJECT
(
    libelle VARCHAR(50)
)
NOT FINAL NOT INSTANTIABLE;
/

-- Créations de types incomplets pour les références en arrière.
CREATE OR REPLACE TYPE NonDescripteur_t UNDER Terme_t ();
/
CREATE OR REPLACE TYPE Descripteur_t UNDER Terme_t ();
/

-- Les tables imbriquées.
CREATE OR REPLACE TYPE ListeNonDescripteurs_t AS TABLE OF REF NonDescripteur_t;
/
CREATE OR REPLACE TYPE ListeDescripteurs_t AS TABLE OF REF Descripteur_t;
/

-- On peut maintenant bien définir les types.
ALTER TYPE Descripteur_t ADD ATTRIBUTE
(
    TG REF Descripteur_t,
    EP ListeNonDescripteurs_t,
    TA ListeDescripteurs_t,
    TS ListeDescripteurs_t
)
CASCADE;

ALTER TYPE NonDescripteur_t ADD ATTRIBUTE
(
    EM REF Descripteur_t
)
CASCADE;

CREATE OR REPLACE TYPE Microthesaurus_t AS OBJECT
(
    concept VARCHAR(50),
    descripteurs ListeDescripteurs_t
);
/

-- Une table imbriquée pour stocker les microthésaurus.
CREATE OR REPLACE TYPE ListeMicrothesaurus_t AS TABLE OF REF Microthesaurus_t;
/

CREATE OR REPLACE TYPE Thesaurus_t AS OBJECT
(
	titre VARCHAR(100),
	microthesaurus ListeMicrothesaurus_t
);
/