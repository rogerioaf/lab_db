CREATE TABLE FUNCIONARIO(
	COD_USUARIO INETEGER PRIMARY KEY,
	COD_FUNCIONAL INTEGER NOT NULL,
	CARGO VARCHAR2(80) NOT NULL.
	DT_ADMISSAO DATE NOT NULL,
	DT_DESLIGAMENTO DATE,
	UNIQUE(COD_FUNCIONAL),
	FOREIGN KEY (COD_USUARIO) REFERENCES USUARIO (COD_USUARIO) ON DELETE CASCADE
);