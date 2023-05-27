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
