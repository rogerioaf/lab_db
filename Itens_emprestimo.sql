-- DROP TABLE ITENS_EMPRESTIMO CASCADE CONSTRAINTS;
CREATE TABLE ITENS_EMPRESTIMO(
	NUM_EMPRESTIMO INTEGER NOT NULL REFERENCES EMPRESTIMO ON DELETE CASCADE,
	NUM_EXEMPLAR SMALLINT NOT NULL,
	ISBN NUMBER(13) NOT NULL,
	DT_PREVISTA_DEVOLUCAO TIMESTAMP NOT NULL,
	DT_DEVOLUCAO TIMESTAMP,
	VL_MULTA_ITEM NUMBER(8,2),
	SITUACAO_ITEM_EMPRESTADO CHAR(15) NOT NULL,
	PRIMARY KEY ( NUM_EMPRESTIMO,NUM_EXEMPLAR,ISBN),
	FOREIGN KEY (NUM_EXEMPLAR,ISBN) REFERENCES EXEMPLAR (NUM_EXEMPLAR,ISBN) ON DELETE CASCADE
);

-- RENOMENADO UMA COLUNA 
ALTER TABLE ITENS_EMPRESTIMO RENAME COLUMN DT_DEVOLUCAO TO DT_HORA_DEVOLUCAO;

-- RENOMEANDO UMA TABELA 
ALTER TABLE ITENS_EMPRESTIMO RENAME TO EMPRESTIMO_EXEMPLARES;

-- ADICIONANDO UMA RESTRICAO CHECK EM EMPRESTIMO EXEMPLARES
ALTER TABLE EMPRESTIMO_EXEMPLARES ADD CONSTRAINT CHK_SITU_EXEMPLAR CHECK ( SITUACAO_ITEM_EMPRESTADO IN ('DEVOLVIDO','PENDENTE','DANIFICADO','CANCELADO'));

