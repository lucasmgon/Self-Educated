/* JOIN é utilizado para consultar dados em duas ou mais tabelas, baseado nos relacionamentos entre colunas desta tabela */
SELECT * FROM pedido JOIN produto ON pedido.idProduto = produto.idProduto;

SELECT * FROM pedido JOIN vendedor ON pedido.idVendedor = vendedor.idVendedor;

SELECT * FROM pedido JOIN cliente ON pedido.idCliente = cliente.idCliente;

SELECT pedido.idPedido, pedido.quantidade, pedido.valor, cliente.nome FROM pedido JOIN cliente ON pedido.idCliente = cliente.idCliente;

/* Usando apelido para as tabelas */
SELECT p.idpedido, p.quantidade, p.valor, c.nome FROM pedido AS p JOIN cliente AS c ON p.idCliente = c.idCliente;

SELECT p.idPedido, p.idVendedor, p.quantidade, v.nome FROM pedido AS p JOIN vendedor AS v ON p.idVendedor = v.idVendedor;

SELECT p.idPedido, p.idVendedor, p.idCliente, p.valor, v.nome, c.nome FROM pedido AS p JOIN vendedor AS v
ON p.idVendedor = v.idVendedor JOIN cliente AS c
ON p.idCliente = c.idCliente;
