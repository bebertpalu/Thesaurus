/*
 * Auteur : Abdelhamid Belarbi
 * Script de création des types.
 */

CREATE OR REPLACE TYPE Terme_t AS OBJECT
(
    libelle VARCHAR2(50)
)
NOT FINAL NOT INSTANTIABLE;
/

-- Créations de types incomplets pour les références en arrière.
CREATE OR REPLACE TYPE NonDescripteur_t UNDER Terme_t ();
/
CREATE OR REPLACE TYPE Descripteur_t UNDER Terme_t ();
/

-- Les tables imbriquées pour stocker des listes de termes.
CREATE OR REPLACE TYPE ListeNonDescripteurs_t AS TABLE OF REF NonDescripteur_t;
/
CREATE OR REPLACE TYPE ListeDescripteurs_t AS TABLE OF REF Descripteur_t;
/

-- Type Microthesaurus.
CREATE OR REPLACE TYPE Microthesaurus_t AS OBJECT
(
    concept VARCHAR2(50),
    descripteurs ListeDescripteurs_t
);
/

-- Type Descripteur_t
ALTER TYPE Descripteur_t ADD ATTRIBUTE
(
    MT REF Microthesaurus_t,
    TG REF Descripteur_t,
    EP ListeNonDescripteurs_t,
    TA ListeDescripteurs_t,
    TS ListeDescripteurs_t
)
CASCADE;

-- Type NonDescripteur_t
ALTER TYPE NonDescripteur_t ADD ATTRIBUTE
(
    EM REF Descripteur_t
)
CASCADE;


-- Une table imbriquée pour stocker les microthésaurus.
CREATE OR REPLACE TYPE ListeMicrothesaurus_t AS TABLE OF REF Microthesaurus_t;
/

-- Type Thesaurus_t
CREATE OR REPLACE TYPE Thesaurus_t AS OBJECT
(
	titre VARCHAR2(100),
	microthesaurus ListeMicrothesaurus_t
);
/