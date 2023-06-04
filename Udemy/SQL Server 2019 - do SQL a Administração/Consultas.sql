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

/* Manipulação de caracteres */
SELECT CONCAT('Olá Mundo!', ' tudo bem?') AS Resposta; /* Concatenação de caracteres */
SELECT CONCAT(nome, ' nasceu em: ', nascimento) AS Resposta FROM funcionario;

SELECT SUBSTRING('Olá mundo!', 1,4); /* Corta a String - Indica caractere inicial e final */
SELECT nome, SUBSTRING(nome, 1,8) AS Login FROM funcionario;

SELECT nome, LEN(nome) AS quantidade FROM funcionario; /* Contar a quantidade de caracteres */

SELECT REPLACE('Jack and Jue', 'J', 'Bl'); /* Trocar o caractere */
SELECT nome, REPLACE(nome, 'a','*') AS Troca FROM funcionario;

SELECT LOWER('Olá mundo'); /* Converter caracteres em minúsculo */
SELECT nome, LOWER(nome) AS Resposta FROM funcionario;

SELECT UPPER('Olá mundo'); /* Converter caracteres em maiúsculo */
SELECT nome, UPPER(nome) AS Resposta FROM funcionario;
SELECT nome, REPLACE(UPPER(nome), ' ','') AS Loggin FROM funcionario;
SELECT nome, REPLACE(LOWER(nome), ' ','') AS Loggin FROM funcionario;

SELECT LTRIM('   Espaços em brancos   '); /* Cortar espaços em brancos a esquerda da String */

SELECT RTRIM(LTRIM('   Espaços em brancos   ')); /* Cortar espaços em brancos a direita da String */

SELECT STUFF('Meu exemplo', 4, 0, 'maior'); /* Adicionar uma String dentro de outra */

/* Funções matemáticas */
SELECT ROUND(1322.56, -1); /* Arrendonamento */
SELECT ABS(-15); /* Transforma valores negativos em positivos */
SELECT RAND()*500; /* Randomiza valores */
SELECT id, nome, FLOOR(RAND()*500) as Senha FROM funcionario WHERE id=1;
SELECT SQRT(81) AS resultado; /* Calcula a raiz quadrada */
SELECT POWER(234, 2); /* Calcula a potencia */
SELECT FLOOR(220.22); /* Remove as casas decimais */

SELECT * FROM funcionario;
SELECT SUM(salario) AS Soma FROM funcionario;/* Retorna a soma do campo especificado */
SELECT AVG(salario) AS 'Média salarial' FROM funcionario;/* Retorna a média aritmética do campo especificado */
SELECT MIN(salario) AS 'Menor salário' FROM funcionario;/* Retorna menor valor do campo especificado */
SELECT MAX(salario) As 'Maior salário' FROM funcionario;/* Retorna maior valor do campo especificado */

/* Funções para manipulação de datas */
SELECT GETDATE(); /* Retorna a data e hora atual do sistema */
SELECT nome, nascimento, DATEPART(MONTH, nascimento) AS 'Mês de aniversário' FROM funcionario ORDER BY 'Mês de aniversário' DESC; /* Retorna o mês atual do sistema */
SELECT nome, data_contratacao, DATEADD(DAY, 5000, data_contratacao) '5000 dias na empresa' FROM funcionario; /* Retorna a data obtida pela soma de 5000 dias a partir da data atual do sistema */
SELECT DATEADD(DAY,60, GETDATE()); /* Somando 60 dias após a data de hoje */
SELECT DATEADD(MONTH,60, GETDATE()); /* Somando 60 meses após o mês atual */
SELECT nome, nascimento, DATEDIFF(YEAR,data_contratacao, GETDATE()) AS 'Dias na empresa' FROM funcionario; /* Retorna a diferença de dias a partir das datas indicadas */
SELECT nome, FORMAT(data_contratacao, 'dd/MM/yyyy') As 'Data' FROM funcionario; /* Exibe a data no formato indicado */

/* Subconsultas */
/* É uma consulta que está aninhada dentro de uma instrução SELECT, INSERT, UPDATE ou DELETE ou em outra subconsulta. */
/* Encontrar o funcionário com o maior salário: */
SELECT * FROM funcionario WHERE salario = (SELECT MAX(salario) FROM funcionario);
/* Encontrar os funcionários que recebem acima da média: */
SELECT * FROM funcionario WHERE salario > (SELECT AVG(salario) FROM funcionario);
/* Mostrar todas as informações do funcionário que realizou o maior numero de vendas: */
SELECT * FROM funcionario WHERE nome = (SELECT vendedor FROM venda WHERE quantidade = (SELECT MAX(quantidade) FROM venda));

/* Cláusulas IN - Determina se um valor especificado corresponde a qualquer valor em uma subconsulta ou uma lista */
/* Exibir todos os produtos da tabela Produto que tenham quantidade maior que 150 na tabela venda */
SELECT * FROM produto WHERE nome_prod IN (SELECT produto_vend FROM venda WHERE quantidade > 150);
/* Exibir os produtos da tabela Produto que não tenham quantidade maior que 150 na tabela Venda */
SELECT * FROM produto WHERE nome_prod NOT IN (SELECT produto_vend FROM venda WHERE quantidade > 150);
