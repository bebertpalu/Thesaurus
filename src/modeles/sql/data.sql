/*
 * Auteur : Issame Amal et Abdelhamid Belarbi
 * Script de remplissage de la base (voir rapport).
 */
 
-- Enregistre le lien entre le microthésaurus et le descripteur.
CREATE OR REPLACE PROCEDURE lienMTetDESC (libelle IN VARCHAR2, mtConcept IN VARCHAR2)
IS
BEGIN
	UPDATE Descripteur SET MT=(SELECT REF(m) FROM Microthesaurus m WHERE m.concept=mtConcept);
	
	INSERT INTO THE (SELECT descripteurs FROM Microthesaurus WHERE concept=mtConcept)
	(SELECT REF(d) FROM Descripteur d WHERE d.libelle=libelle);
END;
/

-- Enregistre le lien entre le terme général et le terme spécifique.
CREATE OR REPLACE PROCEDURE lienTGetTS (libelleTG IN VARCHAR2, libelleTS IN VARCHAR2)
IS
BEGIN
	UPDATE Descripteur
	SET TG=(SELECT REF(d) FROM Descripteur d WHERE d.libelle=libelleTG)
	WHERE libelle=libelleTS;
	
	INSERT INTO THE (SELECT TS FROM Descripteur WHERE libelle=libelleTG)
	(SELECT REF(d) FROM Descripteur d WHERE d.libelle=libelleTS);
END;
/


-- Enregistre le lien entre le descripteur et le nondescripteur qui est synonyme.
CREATE OR REPLACE PROCEDURE lienEMetEP (libelleDesc IN VARCHAR2, libelleNDesc IN VARCHAR2)
IS
BEGIN
	UPDATE NonDescripteur 
	SET EM=(SELECT REF(d) FROM Descripteur d WHERE d.libelle=libelleDesc)
	WHERE libelle=libelleNDesc;
	
	INSERT INTO THE (SELECT EP FROM Descripteur WHERE libelle=libelleDesc)
	(SELECT REF(nd) FROM NonDescripteur nd WHERE nd.libelle=libelleNDesc);
END;
/

-- Le premier microthésaurus.
INSERT INTO Microthesaurus VALUES ('Corps orbitant', ListeDescripteurs_t());

INSERT INTO Descripteur VALUES 
('Aerolithe', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Satellite', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Satellite artificiel', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Satellite naturel', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete tellurique', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete Terre', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete Mars', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete Vénus', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete gazeuse', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete Jupiter', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete Saturne', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());
INSERT INTO Descripteur VALUES 
('Planete naine', NULL, NULL, ListeNonDescripteurs_t(), ListeDescripteurs_t(), ListeDescripteurs_t());

INSERT INTO NonDescripteur VALUES ('Aerolite', NULL);
INSERT INTO NonDescripteur VALUES ('Planete rocheuse', NULL);
INSERT INTO NonDescripteur VALUES ('Planete interne', NULL);
INSERT INTO NonDescripteur VALUES ('La planete bleue', NULL);
INSERT INTO NonDescripteur VALUES ('Terre', NULL);
INSERT INTO NonDescripteur VALUES ('Monde', NULL);
INSERT INTO NonDescripteur VALUES ('La planete rouge', NULL);
INSERT INTO NonDescripteur VALUES ('Geante gazeuse', NULL);
INSERT INTO NonDescripteur VALUES ('Geante jovienne', NULL);
COMMIT;

EXECUTE lienMTetDESC('Aerolithe', 'Corps orbitant');
EXECUTE lienMTetDESC('Satellite', 'Corps orbitant');
EXECUTE lienMTetDESC('Satellite artificiel', 'Corps orbitant');
EXECUTE lienMTetDESC('Satellite naturel', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete tellurique', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete Terre', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete Mars', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete Vénus', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete gazeuse', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete Jupiter', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete Saturne', 'Corps orbitant');
EXECUTE lienMTetDESC('Planete naine', 'Corps orbitant');
COMMIT;

EXECUTE lienTGetTS('Satellite', 'Satellite artificiel');
EXECUTE lienTGetTS('Satellite', 'Satellite naturel');
EXECUTE lienTGetTS('Planete', 'Planete tellurique');
EXECUTE lienTGetTS('Planete', 'Planete gazeuse');
EXECUTE lienTGetTS('Planete', 'Planete naine');
EXECUTE lienTGetTS('Planete tellurique', 'Planete Terre');
EXECUTE lienTGetTS('Planete tellurique', 'Planete Mars');
EXECUTE lienTGetTS('Planete tellurique', 'Planete Venus');
EXECUTE lienTGetTS('Planete tellurique', 'Planete Mars');
EXECUTE lienTGetTS('Planete gazeuse', 'Planete Jupiter');
EXECUTE lienTGetTS('Planete gazeuse', 'Planete Saturne');
COMMIT;

EXECUTE lienEMetEP('Aerolithe', 'Aerolite');
EXECUTE lienEMetEP('Planete tellurique', 'Planete rocheuse');
EXECUTE lienEMetEP('Planete tellurique', 'Planete interne');
EXECUTE lienEMetEP('Planete Terre', 'La planete bleue');
EXECUTE lienEMetEP('Planete Terre', 'Terre');
EXECUTE lienEMetEP('Planete Terre', 'Monde');
EXECUTE lienEMetEP('Planete Mars', 'La planete rouge');
EXECUTE lienEMetEP('Planete gazeuse', 'Geante gazeuse');
EXECUTE lienEMetEP('Planete gazeuse', 'Geante jovienne');
COMMIT;

/*
Corps orbitant
        Aerolithe (aerolite)
        Asteroide 
        Satellite 
                Satellite artificiel
                Satellite naturel
        Planete
                Planete tellurique (planete rocheuse, planete interne)
                        Planete Terre (la planete bleue, Terre, Monde)
                        Planete Mars (la planete rouge)
                        Planete Venus
                Planete gazeuse (geante gazeuse, geante jovienne)
                        Planete Jupiter
                        Planete Saturne
                Planete naine
                
Galaxies
         Astre (corps celeste)
         Nebuleuse
         Amas galactique
         Galaxie
                 Voie lactee (Notre galaxie, la Galaxie)
         Radiogalaxie

*/
