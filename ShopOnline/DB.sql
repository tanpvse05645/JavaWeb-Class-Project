USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 8/17/2018 10:45:56 PM ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopOnline', N'ON'
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/17/2018 10:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](80) NULL,
	[Account_Detail_Id] [int] NULL,
	[Role_ID] [int] NULL,
	[Status] [int] NULL,
	[Create_Date] [date] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Detail]    Script Date: 8/17/2018 10:45:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Phone_Number] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Account_Detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/17/2018 10:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 8/17/2018 10:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Email], [Password], [Account_Detail_Id], [Role_ID], [Status], [Create_Date]) VALUES (2, N'admin@gmail.com', N'123456', 1, 1, 1, CAST(N'2018-08-10' AS Date))
INSERT [dbo].[Account] ([Id], [Email], [Password], [Account_Detail_Id], [Role_ID], [Status], [Create_Date]) VALUES (3, N'anhdt@gmail.com', N'123456', 2, 2, 1, CAST(N'2018-08-10' AS Date))
INSERT [dbo].[Account] ([Id], [Email], [Password], [Account_Detail_Id], [Role_ID], [Status], [Create_Date]) VALUES (4, N'phuongnh@gmail.com', N'123456', 3, 2, 2, CAST(N'2018-08-10' AS Date))
INSERT [dbo].[Account] ([Id], [Email], [Password], [Account_Detail_Id], [Role_ID], [Status], [Create_Date]) VALUES (5, N'nhatle@gmail.com', N'123456', 4, 3, 3, CAST(N'2018-08-10' AS Date))
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Account_Detail] ON 

INSERT [dbo].[Account_Detail] ([Id], [Name], [Phone_Number], [Gender], [Address]) VALUES (1, N'Tô Hoàng Anh', N'01645090445', 1, N'hung yen')
INSERT [dbo].[Account_Detail] ([Id], [Name], [Phone_Number], [Gender], [Address]) VALUES (2, N'Đinh Tuấn Anh', N'01646352891', 1, N'nghe an')
INSERT [dbo].[Account_Detail] ([Id], [Name], [Phone_Number], [Gender], [Address]) VALUES (3, N'Nguyễn Hữu Phương', N'1234567432', 1, N'hung yen')
INSERT [dbo].[Account_Detail] ([Id], [Name], [Phone_Number], [Gender], [Address]) VALUES (4, N'Trương Nhật Lệ', N'0163424728', 0, N'hung yen')
SET IDENTITY_INSERT [dbo].[Account_Detail] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Customer')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Status]) VALUES (1, N'Active')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (2, N'Pending')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (3, N'Deactive')
SET IDENTITY_INSERT [dbo].[Status] OFF
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Creat_Date]  DEFAULT (getdate()) FOR [Create_Date]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
