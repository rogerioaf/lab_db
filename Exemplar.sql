-- DROP TABLE EXEMPLAR CASCADE CONSTRAINTS;
CREATE TABLE EXEMPLAR (
	NUM_EXEMPLAR SMALLINT NOT NULL ,
	ISBN NUMBER(13) NOT NULL REFERENCES OBRA(ISBN) 
		ON DELETE CASCADE ,
	NUM_EDICAO SMALLINT NOT NULL,
	ANO_PUBLICACAO SMALLINT NOT NULL,
	IDIOMA_EXEMPLAR VARCHAR2(20) NOT NULL,
	TITULO_EXEMPLAR VARCHAR2(100) NOT NULL,
	QTDE_PAGINAS SMALLINT NOT NULL,
	TIPO_MIDIA VARCHAR2(25) NOT NULL,
	VL_PAGO_EXEMPLAR NUMBER(8,2),
	TIPO_AQUISICAO VARCHAR2(25) NOT NULL,
	SITUACAO_EXEMPLAR VARCHAR2(15) NOT NULL,
	CATEGORIA_EXEMPLAR CHAR(12) NOT NULL 
);

ALTER TABLE EXEMPLAR ADD CONSTRAINT PKEDITORA PRIMARY KEY (NUM_EXEMPLAR,ISBN);
ALTER TABLE EXEMPLAR ADD COD_EDITORA SMALLINT REFERENCES EDITORA (COD_EDITORA);
