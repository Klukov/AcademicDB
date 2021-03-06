USE [master]
GO
/****** Object:  Database [Dyplom]    Script Date: 06/02/2018 01:33:14 ******/
CREATE DATABASE [Dyplom] ON  PRIMARY 
( NAME = N'Dyplom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Dyplom.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dyplom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Dyplom_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dyplom] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dyplom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dyplom] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Dyplom] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Dyplom] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Dyplom] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Dyplom] SET ARITHABORT OFF
GO
ALTER DATABASE [Dyplom] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Dyplom] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Dyplom] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Dyplom] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Dyplom] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Dyplom] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Dyplom] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Dyplom] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Dyplom] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Dyplom] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Dyplom] SET  DISABLE_BROKER
GO
ALTER DATABASE [Dyplom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Dyplom] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Dyplom] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Dyplom] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Dyplom] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Dyplom] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Dyplom] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Dyplom] SET  READ_WRITE
GO
ALTER DATABASE [Dyplom] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Dyplom] SET  MULTI_USER
GO
ALTER DATABASE [Dyplom] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Dyplom] SET DB_CHAINING OFF
GO
USE [Dyplom]
GO
/****** Object:  Table [dbo].[Wydziały]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wydziały](
	[id wydziału] [tinyint] NOT NULL,
	[nazwa wydzialu] [varchar](100) NOT NULL,
	[skrót wydziału] [varchar](50) NULL,
 CONSTRAINT [PK_Wydziały] PRIMARY KEY CLUSTERED 
(
	[id wydziału] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[typ studiów]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[typ studiów](
	[id typu studiów] [tinyint] NOT NULL,
	[poziom studiów] [varchar](20) NOT NULL,
	[dzienne czy zaoczne] [varchar](10) NOT NULL,
 CONSTRAINT [PK_typ studiów] PRIMARY KEY CLUSTERED 
(
	[id typu studiów] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[numer indeksu] [bigint] NOT NULL,
	[imię] [varchar](10) NOT NULL,
	[nazwisko] [varchar](20) NOT NULL,
	[pesel] [bigint] NOT NULL,
	[data urodzenia] [date] NOT NULL,
	[adres] [varchar](100) NULL,
	[drugie imię] [varchar](10) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[numer indeksu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stopien naukowy]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stopien naukowy](
	[id stopnia] [tinyint] NOT NULL,
	[stopień] [varchar](100) NOT NULL,
	[skrót] [varchar](30) NOT NULL,
 CONSTRAINT [PK_stopien naukowy] PRIMARY KEY CLUSTERED 
(
	[id stopnia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[słowo kluczowe]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[słowo kluczowe](
	[id słowa] [bigint] NOT NULL,
	[słowo kluczowe] [varchar](50) NOT NULL,
 CONSTRAINT [PK_słowo kluczowe] PRIMARY KEY CLUSTERED 
(
	[id słowa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kierunek Studiów]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kierunek Studiów](
	[id kierunku] [tinyint] NOT NULL,
	[nazwa kierunku] [varchar](100) NOT NULL,
	[id wydziału] [tinyint] NOT NULL,
	[id typ studiów] [tinyint] NOT NULL,
 CONSTRAINT [PK_Kierunek Studiów] PRIMARY KEY CLUSTERED 
(
	[id kierunku] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pracownik Naukowy]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pracownik Naukowy](
	[Id pracownika] [int] NOT NULL,
	[Imię] [varchar](50) NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
	[id stopień naukowy] [tinyint] NOT NULL,
	[id wydziału] [tinyint] NOT NULL,
 CONSTRAINT [PK_Pracownik Naukowy] PRIMARY KEY CLUSTERED 
(
	[Id pracownika] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Pracownik Naukowy] ON [dbo].[Pracownik Naukowy] 
(
	[Id pracownika] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Praca Dyplomowa]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Praca Dyplomowa](
	[id pracy dyplomowej] [bigint] NOT NULL,
	[tytuł] [varchar](max) NOT NULL,
	[id kierunek] [tinyint] NOT NULL,
	[id promotor] [int] NOT NULL,
	[ocena promotora] [float] NOT NULL,
	[ocena końcowa pracy] [float] NOT NULL,
 CONSTRAINT [PK_Praca Dyplomowa] PRIMARY KEY CLUSTERED 
(
	[id pracy dyplomowej] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Słownik]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Słownik](
	[id pracy dyplomowej] [bigint] NOT NULL,
	[id słowa kluczowego] [bigint] NOT NULL,
 CONSTRAINT [PK_Słownik] PRIMARY KEY CLUSTERED 
(
	[id pracy dyplomowej] ASC,
	[id słowa kluczowego] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recenzja]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recenzja](
	[id pracy dyplomowej] [bigint] NOT NULL,
	[id recenzenta] [int] NOT NULL,
	[ocena recenzji] [float] NOT NULL,
	[komentarz] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Recenzja] PRIMARY KEY CLUSTERED 
(
	[id pracy dyplomowej] ASC,
	[id recenzenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obrona]    Script Date: 06/02/2018 01:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obrona](
	[id studenta] [bigint] NOT NULL,
	[id pracy dyplomowej] [bigint] NOT NULL,
	[termin obrony] [date] NOT NULL,
	[id przewodniczacego komisji] [int] NOT NULL,
	[Ocena końcowa] [float] NULL,
 CONSTRAINT [PK_Obrona] PRIMARY KEY CLUSTERED 
(
	[id studenta] ASC,
	[id pracy dyplomowej] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Kierunek Studiów_typ studiów]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Kierunek Studiów]  WITH CHECK ADD  CONSTRAINT [FK_Kierunek Studiów_typ studiów] FOREIGN KEY([id typ studiów])
REFERENCES [dbo].[typ studiów] ([id typu studiów])
GO
ALTER TABLE [dbo].[Kierunek Studiów] CHECK CONSTRAINT [FK_Kierunek Studiów_typ studiów]
GO
/****** Object:  ForeignKey [FK_Kierunek Studiów_Wydziały]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Kierunek Studiów]  WITH CHECK ADD  CONSTRAINT [FK_Kierunek Studiów_Wydziały] FOREIGN KEY([id wydziału])
REFERENCES [dbo].[Wydziały] ([id wydziału])
GO
ALTER TABLE [dbo].[Kierunek Studiów] CHECK CONSTRAINT [FK_Kierunek Studiów_Wydziały]
GO
/****** Object:  ForeignKey [FK_Pracownik Naukowy_stopien naukowy]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Pracownik Naukowy]  WITH CHECK ADD  CONSTRAINT [FK_Pracownik Naukowy_stopien naukowy] FOREIGN KEY([id stopień naukowy])
REFERENCES [dbo].[stopien naukowy] ([id stopnia])
GO
ALTER TABLE [dbo].[Pracownik Naukowy] CHECK CONSTRAINT [FK_Pracownik Naukowy_stopien naukowy]
GO
/****** Object:  ForeignKey [FK_Pracownik Naukowy_Wydziały]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Pracownik Naukowy]  WITH CHECK ADD  CONSTRAINT [FK_Pracownik Naukowy_Wydziały] FOREIGN KEY([id wydziału])
REFERENCES [dbo].[Wydziały] ([id wydziału])
GO
ALTER TABLE [dbo].[Pracownik Naukowy] CHECK CONSTRAINT [FK_Pracownik Naukowy_Wydziały]
GO
/****** Object:  ForeignKey [FK_Praca Dyplomowa_Kierunek Studiów]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Praca Dyplomowa]  WITH CHECK ADD  CONSTRAINT [FK_Praca Dyplomowa_Kierunek Studiów] FOREIGN KEY([id kierunek])
REFERENCES [dbo].[Kierunek Studiów] ([id kierunku])
GO
ALTER TABLE [dbo].[Praca Dyplomowa] CHECK CONSTRAINT [FK_Praca Dyplomowa_Kierunek Studiów]
GO
/****** Object:  ForeignKey [FK_Praca Dyplomowa_Pracownik Naukowy]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Praca Dyplomowa]  WITH CHECK ADD  CONSTRAINT [FK_Praca Dyplomowa_Pracownik Naukowy] FOREIGN KEY([id promotor])
REFERENCES [dbo].[Pracownik Naukowy] ([Id pracownika])
GO
ALTER TABLE [dbo].[Praca Dyplomowa] CHECK CONSTRAINT [FK_Praca Dyplomowa_Pracownik Naukowy]
GO
/****** Object:  ForeignKey [FK_Słownik_Praca Dyplomowa]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Słownik]  WITH CHECK ADD  CONSTRAINT [FK_Słownik_Praca Dyplomowa] FOREIGN KEY([id pracy dyplomowej])
REFERENCES [dbo].[Praca Dyplomowa] ([id pracy dyplomowej])
GO
ALTER TABLE [dbo].[Słownik] CHECK CONSTRAINT [FK_Słownik_Praca Dyplomowa]
GO
/****** Object:  ForeignKey [FK_Słownik_słowo kluczowe]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Słownik]  WITH CHECK ADD  CONSTRAINT [FK_Słownik_słowo kluczowe] FOREIGN KEY([id słowa kluczowego])
REFERENCES [dbo].[słowo kluczowe] ([id słowa])
GO
ALTER TABLE [dbo].[Słownik] CHECK CONSTRAINT [FK_Słownik_słowo kluczowe]
GO
/****** Object:  ForeignKey [FK_Recenzja_Praca Dyplomowa]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Recenzja]  WITH CHECK ADD  CONSTRAINT [FK_Recenzja_Praca Dyplomowa] FOREIGN KEY([id pracy dyplomowej])
REFERENCES [dbo].[Praca Dyplomowa] ([id pracy dyplomowej])
GO
ALTER TABLE [dbo].[Recenzja] CHECK CONSTRAINT [FK_Recenzja_Praca Dyplomowa]
GO
/****** Object:  ForeignKey [FK_Recenzja_Pracownik Naukowy]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Recenzja]  WITH CHECK ADD  CONSTRAINT [FK_Recenzja_Pracownik Naukowy] FOREIGN KEY([id recenzenta])
REFERENCES [dbo].[Pracownik Naukowy] ([Id pracownika])
GO
ALTER TABLE [dbo].[Recenzja] CHECK CONSTRAINT [FK_Recenzja_Pracownik Naukowy]
GO
/****** Object:  ForeignKey [FK_Obrona_Praca Dyplomowa]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Obrona]  WITH CHECK ADD  CONSTRAINT [FK_Obrona_Praca Dyplomowa] FOREIGN KEY([id pracy dyplomowej])
REFERENCES [dbo].[Praca Dyplomowa] ([id pracy dyplomowej])
GO
ALTER TABLE [dbo].[Obrona] CHECK CONSTRAINT [FK_Obrona_Praca Dyplomowa]
GO
/****** Object:  ForeignKey [FK_Obrona_Pracownik Naukowy1]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Obrona]  WITH CHECK ADD  CONSTRAINT [FK_Obrona_Pracownik Naukowy1] FOREIGN KEY([id przewodniczacego komisji])
REFERENCES [dbo].[Pracownik Naukowy] ([Id pracownika])
GO
ALTER TABLE [dbo].[Obrona] CHECK CONSTRAINT [FK_Obrona_Pracownik Naukowy1]
GO
/****** Object:  ForeignKey [FK_Obrona_Student]    Script Date: 06/02/2018 01:33:14 ******/
ALTER TABLE [dbo].[Obrona]  WITH CHECK ADD  CONSTRAINT [FK_Obrona_Student] FOREIGN KEY([id studenta])
REFERENCES [dbo].[Student] ([numer indeksu])
GO
ALTER TABLE [dbo].[Obrona] CHECK CONSTRAINT [FK_Obrona_Student]
GO
