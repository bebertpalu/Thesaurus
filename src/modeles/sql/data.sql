/*
 * Auteur : Abdelhamid Belarbi
 * Script de remplissage de la base.
 */







CREATE OR REPLACE Procedure nouveauMicrothesaurus (libelle IN VARCHAR2, 
												   mtConcept IN VARCHAR2,
												   tgLibelle IN VARCHAR2,)
IS
BEGIN
	INSERT INTO Descripteur 
	VALUES (libelle,
			(SELECT REF(m) FROM Microthesaurus m WHERE m.concept = mtConcept),
			NULL, NULL, NULL, NULL);
END;
/

INSERT INTO Microthesaurus VALUES ('Corps Orbitant', NULL);
INSERT INTO Microthesaurus VALUES ('Galaxies', NULL);
/


CREATE VIEW CorpsOrbitantMT AS 
SELECT REF(m) "REF"
FROM Microthesaurus m
WHERE m.concept = 'Corps Orbitant';


INSERT INTO Descripteur VALUES 
('Aérolithe', (SELECT REF FROM CorpsOrbitantMT), NULL, NULL, NULL, NULL);



Ceci est le thésaurus comme il doit apparaitre en liste par microthesaurus.

Corps Orbitant Autour d'une étoile
	aerolithe (aerolithe)
	asteroide
	comete
	lune
	satellite 
		satellite artificiel
		satellite naturel
	planete
		planete tellurique
			planete Terre (la planete bleue, Terre, Monde)
			planete Mars (la planete rouge)
			planete Venus
		planete gazeuse (géante gazeuse, géante jovienne)
			planete Jupiter
			planete Saturne
			planete Pluton
		planete naine
		

Galaxies
	astre (corps celeste)
	nébuleuse
	amas galactique
	galaxie
		voie lactée (Notre galaxie, la Galaxie)
	radiogalaxie
	
