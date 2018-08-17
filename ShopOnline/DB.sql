
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
