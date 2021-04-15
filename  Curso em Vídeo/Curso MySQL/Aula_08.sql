SELECT nome, carga, ano FROM cursos ORDER BY ano, nome;

SELECT nome, descricao, carga FROM cursos WHERE ano <= '2015' ORDER BY ano, nome;

SELECT nome, ano FROM cursos WHERE ano BETWEEN '2014' AND '2016';

SELECT nome, descricao, ano FROM cursos WHERE ano IN ('2014', '2016', '2020') ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos WHERE carga > '5' OR totaulas < '30';