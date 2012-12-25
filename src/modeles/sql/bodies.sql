/*
 * Auteur : Abdelhamid Belarbi
 * Script de déclaration et définition des corps des classes.
 */


-- Type de retour, table de Varchar.
CREATE OR REPLACE TYPE VarcharTab_t AS TABLE OF VARCHAR2(50);
/

ALTER TYPE Descripteur_t 
    ADD MEMBER FUNCTION getTG RETURN VARCHAR2
    --ADD MEMBER FUNCTION getTS RETURN VarcharTab_t,
    --ADD MEMBER FUNCTION getEP RETURN VarcharTab_t,
    --ADD MEMBER FUNCTION getMT RETURN VARCHAR2
CASCADE;



CREATE OR REPLACE TYPE BODY Descripteur_t AS
	MEMBER FUNCTION getTG RETURN VARCHAR2 IS
	BEGIN
		RETURN DEREF(SELF.TG).libelle;
	END;
END;
/