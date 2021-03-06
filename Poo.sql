USE [master]
GO
/****** Object:  Database [Poo]    Script Date: 8/12/2020 4:06:01 PM ******/
CREATE DATABASE [Poo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Poo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Poo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Poo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Poo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Poo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Poo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Poo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Poo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Poo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Poo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Poo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Poo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Poo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Poo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Poo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Poo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Poo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Poo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Poo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Poo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Poo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Poo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Poo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Poo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Poo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Poo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Poo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Poo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Poo] SET RECOVERY FULL 
GO
ALTER DATABASE [Poo] SET  MULTI_USER 
GO
ALTER DATABASE [Poo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Poo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Poo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Poo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Poo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Poo', N'ON'
GO
ALTER DATABASE [Poo] SET QUERY_STORE = OFF
GO
USE [Poo]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[cod_asig] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[cod_asig] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsignaturaVsNotas]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignaturaVsNotas](
	[cod_asig] [int] NOT NULL,
	[cod_not] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsignaturaVsProfesores]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignaturaVsProfesores](
	[cod_asig] [int] NOT NULL,
	[cod_prof] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[cod_asist] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[cod_est] [int] NOT NULL,
	[cod_ast] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Asistencia] PRIMARY KEY CLUSTERED 
(
	[cod_asist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsistenciaDesc]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsistenciaDesc](
	[cod_ast] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_AsistenciaDescp] PRIMARY KEY CLUSTERED 
(
	[cod_ast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aula]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aula](
	[cod_aul] [int] NOT NULL,
	[aula] [varchar](50) NOT NULL,
	[cod_gra] [int] NOT NULL,
	[cod_edi] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Aula] PRIMARY KEY CLUSTERED 
(
	[cod_aul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calle]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calle](
	[cod_call] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[cod_sec] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Calle] PRIMARY KEY CLUSTERED 
(
	[cod_call] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[cod_ciud] [int] NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[cod_prov] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[cod_ciud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Continente]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continente](
	[cod_conti] [int] NOT NULL,
	[continente] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Continente] PRIMARY KEY CLUSTERED 
(
	[cod_conti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[cod_cuent] [int] NOT NULL,
	[cuenta] [float] NOT NULL,
	[cod_est] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[cod_cuent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[cod_dep] [int] NOT NULL,
	[departamento] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[cod_dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[cod_dire] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cod_call] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[cod_dire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DireccionVsTerceros]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DireccionVsTerceros](
	[cod_dire] [int] NOT NULL,
	[cod_ter] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edificio]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edificio](
	[cod_edi] [int] NOT NULL,
	[edificio] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Edificio] PRIMARY KEY CLUSTERED 
(
	[cod_edi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[cod_email] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[cod_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailVsTercero]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailVsTercero](
	[cod_ter] [int] NOT NULL,
	[cod_email] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[cod_emp] [int] NOT NULL,
	[ape_emp] [varchar](50) NOT NULL,
	[cod_dep] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[cod_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[cod_est] [int] NOT NULL,
	[ape_est] [varchar](50) NOT NULL,
	[cod_ter] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[cod_est] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudiantesVsNotas]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudiantesVsNotas](
	[cod_est] [int] NOT NULL,
	[cod_not] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grado]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grado](
	[cod_gra] [int] NOT NULL,
	[grado] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Grado] PRIMARY KEY CLUSTERED 
(
	[cod_gra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[cod_muni] [int] NOT NULL,
	[municipio] [varchar](50) NOT NULL,
	[cod_ciud] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[cod_muni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[cod_not] [int] NOT NULL,
	[notas] [float] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[cod_not] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotasVsProfesor]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotasVsProfesor](
	[cod_not] [int] NOT NULL,
	[cod_prof] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[cod_pag] [int] NOT NULL,
	[monto] [float] NOT NULL,
	[fecha] [date] NOT NULL,
	[cod_cuent] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[cod_pag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[cod_pais] [int] NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[cod_conti] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[cod_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[cod_prof] [int] NOT NULL,
	[ape_prof] [varchar](50) NOT NULL,
	[cod_ter] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[cod_prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[cod_prov] [int] NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[cod_reg] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[cod_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[cod_reg] [int] NOT NULL,
	[region] [varchar](50) NOT NULL,
	[cod_pais] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[cod_reg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[cod_sec] [int] NOT NULL,
	[sector] [varchar](50) NOT NULL,
	[cod_muni] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[cod_sec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[cod_sex] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[cod_sex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[cod_tel] [int] NOT NULL,
	[telefono] [varchar](12) NOT NULL,
	[cod_tip] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED 
(
	[cod_tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefonoVsTerceros]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoVsTerceros](
	[cod_tel] [int] NOT NULL,
	[cod_ter] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terceros]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terceros](
	[cod_ter] [int] NOT NULL,
	[nom_ter] [varchar](50) NOT NULL,
	[cod_sex] [int] NOT NULL,
	[birth] [date] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Terceros] PRIMARY KEY CLUSTERED 
(
	[cod_ter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTelefono](
	[cod_tip] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_TipoTelefono] PRIMARY KEY CLUSTERED 
(
	[cod_tip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[cod_tip] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[cod_tip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutor]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutor](
	[cod_tut] [int] NOT NULL,
	[ape_tut] [varchar](50) NOT NULL,
	[cod_ter] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Tutor] PRIMARY KEY CLUSTERED 
(
	[cod_tut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TutorVsEstudiante]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorVsEstudiante](
	[cod_tut] [int] NOT NULL,
	[cod_est] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/12/2020 4:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[cod_user] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varbinary](max) NOT NULL,
	[cod_ter] [int] NOT NULL,
	[cod_tip] [int] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[cod_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsignaturaVsNotas]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaVsNotas_Asignatura] FOREIGN KEY([cod_asig])
REFERENCES [dbo].[Asignatura] ([cod_asig])
GO
ALTER TABLE [dbo].[AsignaturaVsNotas] CHECK CONSTRAINT [FK_AsignaturaVsNotas_Asignatura]
GO
ALTER TABLE [dbo].[AsignaturaVsNotas]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaVsNotas_Notas] FOREIGN KEY([cod_not])
REFERENCES [dbo].[Notas] ([cod_not])
GO
ALTER TABLE [dbo].[AsignaturaVsNotas] CHECK CONSTRAINT [FK_AsignaturaVsNotas_Notas]
GO
ALTER TABLE [dbo].[AsignaturaVsProfesores]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaVsProfesores_Asignatura] FOREIGN KEY([cod_asig])
REFERENCES [dbo].[Asignatura] ([cod_asig])
GO
ALTER TABLE [dbo].[AsignaturaVsProfesores] CHECK CONSTRAINT [FK_AsignaturaVsProfesores_Asignatura]
GO
ALTER TABLE [dbo].[AsignaturaVsProfesores]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaVsProfesores_Profesores] FOREIGN KEY([cod_prof])
REFERENCES [dbo].[Profesores] ([cod_prof])
GO
ALTER TABLE [dbo].[AsignaturaVsProfesores] CHECK CONSTRAINT [FK_AsignaturaVsProfesores_Profesores]
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_AsistenciaDescp] FOREIGN KEY([cod_ast])
REFERENCES [dbo].[AsistenciaDesc] ([cod_ast])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_AsistenciaDescp]
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_Estudiante] FOREIGN KEY([cod_est])
REFERENCES [dbo].[Estudiante] ([cod_est])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_Estudiante]
GO
ALTER TABLE [dbo].[Aula]  WITH CHECK ADD  CONSTRAINT [FK_Aula_Edificio] FOREIGN KEY([cod_edi])
REFERENCES [dbo].[Edificio] ([cod_edi])
GO
ALTER TABLE [dbo].[Aula] CHECK CONSTRAINT [FK_Aula_Edificio]
GO
ALTER TABLE [dbo].[Aula]  WITH CHECK ADD  CONSTRAINT [FK_Aula_Grado] FOREIGN KEY([cod_gra])
REFERENCES [dbo].[Grado] ([cod_gra])
GO
ALTER TABLE [dbo].[Aula] CHECK CONSTRAINT [FK_Aula_Grado]
GO
ALTER TABLE [dbo].[Calle]  WITH CHECK ADD  CONSTRAINT [FK_Calle_Sector] FOREIGN KEY([cod_sec])
REFERENCES [dbo].[Sector] ([cod_sec])
GO
ALTER TABLE [dbo].[Calle] CHECK CONSTRAINT [FK_Calle_Sector]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Provincia] FOREIGN KEY([cod_prov])
REFERENCES [dbo].[Provincia] ([cod_prov])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Provincia]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Estudiante] FOREIGN KEY([cod_est])
REFERENCES [dbo].[Estudiante] ([cod_est])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Estudiante]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Calle] FOREIGN KEY([cod_call])
REFERENCES [dbo].[Calle] ([cod_call])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Calle]
GO
ALTER TABLE [dbo].[DireccionVsTerceros]  WITH CHECK ADD  CONSTRAINT [FK_DireccionVsTerceros_Direccion] FOREIGN KEY([cod_dire])
REFERENCES [dbo].[Direccion] ([cod_dire])
GO
ALTER TABLE [dbo].[DireccionVsTerceros] CHECK CONSTRAINT [FK_DireccionVsTerceros_Direccion]
GO
ALTER TABLE [dbo].[DireccionVsTerceros]  WITH CHECK ADD  CONSTRAINT [FK_DireccionVsTerceros_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[DireccionVsTerceros] CHECK CONSTRAINT [FK_DireccionVsTerceros_Terceros]
GO
ALTER TABLE [dbo].[EmailVsTercero]  WITH CHECK ADD  CONSTRAINT [FK_EmailVsTercero_Email] FOREIGN KEY([cod_email])
REFERENCES [dbo].[Email] ([cod_email])
GO
ALTER TABLE [dbo].[EmailVsTercero] CHECK CONSTRAINT [FK_EmailVsTercero_Email]
GO
ALTER TABLE [dbo].[EmailVsTercero]  WITH CHECK ADD  CONSTRAINT [FK_EmailVsTercero_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[EmailVsTercero] CHECK CONSTRAINT [FK_EmailVsTercero_Terceros]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Departamento] FOREIGN KEY([cod_dep])
REFERENCES [dbo].[Departamento] ([cod_dep])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Departamento]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Terceros]
GO
ALTER TABLE [dbo].[EstudiantesVsNotas]  WITH CHECK ADD  CONSTRAINT [FK_EstudiantesVsNotas_Estudiante] FOREIGN KEY([cod_est])
REFERENCES [dbo].[Estudiante] ([cod_est])
GO
ALTER TABLE [dbo].[EstudiantesVsNotas] CHECK CONSTRAINT [FK_EstudiantesVsNotas_Estudiante]
GO
ALTER TABLE [dbo].[EstudiantesVsNotas]  WITH CHECK ADD  CONSTRAINT [FK_EstudiantesVsNotas_Notas] FOREIGN KEY([cod_not])
REFERENCES [dbo].[Notas] ([cod_not])
GO
ALTER TABLE [dbo].[EstudiantesVsNotas] CHECK CONSTRAINT [FK_EstudiantesVsNotas_Notas]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Ciudad] FOREIGN KEY([cod_ciud])
REFERENCES [dbo].[Ciudad] ([cod_ciud])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Ciudad]
GO
ALTER TABLE [dbo].[NotasVsProfesor]  WITH CHECK ADD  CONSTRAINT [FK_NotasVsProfesor_Notas] FOREIGN KEY([cod_not])
REFERENCES [dbo].[Notas] ([cod_not])
GO
ALTER TABLE [dbo].[NotasVsProfesor] CHECK CONSTRAINT [FK_NotasVsProfesor_Notas]
GO
ALTER TABLE [dbo].[NotasVsProfesor]  WITH CHECK ADD  CONSTRAINT [FK_NotasVsProfesor_Profesores] FOREIGN KEY([cod_prof])
REFERENCES [dbo].[Profesores] ([cod_prof])
GO
ALTER TABLE [dbo].[NotasVsProfesor] CHECK CONSTRAINT [FK_NotasVsProfesor_Profesores]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Cuenta] FOREIGN KEY([cod_cuent])
REFERENCES [dbo].[Cuenta] ([cod_cuent])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Cuenta]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_Continente] FOREIGN KEY([cod_conti])
REFERENCES [dbo].[Continente] ([cod_conti])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_Continente]
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD  CONSTRAINT [FK_Profesores_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[Profesores] CHECK CONSTRAINT [FK_Profesores_Terceros]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Region] FOREIGN KEY([cod_reg])
REFERENCES [dbo].[Region] ([cod_reg])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Region]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Pais] FOREIGN KEY([cod_pais])
REFERENCES [dbo].[Pais] ([cod_pais])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Pais]
GO
ALTER TABLE [dbo].[Sector]  WITH CHECK ADD  CONSTRAINT [FK_Sector_Municipio] FOREIGN KEY([cod_muni])
REFERENCES [dbo].[Municipio] ([cod_muni])
GO
ALTER TABLE [dbo].[Sector] CHECK CONSTRAINT [FK_Sector_Municipio]
GO
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_TipoTelefono] FOREIGN KEY([cod_tip])
REFERENCES [dbo].[TipoTelefono] ([cod_tip])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_TipoTelefono]
GO
ALTER TABLE [dbo].[TelefonoVsTerceros]  WITH CHECK ADD  CONSTRAINT [FK_TelefonoVsTerceros_Telefono] FOREIGN KEY([cod_tel])
REFERENCES [dbo].[Telefono] ([cod_tel])
GO
ALTER TABLE [dbo].[TelefonoVsTerceros] CHECK CONSTRAINT [FK_TelefonoVsTerceros_Telefono]
GO
ALTER TABLE [dbo].[TelefonoVsTerceros]  WITH CHECK ADD  CONSTRAINT [FK_TelefonoVsTerceros_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[TelefonoVsTerceros] CHECK CONSTRAINT [FK_TelefonoVsTerceros_Terceros]
GO
ALTER TABLE [dbo].[Terceros]  WITH CHECK ADD  CONSTRAINT [FK_Terceros_Sexo] FOREIGN KEY([cod_sex])
REFERENCES [dbo].[Sexo] ([cod_sex])
GO
ALTER TABLE [dbo].[Terceros] CHECK CONSTRAINT [FK_Terceros_Sexo]
GO
ALTER TABLE [dbo].[Tutor]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[Tutor] CHECK CONSTRAINT [FK_Tutor_Terceros]
GO
ALTER TABLE [dbo].[TutorVsEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_TutorVsEstudiante_Estudiante] FOREIGN KEY([cod_est])
REFERENCES [dbo].[Estudiante] ([cod_est])
GO
ALTER TABLE [dbo].[TutorVsEstudiante] CHECK CONSTRAINT [FK_TutorVsEstudiante_Estudiante]
GO
ALTER TABLE [dbo].[TutorVsEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_TutorVsEstudiante_Tutor] FOREIGN KEY([cod_tut])
REFERENCES [dbo].[Tutor] ([cod_tut])
GO
ALTER TABLE [dbo].[TutorVsEstudiante] CHECK CONSTRAINT [FK_TutorVsEstudiante_Tutor]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Terceros] FOREIGN KEY([cod_ter])
REFERENCES [dbo].[Terceros] ([cod_ter])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Terceros]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_TipoUsuario] FOREIGN KEY([cod_tip])
REFERENCES [dbo].[TipoUsuario] ([cod_tip])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_TipoUsuario]
GO
USE [master]
GO
ALTER DATABASE [Poo] SET  READ_WRITE 
GO
