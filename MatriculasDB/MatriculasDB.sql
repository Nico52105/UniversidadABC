USE [master]
GO
/****** Object:  Database [Matriculas]    Script Date: 7/6/2021 2:46:35 PM ******/
CREATE DATABASE [Matriculas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Matriculas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Matriculas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Matriculas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Matriculas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Matriculas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Matriculas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Matriculas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Matriculas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Matriculas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Matriculas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Matriculas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Matriculas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Matriculas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Matriculas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Matriculas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Matriculas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Matriculas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Matriculas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Matriculas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Matriculas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Matriculas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Matriculas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Matriculas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Matriculas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Matriculas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Matriculas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Matriculas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Matriculas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Matriculas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Matriculas] SET  MULTI_USER 
GO
ALTER DATABASE [Matriculas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Matriculas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Matriculas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Matriculas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Matriculas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Matriculas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Matriculas] SET QUERY_STORE = OFF
GO
USE [Matriculas]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[TipoIdentificacion] [varchar](10) NULL,
	[NumeroIdentificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Docentes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocentesMaterias]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocentesMaterias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDocente] [int] NULL,
	[IdMateria] [int] NULL,
 CONSTRAINT [PK_DocentesMaterias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[Id] [int] NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[TipoIdentificacion] [varchar](10) NULL,
	[NumetoIdentificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudiantesCarreras]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudiantesCarreras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [int] NULL,
	[IdCarrera] [int] NULL,
 CONSTRAINT [PK_EstudiantesCarreras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 7/6/2021 2:46:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCarrera] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocentesMaterias]  WITH CHECK ADD  CONSTRAINT [FK_DocentesMaterias_Docentes] FOREIGN KEY([IdDocente])
REFERENCES [dbo].[Docentes] ([Id])
GO
ALTER TABLE [dbo].[DocentesMaterias] CHECK CONSTRAINT [FK_DocentesMaterias_Docentes]
GO
ALTER TABLE [dbo].[DocentesMaterias]  WITH CHECK ADD  CONSTRAINT [FK_DocentesMaterias_Materias] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materias] ([Id])
GO
ALTER TABLE [dbo].[DocentesMaterias] CHECK CONSTRAINT [FK_DocentesMaterias_Materias]
GO
ALTER TABLE [dbo].[EstudiantesCarreras]  WITH CHECK ADD  CONSTRAINT [FK_EstudiantesCarreras_Carreras] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carreras] ([Id])
GO
ALTER TABLE [dbo].[EstudiantesCarreras] CHECK CONSTRAINT [FK_EstudiantesCarreras_Carreras]
GO
ALTER TABLE [dbo].[EstudiantesCarreras]  WITH CHECK ADD  CONSTRAINT [FK_EstudiantesCarreras_Estudiantes] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[Estudiantes] ([Id])
GO
ALTER TABLE [dbo].[EstudiantesCarreras] CHECK CONSTRAINT [FK_EstudiantesCarreras_Estudiantes]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Carreras] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carreras] ([Id])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Carreras]
GO
USE [master]
GO
ALTER DATABASE [Matriculas] SET  READ_WRITE 
GO
