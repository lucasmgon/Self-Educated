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
/* A instução sp_help (SQL Server) é usada para retornar informações sobre um objeto de BD. */
sp_help funcionario;

/* Restringindo a exibição de dados - WHERE*/
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
