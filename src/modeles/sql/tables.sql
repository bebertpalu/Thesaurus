/*
 * Auteur : Abdelhamid Belarbi
 * Script de création des tables.
 */

CREATE TABLE Descripteur OF Descripteur_t
	NESTED TABLE EP STORE AS EP_tab
	NESTED TABLE TA STORE AS TA_tab
	NESTED TABLE TS STORE AS TS_tab;

CREATE TABLE NonDescripteur OF NonDescripteur_t;

CREATE TABLE Microthesaurus OF Microthesaurus_t
	NESTED TABLE descripteurs STORE AS descripteurs_tab;

CREATE TABLE Thesaurus OF Thesaurus_t 
	NESTED TABLE microthesaurus STORE AS microthesaurus_tab;

CREATE TABLE Utilisateur
(
    login VARCHAR(50),
    mdp VARCHAR(128)
);