USE cadastro;

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

INSERT INTO cursos VALUES
('01', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('02', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('03', 'Photoshop', 'Dicas de Photoshop CC', '10', '08', '2014'),
('04', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('05', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('06', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('07', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('08', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('09', 'Cozinha Àrabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '05', '02', '2018');

UPDATE cursos SET nome = 'HTML5' WHERE id_curso = '1';

UPDATE cursos SET nome = 'PHP', ano = '2015' WHERE id_curso = '4';

UPDATE cursos SET nome = 'Java', carga = '40', ano = '2015' WHERE id_curso = '5' LIMIT 1;

DELETE FROM cursos WHERE id_curso = '8';

DELETE FROM cursos WHERE ano = '2018' LIMIT 2;

TRUNCATE TABLE cursos;