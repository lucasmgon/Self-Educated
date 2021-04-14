DESC pessoas;

ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10);

SELECT * FROM pessoas;

ALTER TABLE pessoas DROP COLUMN profissao;

ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas MODIFY COLUMN profissao VARCHAR(20) DEFAULT '';

ALTER TABLE pessoas CHANGE COLUMN profissao prof VARCHAR(20);

ALTER TABLE pessoas RENAME TO gafanhotos;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS cursos(
	nome VARCHAR(30) NOT NULL UNIQUE,
	descricao TEXT,
	carga INT UNSIGNED,
	totaulas INT UNSIGNED,
	ano YEAR DEFAULT '2016'
)DEFAULT CHARSET utf8;

DESC cursos;

ALTER TABLE cursos ADD COLUMN id_curso INT FIRST;

ALTER TABLE cursos ADD PRIMARY KEY(id_curso);

CREATE TABLE IF NOT EXISTS teste(
	id_teste INT,
	nome VARCHAR(50),
	idade INT
);

INSERT INTO teste VALUE ('01', 'Pedro', '22');

DROP TABLE IF EXISTS teste;