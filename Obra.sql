-- DROP TABLE OBRA CASCADE CONSTRAINTS;
CREATE TABLE OBRA (
	ISBN 			NUMBER (13) PRIMARY KEY,
	TITULO_ORIGINAL VARCHAR2(75) NOT NULL,
	CLASSIFICACAO 	VARCHAR2(30) NOT NULL,
	ASSUNTO 		VARCHAR2(30),
	IDIOMA_ORIGINAL	VARCHAR2(20)	
	);