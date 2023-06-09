/* DDL - Linguagem de Definição de Dados */

CREATE DATABASE Empresa_Master;
USE Empresa_Master;
/* DROP DATABASE Empresa_Master; */

CREATE TABLE Endereco(
id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
cep INTEGER UNIQUE NOT NULL,
estado VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
bairro VARCHAR(50) NOT NULL,
rua VARCHAR(50) NOT NULL,
numero INTEGER
);

CREATE TABLE Pessoa_fisica(
id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
nome VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
sexo CHAR(2) NOT NULL,
cpf VARCHAR(11) UNIQUE,
id_endereco INTEGER CONSTRAINT FK_Pessoa_Fisica_Endereco REFERENCES Endereco(id)
);

CREATE TABLE Pessoa_juridica(
id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
razao_social VARCHAR(100) NOT NULL,
nome_fantasia VARCHAR(50) NOT NULL,
inicio_atividade DATE NOT NULL,
natureza_juridica TEXT,
cnpj VARCHAR(14) UNIQUE NOT NULL,
id_endereco INTEGER CONSTRAINT FK_Pessoa_Jurida_Endereco REFERENCES Endereco(id)
);

CREATE TABLE Funcionario(
id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
inicio_contrato DATE NOT NULL,
salario DECIMAL(7,2) NOT NULL,
cargo VARCHAR(50) NOT NULL,
setor VARCHAR(50) NOT NULL,
numero_ctps VARCHAR(11) UNIQUE NOT NULL,
numero_cnh VARCHAR(10) UNIQUE,
turno VARCHAR(50),
id_pessa_fisica INTEGER CONSTRAINT FK_Funcionario_Pessoa_Fisica REFERENCES Pessoa_fisica(id)
);

CREATE TABLE Fornecedor(
id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
telefone INTEGER NOT NULL,
email VARCHAR(50),
id_pessoa_juridica INTEGER CONSTRAINT FK_Fornecedor_Pessoa_Juridica REFERENCES Pessoa_juridica(id)
);

CREATE TABLE Cliente(
id INTEGER IDENTITY(1,1) PRIMARY KEY,
telefone INTEGER NOT NULL,
email VARCHAR(50),
id_pessoa_juridica INTEGER CONSTRAINT FK_Cliente_Pessoa_Juridica REFERENCES Pessoa_juridica(id)
);

CREATE TABLE Produto(
id INTEGER IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR(50) NOT NULL,
data_vencimento DATE NOT NULL,
id_fornecedor INTEGER CONSTRAINT FK_Produto_Fornecedor REFERENCES Fornecedor(id)
);

CREATE Table Compra(
id INTEGER IDENTITY(1,1) PRIMARY KEY,
nota_fiscal VARCHAR(100) UNIQUE NOT NULL,
data_compra DATE NOT NULL,
numero_lote INTEGER NOT NULL,
numero_pedido_compra INTEGER NOT NULL UNIQUE,
id_comprador INTEGER CONSTRAINT FK_Compra_Funcionario REFERENCES Funcionario(id),
id_produto INTEGER CONSTRAINT FK_Compra_Produto REFERENCES Produto(id)
);

CREATE TABLE Estoque(
id INTEGER IDENTITY(1,1) PRIMARY KEY,
prateleira INTEGER NOT NULL,
quantidade INTEGER NOT NULL,
id_compra INTEGER CONSTRAINT FK_Estoque_Compra REFERENCES Compra(id),
id_responsavel INTEGER CONSTRAINT FK_Estoque_Funcionario REFERENCES Funcionario(id),
);

ALTER TABLE Fornecedor DROP COLUMN telefone;
ALTER TABLE Fornecedor ADD telefone VARCHAR(10) NOT NULL;
sp_help Fornecedor;

ALTER TABLE Cliente DROP COLUMN telefone;
ALTER TABLE Cliente ADD telefone VARCHAR(10) NOT NULL;
sp_help Cliente;
