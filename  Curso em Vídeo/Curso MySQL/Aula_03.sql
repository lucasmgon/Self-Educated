CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoas(
	nome VARCHAR(30),
	idade TINYINT,
	sexo CHAR(1),
	peso FLOAT,
	altura FLOAT,
	nacionalidade VARCHAR(20),
	PRIMARY KEY(id_pessoa)
);

DESC pessoas;