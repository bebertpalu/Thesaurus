DROP TYPE Microthesaurus_t;
DROP TYPE Descripteur_t FORCE;
DROP TYPE NonDescripteur_t FORCE;
DROP TYPE ListeNonDescripteurs_t FORCE;
DROP TYPE ListeDescripteurs_t FORCE;
DROP TYPE Terme_t FORCE;

DROP TABLE Descripteur;
DROP TABLE NonDescripteur;
DROP TABLE Microthesaurus;

/* Création des types. */
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

-- Tables imbriquées.
CREATE OR REPLACE TYPE ListeNonDescripteurs_t AS VARRAY(10) OF REF NonDescripteur_t;
/
CREATE OR REPLACE TYPE ListeDescripteurs_t AS VARRAY(10) OF REF Descripteur_t;
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