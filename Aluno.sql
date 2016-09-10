CREATE TABLE ALUNO(
	COD_USUARIO INTEGER ,
	RA NUMBER(20) NOT NULL,
	DT_INGRESSO DATE NOT NULL,
	DT_PREVISTA_TERMINO DATE
	COD_CURSO INTEGER ,
	FOREIGN KEY (COD_CURSO) REFERENCES CURSO (COD_CURSO) ON DELETE CASCADE,
	FOREIGN KEY (COD_UAUARIO) REFERENCES USUARIO (COD_USUARIO) ON DELETE CASCADE,
	UNIQUE(RA)
);