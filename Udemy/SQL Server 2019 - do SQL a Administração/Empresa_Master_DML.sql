/* DML - Linguagem de Manipulação de Dados */

DBCC CHECKIDENT('Endereco', RESEED, 1);
INSERT INTO Endereco(cep, estado, cidade, bairro, rua, numero) VALUES
(84220000, 'Paraná', 'São Vicente', 'Morungava', 'Rua São Marcos', 044),
(23423223, 'Paraná', 'Ponta Grossa', 'São Jorge', 'Rua São Gabriel', 033),
(34563645, 'Paraná', 'Arapoti', 'Avenida Santos', 'Rua Tambaré', 022),
(34634636, 'Paraná', 'Castro', 'Jardim Brauna', 'Rua das Rosas', 011),
(35667374, 'Paraná', 'São Juvinil', 'Alcantra', 'Rua Miguel XII', 012),
(45625437, 'São Paulo', 'São Paulo', 'Pistovil', 'Rua Gov. Manoel', 055),
(34563473, 'São Paulo', 'Itararé', 'Av. São Pedro', 'Rua Cristovão', 052),
(54734356, 'São Paulo', 'Itapeva', 'Catalunda', 'Rua Tinbaú', 523),
(34634563, 'São Paulo', 'Sorocaba', 'Cambrô', 'Rua Nascente', 634),
(33445643, 'São Paulo', 'Campinas', 'Distrituo 661', 'Rua Pistola', 077),
(34653463, 'São Paulo', 'Santo André', 'Costavando', 'Rua Marcha Saldado', 086),
(45738888, 'Acre', 'Jordão', 'Salborô', 'Rua dos Santistas', 092),
(56737386, 'Acre', 'Porto Acre', 'Mitutu', 'Rua Dinossauro', 090),
(87686786, 'Bahia', 'Salvador', 'Felicissimo', 'Rua Bailêlê', 253),
(54752564, 'Bahia', 'Itabuna', 'Jardim Alvorada', 'Rua das Redes', 532),
(26373475, 'Bahia', 'Juazeiro', 'São Lucas', 'Rua Martelos', 354);

DBCC CHECKIDENT('Pessoa_fisica', RESEED, 1);
INSERT INTO Pessoa_fisica(nome, data_nascimento, sexo, cpf, id_endereco) VALUES
('Maria Rosana', '1998-01-21', 'F', '12334544543', 03),
('Bruna Pedrosa', '1997-03-12', 'F', '45644646455', 05),
('José Almeida', '1998-04-15', 'M', '35146324334', 07),
('Marcos Almeida', '1996-10-12', 'M', '34533245345', 02),
('Gabriela Torres', '1991-11-11', 'F', '55675444446', 07),
('Amanda Neves', '1976-03-04', 'F', '47873555656', 02),
('Lucas Gonçalves', '1992-04-06', 'M', '53683568585', 04),
('Fabiola Santana', '1996-02-07', 'F', '56853683567', 01),
('Julio Conrado', '1995-09-01', 'M', '56836336585', 02),
('Wesley Ferreira', '1992-12-02', 'M', '56856856665', 05),
('Marta Almeida da Silva', '1987-04-04', 'F', '56383835675', 07),
('Carolina Braga Assis', '1982-06-12', 'F', '56886586656', 07),
('Pedro Santana Bento', '2001-07-22', 'M', '56853363555', 09),
('Yasmin Boarte Boanova', '2002-09-03', 'F', '56368358386', 03),
('Mayara Gonçalves', '1997-11-10', 'F', '35683568568', 06),
('Carlos Albeto Vieira', '2002-07-05', 'M', '54353453454', 02),
('Matheus de Matos', '1997-08-04', 'M', '34643646644', 02);

DBCC CHECKIDENT('Pessoa_juridica', RESEED, 1);
INSERT INTO Pessoa_juridica(razao_social, nome_fantasia, inicio_atividade, natureza_juridica, cnpj, id_endereco) VALUES
('Sandro Alberto Ferraz', 'Central das Bolachas', '2001-06-03', 'Alimenticios', '34233456325624', 03),
('Fabio Elizandro', 'O Melhor do Brasil', '2003-02-12', 'Frios e Carnes', '72234783428724', 03),
('Sebastião Almeida', 'Mais Churrasco', '2015-03-04', 'Frios e Carnes', '23345345345343', 05),
('Grupo Martins', 'Martins e CIA', '2010-01-16', 'Alimenticios', '99977766633302', 06),
('Grupo Limpa Mais', 'Limpa Mais', '2011-08-03', 'Produtos de Limpeza', '77733344499922', 01),
('Antonio Sebastião', 'Tudo Mais', '2008-08-17', 'Produtos de Limpeza', '99933344488823', 09),
('Marta De Andrade', 'Segredos da Casa', '2009-02-25', 'Alimenticios', '99977755522277', 08),
('Grupo Brilho Utilidades', 'Brilho Utilidades', '1997-05-04', 'Produtos de Limpeza', '00033322299953', 05),
('Visconde Toledo Martins', 'Adocicando um Pouco Mais', '2013-03-18', 'Alimenticios', '00344032404422', 02),
('Grupo Mais Brilho', 'Mais Brilho', '2022-11-24', 'Produtos de Limpeza', '88722466400274', 05),
('Marcos Lima Ferreira', 'Irmãos Ferreira', '2021-09-22', 'Frios e Carnes', '12432456487644', 02),
('Sandra Buarte da Silva', 'Mais sua Casa', '2001-07-12', 'Produtos de Limpeza', '12543234876234', 08),
('Grupo Chocolates Amigos', 'Chocolates Amigos', '2022-06-21', 'Alimenticios', '24324532534656', 09),
('Anezio Boaventura Carmo', 'Tempere Sua Vida', '2015-05-04', 'Alimenticios', '68678678678674', 06),
('Pedro Alvario Romano', 'Ponto das Carnes', '2017-11-19', 'Frios e Carnes', '22342423432422', 05),
('Alvoraro Daniel Almeida', 'Enlatados Almeida', '2018-03-12', 'Alimenticios', '32324234234233', 03),
('Grupo Cereais do Bom', 'Cereais do Bom', '2014-04-23', 'Alimenticios', '23423423423437', 11);

DBCC CHECKIDENT('Funcionario', RESEED, 1);
INSERT INTO Funcionario(inicio_contrato, salario, cargo, setor, numero_ctps, numero_cnh, turno, id_pessa_fisica) VALUES
('2019-05-03', '1800.00', 'Estoquista', 'Almoxarifado', '23423423242', '9394839295', 'Diurno', 01),
('2010-11-23', '1900.44', 'Comprador', 'Suprimentos', '23433623242', '9393829495', 'Noturno', 02),
('2018-12-11', '1405.78', 'Estoquista', 'Almoxarifado', '36736356575', '2352424234', 'Administrativo', 03),
('2023-08-03', '1500.76', 'Vendedor', 'Comercial', '56737567358', '2342342344', 'Diurno', 04),
('2020-09-02', '1200.22', 'Comprador', 'Suprimentos', '67867876767', '3464564565', 'Administrativo', 05),
('2022-06-06', '1230.76', 'Vendedor', 'Comercial', '56863653653', '6756575666', 'Administrativo', 06),
('2017-11-12', '1300.54', 'Estoquista', 'Almoxarifado', '56753373575', '7687688888', 'Diurno', 07),
('2014-04-14', '1020.36', 'Vendedor', 'Comercial', '57567655757', '6786786799', 'Noturno', 08),
('2021-02-25', '1002.33', 'Vendedor', 'Comercial', '57575676755', '4566245624', 'Administrativo', 09),
('2015-05-28', '1000.55', 'Estoquista', 'Almoxarifado', '65757576576', '4565736366', 'Administrativo', 10),
('2022-08-16', '1300.06', 'Comprador', 'Suprimentos', '46343463634', '6645444575', 'Noturno', 11),
('2021-07-23', '1700.35', 'Vendedor', 'Comercial', '34634343533', '4643333333', 'Administrativo', 12),
('2023-04-25', '1900.33', 'Estoquista', 'Almoxarifado', '34536343453', '7546456454', 'Diurno', 13),
('2021-01-14', '1000.44', 'Vendedor', 'Comercial', '35345353453', '7868654454', 'Administrativo', 14),
('2019-12-14', '1020.23', 'Comprador', 'Suprimentos', '35367686786', '7567567777', 'Diurno', 15),
('2015-02-24', '1222.42', 'Estoquista', 'Almoxarifado', '45645645656', '4645655555', 'Administrativo', 16),
('2010-04-23', '1200.45', 'Vendedor', 'Comercial', '67687987777', '3333345555', 'Noturno', 17);

DBCC CHECKIDENT('Fornecedor', RESEED, 1);
INSERT INTO Fornecedor(email, id_pessoa_juridica, telefone) VALUES
('sandro@gmail.com', 01, '4529926682'),
('o_melhor@outlook.com', 02, '4324234232'),
('sebastiao@hotmail.com', 03, '2342342343'),
('grupo_martins@gmail.com', 04, '2342342323'),
('grupo_limpa_mais@grupo.com.br', 05, '4234234234'),
('antonio@outlook.com', 06, '2342342323'),
('andrade@gmail.com', 07, '4656445644'),
('brilho_utilidades@grupo.com.br', 08, '4545623522'),
('martins@hotmail.com', 09, '3242422424');

DBCC CHECKIDENT('Cliente', RESEED, 1);
INSERT INTO Cliente(email, id_pessoa_juridica, telefone) VALUES
('mais_brilho@gmail.com', 10, '2342232346'),
('marcos.ferreira@outlook.com', 11, '3424323234'),
('sandra@webmail.com', 12, '2423634565'),
('chocolate.amigos@gmail.com', 13, '5475464323'),
('anezio-carmo@email.com', 14, '8768673434'),
('pedro_romano@outlook.com', 15, '8678543543'),
('alvaro.almeida@gmail.com', 16, '7547657654'),
('cereais_bom@outlook.com', 17, '8895432223');

DBCC CHECKIDENT('Produto', RESEED, 1);
INSERT INTO Produto(nome, marca, modelo, data_vencimento, id_fornecedor) VALUES
('Bolacha', 'Panco', 'Rosquinha', '2023-10-10', 09),
('Bolacha', 'Passatempo', 'Recheado', '2023-05-23', 09),
('Bolacha', 'Trakinas', 'Recheado', '2023-04-23', 09),
('Bolacha', 'Nescal', 'Recheado', '2024-11-12', 09),
('Bolacha', 'Gulosos', 'Recheado', '2024-05-22', 09),
('Bisteca de Boi', 'Friboi', 'Mignon', '2023-12-26', 02),
('Peito de Frango', 'Sádia', 'Picado', '2023-05-17', 02),
('Presunto', 'Sádia', 'Defumado', '2024-11-24', 02),
('Mortadela', 'Sádia', 'Ouro', '2024-05-22', 03),
('Arroz', 'Sádia', 'Branco', '2024-07-20', 04),
('Feijão', 'Urbano', 'Preto', '2023-11-21', 04),
('Vinagre', 'São Bento', 'Vinagre de Maça', '2024-07-22', 04),
('Sardinha', 'Sádia', 'Enlatado', '2024-05-13', 04),
('Vassoura', 'Americana', 'Madeira', '2023-12-15', 05), 
('Rodo', 'Americana', 'Madeira', '2024-08-27', 06),
('Ervilha', 'Quero', 'Enlatado', '2024-09-18', 07),
('Cereal', 'Nescal', 'Caixa', '2023-02-16', 07),
('Milho', 'Quero', 'Enlatado', '2023-12-31', 07),
('Detergente', 'Ipê', 'Economico', '2023-06-13', 08),
('Sabão em Pó', 'Omo', 'Mult. Ação', '2023-11-22', 08),
('Refrigerante', 'Coca-Cola', 'Zero', '2023-02-12', 09),
('Refrigerante', 'Guarana Antartica', '2,5 Litros', '2024-01-31', 09),
('Cerveja', 'Brahma', 'Lata', '2023-07-05', 09),
('Cervaja', 'Original', 'Lata', '2023-08-02', 09),
('Cerveja', 'Heineken', 'Garrafa', '2023-10-31', 09);

DBCC CHECKIDENT('Compra', RESEED, 1);
INSERT INTO Compra(nota_fiscal, data_compra, numero_lote, numero_pedido_compra, id_comprador, id_produto) VALUES
('2001501501501510501556', '2023-01-01', 151, 322, 02, 01),
('3452352353253262464265', '2023-01-02', 122, 123, 02, 02),
('4262462462462456246456', '2023-01-02', 122, 332, 05, 03),
('1361615654565645646456', '2023-01-12', 133, 544, 02, 04),
('2421513526171554544656', '2023-02-13', 134, 655, 05, 05),
('2353464264646462624564', '2023-02-13', 134, 346, 02, 05),
('2464756756765765567333', '2023-02-03', 344, 654, 05, 06),
('3532523534534565464564', '2023-02-23', 544, 234, 02, 07),
('2624245645626262462456', '2023-02-24', 654, 133, 15, 09),
('2645645645446426526245', '2023-03-04', 467, 003, 02, 06),
('2464564645654646464245', '2023-03-04', 467, 353, 05, 10),
('2645645655665555546244', '2023-03-25', 453, 651, 05, 11),
('4645622645645645646645', '2023-03-25', 234, 633, 15, 08),
('4264564564624642564564', '2023-03-25', 234, 565, 05, 22),
('2135135135135135133453', '2023-04-05', 435, 776, 15, 12),
('3531515353135315135151', '2023-04-06', 645, 777, 05, 21),
('4564564562465624426426', '2023-04-16', 645, 212, 02, 21),
('4645645645646456456456', '2023-04-27', 456, 444, 15, 25),
('2645642624642646464626', '2023-04-27', 456, 111, 05, 14),
('1345151433131333131313', '2023-05-08', 765, 112, 15, 04),
('1311111111234123443534', '2023-05-08', 765, 434, 15, 06),
('6546456456456456546456', '2023-05-08', 766, 656, 05, 05),
('5453453452424234525325', '2023-05-19', 523, 736, 15, 02),
('6265464645646465464564', '2023-05-29', 234, 222, 05, 07),
('4654563654564562462422', '2023-05-29', 234, 323, 15, 02);

DBCC CHECKIDENT('Estoque', RESEED, 1);
INSERT INTO Estoque(prateleira, quantidade, id_compra, id_responsavel) VALUES
(02, 500, 01, 01), (03, 355, 02, 01), (04, 950, 03, 03),
(05, 102, 04, 01), (06, 150, 05, 03), (09, 300, 06, 07),
(15, 660, 08, 16), (15, 795, 09, 03), (18, 121, 10, 01),
(22, 999, 12, 01), (23, 988, 13, 10), (02, 230, 03, 03),
(30, 790, 14, 07), (45, 165, 15, 07), (01, 340, 03, 13),
(45, 564, 16, 16), (45, 600, 17, 13), (02, 130, 03, 03),
(02, 156, 18, 01), (02, 324, 19, 10), (05, 910, 03, 10),
(03, 456, 20, 01), (04, 756, 21, 01), (06, 920, 03, 03),
(05, 234, 21, 13), (10, 533, 22, 16), (07, 940, 03, 07),
(22, 345, 23, 13), (30, 765, 24, 16), (08, 350, 03, 10),
(10, 450, 07, 01), (22, 120, 11, 13), (05, 130, 12, 03);
