/* Obtendo informações com o SELECT */
SELECT nome FROM funcionario;
SELECT nome, cidade FROM funcionario;
SELECT * FROM funcionario;
SELECT * FROM produto;

/* Funções aritméticas na instrução SELECT */
SELECT nome, salario FROM funcionario;
SELECT nome, salario, salario+50 AS "Abono de férias" FROM funcionario;
SELECT nome, salario, salario+(salario*0.2) AS Abono FROM funcionario;
SELECT nome, salario, salario-(salario*0.2) AS Desconto FROM funcionario;

SELECT * FROM venda;
SELECT produto_vend, quantidade, quantidade+50 AS "Estoque Futuro" FROM venda;

/* Concatenação */
SELECT nome, cargo FROM funcionario;
SELECT nome + ' trabalha como: ' + cargo AS "Nome e função" FROM funcionario;
SELECT nome + ' mora em ' + cidade AS 'Nome e cidade' FROM funcionario;

SELECT CONCAT(nome, ' recebe o salário de: R$ ', salario) AS 'Nome e salário' FROM funcionario;

/* Exibindo valores únicos (Distintos) */
SELECT marca_vend FROM venda;
SELECT DISTINCT marca_vend FROM venda;

/* Exibindo a estrutura de uma tabela */
/* A instução sp_help (SQL Server) é usada para retornar informações sobre um objeto de BD */
sp_help funcionario;

/* Restringindo a exibição de dados - WHERE */
SELECT * FROM funcionario;
SELECT * FROM funcionario WHERE salario > 1250;
SELECT * FROM funcionario WHERE salario >= 1250;
SELECT nome, nascimento, salario FROM funcionario WHERE salario>3500;

SELECT nome, nascimento, cargo FROM funcionario WHERE cargo='Vendedor';
SELECT * FROM funcionario WHERE cidade='São Paulo';
SELECT * FROM funcionario WHERE data_contratacao='2010-10-10';
SELECT * FROM funcionario WHERE data_contratacao>='2010-10-10';

/* Especificando um intervalo a ser testado - BETWEEN */
SELECT * FROM funcionario;
SELECT * FROM funcionario WHERE salario BETWEEN 1500 AND 2500;
SELECT * FROM funcionario WHERE data_contratacao BETWEEN '2009-01-01' AND '2010-10-10';
SELECT * FROM funcionario WHERE salario NOT BETWEEN 1500 AND 2500;

SELECT * FROM produto;
SELECT nome_prod, estoque FROM produto WHERE estoque BETWEEN 10 AND 50;

/* Especificando uma lista a ser testada */
/* Cláusula IN é usada para determinar se um valor especificado corresponde a qualquer valor em uma subconsulta ou uma lista */
SELECT * FROM funcionario;
SELECT * FROM funcionario WHERE salario IN (1250, 2500, 3500);
SELECT * FROM funcionario WHERE id NOT IN (1, 2, 3);
SELECT * FROM funcionario WHERE id <> 1 AND id <> 2 AND id <> 3;
SELECT * FROM funcionario WHERE id != 1 AND id != 2 AND id <> 3;

/* Operador LIKE - Testando uma cadeia de caracteres */
/* Determina se uma cadeia de caracteres específica corresponde a um padrão especificado */
/* %   - Substitui de zero a muitos caracteres */
/* _   - Substitui apenas um caractere */
/* []  - Qualquer caractere único no intervalo especificado. Ex. [a-c] */
/* [^] - Qualquer caractere único que não esteja no intervalo especificado. Ex.[^a-c] */
SELECT * from funcionario;
SELECT * from funcionario WHERE nome LIKE 'Maria%';
SELECT * FROM funcionario WHERE nome LIKE '%silva%';
SELECT * FROM funcionario WHERE nome LIKE '___s%';
SELECT * FROM funcionario WHERE data_contratacao LIKE '2015%';
SELECT * FROM funcionario WHERE nome LIKE '[A-C]%';
SELECT * FROM funcionario WHERE NOME like '[^A-C]%';

/* Valores nulos - Valor não aplicavel */
SELECT * FROM venda;
SELECT * from venda WHERE quantidade IS NULL;

/* Operadores lógicos */
SELECT * FROM venda;
SELECT * FROM venda WHERE quantidade>100 AND marca_vend='Dolly';

SELECT * FROM funcionario;
SELECT * FROM funcionario WHERE cargo='Gerente' AND cidade='São Paulo';
SELECT * FROM funcionario WHERE cargo='Vendedor' OR cidade='São Paulo';
SELECT * FROM funcionario WHERE cidade='São Paulo' AND salario>3000;
SELECT * FROM funcionario WHERE cargo='Vendedor' OR cargo='Gerente';
SELECT * FROM funcionario WHERE (cargo='Gerente' OR cargo='Vendedor') AND salario>2500;
SELECT * FROM funcionario WHERE (data_contratacao<'2010-01-01' OR data_contratacao<'2013-01-01') AND cidade='São Paulo';
SELECT * FROM funcionario WHERE NOT cargo='Gerente';
SELECT * FROM funcionario WHERE cargo!='Gerente';
SELECT * FROM funcionario WHERE salario NOT IN (1500, 2500, 3500);
SELECT * FROM funcionario WHERE cargo NOT IN ('Motorista', 'Gerente');

/* Classificando dados retornados em uma consulta - ORDER BY ASC | DESC */
SELECT * FROM funcionario;
SELECT * FROM funcionario ORDER BY id DESC;
SELECT * FROM funcionario ORDER BY salario DESC;
SELECT * FROM funcionario WHERE salario>2500 ORDER BY salario DESC;
SELECT * FROM funcionario WHERE salario NOT BETWEEN 1500 AND 2500 ORDER BY salario DESC;
SELECT * FROM funcionario ORDER BY 4 DESC;
SELECT nome, nascimento, salario, (salario*0.35) AS Abono FROM funcionario ORDER BY Abono DESC;
