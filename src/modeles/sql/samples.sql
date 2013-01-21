-- Terme général du terme 'Terre' qui est un descripteur.
-- Renvoie 'Planete Tellurique'
SELECT d.TG.libelle
FROM Descripteur d
WHERE d.libelle = 'Terre';


-- Quels sont les non-descripteurs associés au descripteur 'Planete gazeuse' ?
-- Renvoie 'geante gazeuse' et 'geante jovienne'
SELECT nd.libelle
FROM (SELECT THE d.EP 
      FROM Descripteur d 
      WHERE d.libelle='Planete gazeuse');


-- Combien de termes dans le microthesaurus 'Corps Orbitant' ?
-- Renvoie je sais pas combien.
SELECT COUNT(*)
FROM (SELECT THE m.descripteurs
      FROM Microthesaurus m
      WHERE m.concept='Corps orbitant');

-- À quel microthesaurus appartient le terme 'Satellite naturel' ?
-- Renvoie 'Corps orbitant'
SELECT d.MT.concept
FROM Descripteur d
WHERE d.libelle = 'Satellite naturel';