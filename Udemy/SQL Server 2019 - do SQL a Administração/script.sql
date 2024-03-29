USE [master]
GO
/****** Object:  Database [Empresa_X]  ******/
CREATE DATABASE [Empresa_X]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa_X', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Empresa_X.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Empresa_X_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Empresa_X_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Empresa_X] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empresa_X].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Empresa_X] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Empresa_X] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Empresa_X] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Empresa_X] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Empresa_X] SET ARITHABORT OFF 
GO
ALTER DATABASE [Empresa_X] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Empresa_X] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa_X] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Empresa_X] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa_X] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Empresa_X] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Empresa_X] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Empresa_X] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Empresa_X] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Empresa_X] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Empresa_X] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Empresa_X] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Empresa_X] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Empresa_X] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Empresa_X] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Empresa_X] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Empresa_X] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Empresa_X] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Empresa_X] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Empresa_X] SET  MULTI_USER 
GO
ALTER DATABASE [Empresa_X] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Empresa_X] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Empresa_X] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Empresa_X] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Empresa_X]
GO
/****** Object:  Table [dbo].[funcionario]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[nascimento] [date] NOT NULL,
	[data_contratacao] [date] NULL,
	[cargo] [varchar](30) NOT NULL,
	[cidade] [varchar](30) NULL,
	[salario] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[produto]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome_prod] [varchar](50) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[validade] [date] NOT NULL,
	[estoque] [int] NULL,
	[preco] [nchar](10) NOT NULL,
 CONSTRAINT [PK_produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venda] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[produto_vend] [varchar](50) NOT NULL,
	[marca_vend] [varchar](50) NOT NULL,
	[quantidade] [int] NULL,
	[vendedor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[funcionario] ON 

INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (1, N'José da Silva', CAST(0x11070B00 AS Date), CAST(0x66330B00 AS Date), N'Gerente', N'São Paulo', CAST(3850.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (2, N'Maria da Graça', CAST(0x4A180B00 AS Date), CAST(0xDF300B00 AS Date), N'Vendedor', N'São Paulo', CAST(2500.50 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (3, N'João Pedro', CAST(0x49F80A00 AS Date), CAST(0x7E070B00 AS Date), N'Vendedor', N'Araras', CAST(3650.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (4, N'Daniel Mendes', CAST(0x47220B00 AS Date), CAST(0x773A0B00 AS Date), N'Vendedor', N'Araras', CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (5, N'Débora Costa', CAST(0xA10F0B00 AS Date), CAST(0x8F260B00 AS Date), N'Vendedor', N'São Paulo', CAST(1250.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (6, N'Rodrigo Alves', CAST(0x16230B00 AS Date), CAST(0xEA390B00 AS Date), N'Vendedor', N'Araras', CAST(2565.30 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (7, N'Rogério Silva', CAST(0xE51D0B00 AS Date), CAST(0xFC270B00 AS Date), N'Vendedor', N'São Paulo', CAST(1250.35 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (8, N'Denilson Mendes', CAST(0x260F0B00 AS Date), CAST(0x69290B00 AS Date), N'Vendedor', N'São Paulo', CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (9, N'Carlos Cunha', CAST(0xE51C0B00 AS Date), CAST(0x8F260B00 AS Date), N'Motorista', N'Araras', CAST(1250.25 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (10, N'Mariana Boner', CAST(0x9D0A0B00 AS Date), CAST(0x07240B00 AS Date), N'Gerente', N'Araras', CAST(3950.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (11, N'Márcia Oliveira', CAST(0xD0ED0A00 AS Date), CAST(0x9A220B00 AS Date), N'Gerente', N'São Paulo', CAST(3560.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (12, N'Antônio Carlos', CAST(0x18F20A00 AS Date), CAST(0xA10E0B00 AS Date), N'Vendedor', N'São Paulo', CAST(1250.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (15, N'Alesanderson Capivara do Mato', CAST(0xDD160B00 AS Date), CAST(0x773A0B00 AS Date), N'Vendedor', N'São Paulo', CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (16, N'Adalberto Churrasco
', CAST(0xC3150B00 AS Date), CAST(0x6E390B00 AS Date), N'Vendedor', N'Araras', CAST(1650.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (17, N'Adegesto Pataca
', CAST(0xC3150B00 AS Date), CAST(0x6E390B00 AS Date), N'Vendedor', N'São Paulo', CAST(1250.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (18, N'Brasil Valente
', CAST(0xC3150B00 AS Date), NULL, N'Vendedor', N'Araras', CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (20, N'Cibele Sol
', CAST(0xE2150B00 AS Date), NULL, N'Vendedor', N'São Paulo', CAST(1850.00 AS Decimal(18, 2)))
INSERT [dbo].[funcionario] ([id], [nome], [nascimento], [data_contratacao], [cargo], [cidade], [salario]) VALUES (21, N'Maria Silva', CAST(0xEFED0A00 AS Date), CAST(0x783A0B00 AS Date), N'Vendedor', N'São Paulo', CAST(1200.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[funcionario] OFF
SET IDENTITY_INSERT [dbo].[produto] ON 

INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (1, N'Água Mineral', N'Danone', CAST(0x2C400B00 AS Date), 500, N'1,25      ')
INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (2, N'Água Mineral ', N'Minalba', CAST(0xC13E0B00 AS Date), 30, N'1,28      ')
INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (3, N'Bolacha', N'Tostines', CAST(0xAB410B00 AS Date), 20, N'3,40      ')
INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (4, N'Bolacha', N'Nestle', CAST(0xAB410B00 AS Date), 30, N'2,50      ')
INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (5, N'Refrigerente', N'Coca Cola', CAST(0x763A0B00 AS Date), 300, N'4,20      ')
INSERT [dbo].[produto] ([id], [nome_prod], [marca], [validade], [estoque], [preco]) VALUES (6, N'Refrigerente', N'Dolly', CAST(0x786C0B00 AS Date), 30, N'0,99      ')
SET IDENTITY_INSERT [dbo].[produto] OFF
SET IDENTITY_INSERT [dbo].[venda] ON 

INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (1, N'Bolacha', N'Tostines', 500, N'Daniel Mendes')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (2, N'Água Mineral', N'Minalba', 300, N'Rodrigo Alves')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (4, N'Água Mineral', N'Danone', 200, N'Rodrigo Alves')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (5, N'Refrigerante', N'Dolly', 100, N'João Pedro')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (6, N'Refrigerante', N'Dolly', 150, N'João Pedro')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (7, N'Refrigerante', N'Dolly', 100, N'João Pedro')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (8, N'Refrigerante', N'Dolly', 150, N'João Pedro')
INSERT [dbo].[venda] ([id], [produto_vend], [marca_vend], [quantidade], [vendedor]) VALUES (10, N'Refrigerante', N'Dolly', NULL, N'João Pedro')
SET IDENTITY_INSERT [dbo].[venda] OFF
USE [master]
GO
ALTER DATABASE [Empresa_X] SET  READ_WRITE 
GO
