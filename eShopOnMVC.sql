USE [master]
GO
/****** Object:  Database [Microsoft.eShopOnContainers.Services.CatalogDb]    Script Date: 03-02-2021 11:00:19 ******/
CREATE DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Microsoft.eShopOnContainers.Services.CatalogDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Microsoft.eShopOnContainers.Services.CatalogDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Microsoft.eShopOnContainers.Services.CatalogDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Microsoft.eShopOnContainers.Services.CatalogDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Microsoft.eShopOnContainers.Services.CatalogDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET  MULTI_USER 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Microsoft.eShopOnContainers.Services.CatalogDb]
GO
USE [Microsoft.eShopOnContainers.Services.CatalogDb]
GO
/****** Object:  Sequence [dbo].[catalog_brand_hilo]    Script Date: 03-02-2021 11:00:20 ******/
CREATE SEQUENCE [dbo].[catalog_brand_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Microsoft.eShopOnContainers.Services.CatalogDb]
GO
/****** Object:  Sequence [dbo].[catalog_hilo]    Script Date: 03-02-2021 11:00:20 ******/
CREATE SEQUENCE [dbo].[catalog_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Microsoft.eShopOnContainers.Services.CatalogDb]
GO
/****** Object:  Sequence [dbo].[catalog_type_hilo]    Script Date: 03-02-2021 11:00:20 ******/
CREATE SEQUENCE [dbo].[catalog_type_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03-02-2021 11:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 03-02-2021 11:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PictureFileName] [nvarchar](max) NOT NULL,
	[CatalogTypeId] [int] NOT NULL,
	[CatalogBrandId] [int] NOT NULL,
	[AvailableStock] [int] NOT NULL,
	[RestockThreshold] [int] NOT NULL,
	[MaxStockThreshold] [int] NOT NULL,
	[OnReorder] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Catalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CatalogBrand]    Script Date: 03-02-2021 11:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogBrand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.CatalogBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CatalogType]    Script Date: 03-02-2021 11:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.CatalogType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CatalogBrandId]    Script Date: 03-02-2021 11:00:21 ******/
CREATE NONCLUSTERED INDEX [IX_CatalogBrandId] ON [dbo].[Catalog]
(
	[CatalogBrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CatalogTypeId]    Script Date: 03-02-2021 11:00:21 ******/
CREATE NONCLUSTERED INDEX [IX_CatalogTypeId] ON [dbo].[Catalog]
(
	[CatalogTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Catalog_dbo.CatalogBrand_CatalogBrandId] FOREIGN KEY([CatalogBrandId])
REFERENCES [dbo].[CatalogBrand] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_dbo.Catalog_dbo.CatalogBrand_CatalogBrandId]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Catalog_dbo.CatalogType_CatalogTypeId] FOREIGN KEY([CatalogTypeId])
REFERENCES [dbo].[CatalogType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_dbo.Catalog_dbo.CatalogType_CatalogTypeId]
GO
USE [master]
GO
ALTER DATABASE [Microsoft.eShopOnContainers.Services.CatalogDb] SET  READ_WRITE 
GO
