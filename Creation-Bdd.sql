-- On suppose que la base de données est crée et que l'on y est connecté.
-- Création des types.
CREATE TYPE Terme_t 
(
    libelle VARCHAR(50)
);

CREATE TYPE Descripteur_t UNDER Terme_t
(
    EP LIST(REF NonDescripteur_t),
    TA LIST(REF Descripteur_t),
    TS LIST(REF Descripteur_t),
    TG REF Descripteur_t
);

CREATE TYPE NonDescripteur_t UNDER Terme_t
(
    EM REF Descripteur_t
);

CREATE TYPE Microthesaurus_t
(
    concept VARCHAR(50),
    descripteurs LIST(REF Descripteur_t)
);

CREATE TYPE Thesaurus_t
(
    titre VARCHAR(50),
    microthesaurus LIST(REF Microthesaurus_t)
);

-- Création des tables.
CREATE TABLE Descripteur OF Descripteur_t;
CREATE TABLE NonDescripteur OF NonDescripteur_t;
CREATE TABLE Microthesaurus OF Microthesaurus_t;
CREATE TABLE Thesaurus OF Thesaurus_t;