/*
 * Auteur : Abdelhamid Belarbi
 * Suppression de tout les types et de toutes les tables créées.
 */

DROP TYPE Thesaurus_t FORCE;
DROP TYPE Microthesaurus_t FORCE;
DROP TYPE Descripteur_t FORCE;
DROP TYPE NonDescripteur_t FORCE;
DROP TYPE ListeNonDescripteurs_t FORCE;
DROP TYPE ListeDescripteurs_t FORCE;
DROP TYPE ListeMicrothesaurus_t FORCE;
DROP TYPE VarcharTab_t FORCE;
DROP TYPE Terme_t FORCE;


DROP TABLE Thesaurus;
DROP TABLE Microthesaurus;
DROP TABLE Descripteur;
DROP TABLE NonDescripteur;
DROP TABLE Utilisateur;
