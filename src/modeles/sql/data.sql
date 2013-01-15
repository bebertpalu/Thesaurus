/*
 * Auteur : Abdelhamid Belarbi
 * Script de remplissage de la base (voir rapport).
 */
 
INSERT INTO Descripteur VALUES ('Aerolithe', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Satellite', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Satellite artificiel', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Satellite naturel', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete tellurique', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete Terre', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete Vénus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete gazeuse', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete Saturne', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Descripteur VALUES ('Planete naine', NULL, NULL, NULL, NULL, NULL);
COMMIT;

INSERT INTO Microthesaurus VALUES
('Corps orbitant', ListeDescripteurs_t(
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Aerolithe'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Satellite'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Satellite artificiel'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Satellite naturel'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete tellurique'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete Terre'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete Mars'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete Vénus'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete gazeuse'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete Jupiter'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete Saturne'),
				  (SELECT REF(d) FROM Descripteur d WHERE d.libelle='Planete naine')));
COMMIT;

