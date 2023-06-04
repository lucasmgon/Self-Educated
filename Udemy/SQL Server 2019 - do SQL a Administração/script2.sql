USE [master]
GO
/****** Object:  Database [Empresa_Y]     ******/
CREATE DATABASE [Empresa_Y]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa_Y', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Empresa_Y.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Empresa_Y_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Empresa_Y_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Empresa_Y] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empresa_Y].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Empresa_Y] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Empresa_Y] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Empresa_Y] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Empresa_Y] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Empresa_Y] SET ARITHABORT OFF 
GO
ALTER DATABASE [Empresa_Y] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Empresa_Y] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa_Y] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Empresa_Y] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa_Y] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Empresa_Y] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Empresa_Y] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Empresa_Y] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Empresa_Y] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Empresa_Y] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Empresa_Y] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Empresa_Y] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Empresa_Y] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Empresa_Y] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Empresa_Y] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Empresa_Y] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Empresa_Y] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Empresa_Y] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Empresa_Y] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Empresa_Y] SET  MULTI_USER 
GO
ALTER DATABASE [Empresa_Y] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Empresa_Y] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Empresa_Y] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Empresa_Y] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Empresa_Y]
GO
/****** Object:  Table [dbo].[Cliente]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idProduto] [int] NOT NULL,
	[idVendedor] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produto]     08:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[Descrição] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedor]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedor](
	[idVendedor] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [Nome]) VALUES (1, N'José da Silva')
INSERT [dbo].[Cliente] ([idCliente], [Nome]) VALUES (2, N'Ana Maria Braga')
INSERT [dbo].[Cliente] ([idCliente], [Nome]) VALUES (3, N'Daniel Mendes')
INSERT [dbo].[Cliente] ([idCliente], [Nome]) VALUES (4, N'Alberto Roberto')
INSERT [dbo].[Cliente] ([idCliente], [Nome]) VALUES (5, N'Sebastião Alves')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Pedido] ON 

INSERT [dbo].[Pedido] ([idPedido], [idProduto], [idVendedor], [idCliente], [Quantidade], [Valor]) VALUES (1, 2, 1, 1, 1, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Pedido] ([idPedido], [idProduto], [idVendedor], [idCliente], [Quantidade], [Valor]) VALUES (2, 3, 2, 1, 1, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Pedido] ([idPedido], [idProduto], [idVendedor], [idCliente], [Quantidade], [Valor]) VALUES (3, 2, 1, 1, 2, CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Pedido] ([idPedido], [idProduto], [idVendedor], [idCliente], [Quantidade], [Valor]) VALUES (4, 4, 3, 3, 2, CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Pedido] ([idPedido], [idProduto], [idVendedor], [idCliente], [Quantidade], [Valor]) VALUES (5, 1, 1, 2, 2, CAST(1500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Pedido] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (1, N'TV')
INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (2, N'Video Game')
INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (3, N'Telefone VOIP')
INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (4, N'Notebook')
INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (5, N'iPAD')
INSERT [dbo].[Produto] ([idProduto], [Descrição]) VALUES (6, N'iPhone')
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Vendedor] ON 

INSERT [dbo].[Vendedor] ([idVendedor], [Nome]) VALUES (1, N'Débora Cristina')
INSERT [dbo].[Vendedor] ([idVendedor], [Nome]) VALUES (2, N'Mariana Pereira')
INSERT [dbo].[Vendedor] ([idVendedor], [Nome]) VALUES (3, N'Daniela Carla')
INSERT [dbo].[Vendedor] ([idVendedor], [Nome]) VALUES (4, N'Josias Mateus')
INSERT [dbo].[Vendedor] ([idVendedor], [Nome]) VALUES (5, N'João Manduca')
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Produto] FOREIGN KEY([idProduto])
REFERENCES [dbo].[Produto] ([idProduto])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Produto]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Vendedor] FOREIGN KEY([idVendedor])
REFERENCES [dbo].[Vendedor] ([idVendedor])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Vendedor]
GO
USE [master]
GO
ALTER DATABASE [Empresa_Y] SET  READ_WRITE 
GO
