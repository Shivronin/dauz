USE [master]
GO
/****** Object:  Database [Demka_B]    Script Date: 20.06.2024 1:47:21 ******/
CREATE DATABASE [Demka_B]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demka_B', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Demka_B.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demka_B_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Demka_B_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Demka_B] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demka_B].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demka_B] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demka_B] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demka_B] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demka_B] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demka_B] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demka_B] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demka_B] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demka_B] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demka_B] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demka_B] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demka_B] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demka_B] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demka_B] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demka_B] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demka_B] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demka_B] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demka_B] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demka_B] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demka_B] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demka_B] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demka_B] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demka_B] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demka_B] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Demka_B] SET  MULTI_USER 
GO
ALTER DATABASE [Demka_B] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demka_B] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demka_B] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demka_B] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Demka_B] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Demka_B] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Demka_B] SET QUERY_STORE = OFF
GO
USE [Demka_B]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](50) NOT NULL,
	[MasterID] [int] NOT NULL,
	[RequestID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [date] NOT NULL,
	[TechTypeID] [int] NOT NULL,
	[TechModel] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[RequestStatusID] [int] NOT NULL,
	[CompleteDate] [date] NULL,
	[RepairParts] [nvarchar](200) NULL,
	[MasterID] [int] NULL,
	[ClientID] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestStatus]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_RequestStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechType]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TechType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20.06.2024 1:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([ID], [Message], [MasterID], [RequestID]) VALUES (1, N'Всё сделаем!', 2, 1)
INSERT [dbo].[Comments] ([ID], [Message], [MasterID], [RequestID]) VALUES (2, N'Всё сделаем!', 3, 2)
INSERT [dbo].[Comments] ([ID], [Message], [MasterID], [RequestID]) VALUES (3, N'Починим в момент.', 3, 3)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (1, CAST(N'2024-06-19' AS Date), 2, N'2', N'цвф', 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (2, CAST(N'2023-05-05' AS Date), 1, N'Electrolux EACS/I-09HAT/N3_21Y белый', N'Выключается сам по себе', 2, NULL, NULL, 3, 8)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (3, CAST(N'2022-07-07' AS Date), 2, N'Xiaomi Smart Humidifier 2', N'Пар имеет неприятный запах', 3, CAST(N'2023-01-01' AS Date), NULL, 3, 9)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (4, CAST(N'2023-08-02' AS Date), 2, N'Polaris PUH 2300 WIFI IQ Home', N'Увлажнитель воздуха продолжает работать при предельном снижении уровня воды', 1, NULL, NULL, NULL, 8)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (5, CAST(N'2023-08-02' AS Date), 3, N'Ballu BAHD-1250', N'Не работает', 1, NULL, NULL, NULL, 9)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (6, CAST(N'2024-06-19' AS Date), 3, N'TestModel', N'Не работает', 1, NULL, NULL, NULL, 7)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (7, CAST(N'2024-06-19' AS Date), 1, N'123', N'132', 1, NULL, NULL, NULL, 2)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (8, CAST(N'2024-06-19' AS Date), 1, N'не дует', N'сушка', 1, NULL, NULL, NULL, 7)
INSERT [dbo].[Request] ([ID], [StartDate], [TechTypeID], [TechModel], [Description], [RequestStatusID], [CompleteDate], [RepairParts], [MasterID], [ClientID]) VALUES (13, CAST(N'0001-01-01' AS Date), 1, N'111', N'1313', 1, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestStatus] ON 

INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (1, N'Новая заявка')
INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (2, N'В процессе ремонта')
INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (3, N'Готова к выдаче')
SET IDENTITY_INSERT [dbo].[RequestStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Менеджер
')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Специалист
')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Оператор
')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (4, N'Заказчик
')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[TechType] ON 

INSERT [dbo].[TechType] ([ID], [Name]) VALUES (1, N'Кондиционер')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (2, N'Увлажнитель воздуха')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (3, N'Сушилка для рук')
SET IDENTITY_INSERT [dbo].[TechType] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (1, N'Широков', N'Василий', N'Матвеевич', N'89210563128', N'login1', N'pass1', 1)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (2, N'Кудрявцева', N'Ева', N'Ивановна', N'89535078985', N'login2', N'pass2', 2)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (3, N'Гончарова', N'Ульяна', N'Ярославовна', N'89210673849', N'login3', N'pass3', 2)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (4, N'Гусева', N'Виктория', N'Данииловна', N'89990563748', N'login4', N'pass4', 3)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (5, N'Баранов', N'Артём', N'Юрьевич', N'89994563847', N'login5', N'pass5', 3)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (6, N'Овчинников', N'Фёдор', N'Никитич', N'89219567849', N'login6', N'pass6', 4)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (7, N'Петров', N'Никита', N'Артёмович', N'89219567841', N'login7', N'pass7', 4)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (8, N'Ковалева', N'Софья', N'Владимировна', N'89219567842', N'login8', N'pass8', 4)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (9, N'Кузнецов', N'Сергей', N'Матвеевич', N'89219567843', N'login9', N'pass9', 4)
INSERT [dbo].[Users] ([ID], [LastName], [FirstName], [MiddleName], [Phone], [Login], [Password], [RoleID]) VALUES (10, N'Беспалова', N'Екатерина', N'Даниэльевна', N'89219567844', N'login10', N'pass10', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Request]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([MasterID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_RequestStatus] FOREIGN KEY([RequestStatusID])
REFERENCES [dbo].[RequestStatus] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_RequestStatus]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TechType] FOREIGN KEY([TechTypeID])
REFERENCES [dbo].[TechType] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TechType]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Users] FOREIGN KEY([MasterID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Users]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Users1] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Users1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [Demka_B] SET  READ_WRITE 
GO
