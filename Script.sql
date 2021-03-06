USE [master]
GO
/****** Object:  Database [Assignment_PRJ]    Script Date: 03/25/2022 00:25:59 ******/
CREATE DATABASE [Assignment_PRJ] ON  PRIMARY 
( NAME = N'Assignment_PRJ', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Assignment_PRJ.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assignment_PRJ_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Assignment_PRJ_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assignment_PRJ] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment_PRJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Assignment_PRJ] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Assignment_PRJ] SET ARITHABORT OFF
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Assignment_PRJ] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Assignment_PRJ] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Assignment_PRJ] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Assignment_PRJ] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Assignment_PRJ] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Assignment_PRJ] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Assignment_PRJ] SET  ENABLE_BROKER
GO
ALTER DATABASE [Assignment_PRJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Assignment_PRJ] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Assignment_PRJ] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Assignment_PRJ] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Assignment_PRJ] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Assignment_PRJ] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Assignment_PRJ] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Assignment_PRJ] SET  READ_WRITE
GO
ALTER DATABASE [Assignment_PRJ] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Assignment_PRJ] SET  MULTI_USER
GO
ALTER DATABASE [Assignment_PRJ] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Assignment_PRJ] SET DB_CHAINING OFF
GO
USE [Assignment_PRJ]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
	[cimage] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([cateID], [cname], [cimage]) VALUES (1, N'RING', N'./images/cat1.jpg')
INSERT [dbo].[Category] ([cateID], [cname], [cimage]) VALUES (2, N'EARRINGS', N'./images/cat2.jpg')
INSERT [dbo].[Category] ([cateID], [cname], [cimage]) VALUES (3, N'NECKPLACE', N'./images/cat3.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (1, N'user1', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (2, N'user2', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (3, N'user3', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (4, N'admin1', N'123456', 1)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (5, N'admin2', N'123456', 1)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (6, N'user4', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (7, N'user5', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (8, N'user6', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (9, N'user7', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (10, N'user8', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (11, N'user9', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (12, N'user10', N'123456', 0)
INSERT [dbo].[Account] ([accID], [username], [password], [isAdmin]) VALUES (13, N'clone1', N'123456', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON
INSERT [dbo].[OrderStatus] ([id], [status]) VALUES (1, N'đang xử lí')
INSERT [dbo].[OrderStatus] ([id], [status]) VALUES (2, N'đã xác nhận')
INSERT [dbo].[OrderStatus] ([id], [status]) VALUES (3, N'đang giao hàng')
INSERT [dbo].[OrderStatus] ([id], [status]) VALUES (4, N'giao hàng thành công')
INSERT [dbo].[OrderStatus] ([id], [status]) VALUES (5, N'đã hủy')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
/****** Object:  Table [dbo].[Shipping]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'a', N'a', N'a')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'ab', N'24141', N'av')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'Huy Long', N'0364946845', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'Long', N'0123456', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'Nam', N'0987654321', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'Huong', N'01241241', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'Huy', N'033126786412', N'Nghe An')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'Tuấn', N'124153456', N'Quảng Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'Dũng', N'145532523', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'Nguyễn Huy Long', N'0123456789', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'Nguyễn Huy Long', N'0123456789', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'Nguyễn Huy Long', N'0123456789', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, N'Nguyễn Huy Long', N'0123456789', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[acc_id] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[cimage] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([id], [acc_id], [first_name], [last_name], [email], [address], [phone], [cimage]) VALUES (1, 1, N'Lê Trần Hoàng', N'Giang', N'giang@gmail.com', N'Nam Định', N'0123456789', N'https://img.hoidap247.com/picture/question/20200508/large_1588936738888.jpg')
INSERT [dbo].[Customer] ([id], [acc_id], [first_name], [last_name], [email], [address], [phone], [cimage]) VALUES (2, 2, N'Định Thị Xuân', N'Quỳnh', N'quynh@gmail.com', N'Bình Dương', N'0234567891', N'https://img.hoidap247.com/picture/question/20210504/large_1620138861738.jpg')
INSERT [dbo].[Customer] ([id], [acc_id], [first_name], [last_name], [email], [address], [phone], [cimage]) VALUES (3, 3, N'Trần Văn', N'Hào', N'hao@gmail.com', N'Hà Nội', N'0345678912', N'https://hinhnen123.com/wp-content/uploads/2021/06/avt-cap-doi-6.jpg')
INSERT [dbo].[Customer] ([id], [acc_id], [first_name], [last_name], [email], [address], [phone], [cimage]) VALUES (4, 4, N'Nguyễn Huy', N'Long', N'long@gmail.com', N'Hà Nội', N'0456789123', N'https://i.imgur.com/e121Kzu.jpg')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[product]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
	[price] [float] NOT NULL,
	[cateID] [int] NOT NULL,
	[description] [nvarchar](1500) NOT NULL,
	[quantity] [int] NULL,
	[sale] [bit] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (1, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 3, N'Chất liệu: Mặt hợp kim titan trắng đúc không gỉ , dây hợp kim chống gỉ', 100, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (2, N'Nhẫn thời trang  Helios Triquetra', N'./images/ring1.jpg', 5, 1, N'Chất liệu: Hợp kim Titan trắng, mạ màu khi đúc, cực bền màu', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (3, N'Khuyên tai bạc HeliSilver B', N'./images/earring1.jpg', 10, 2, N'Chất liệu: Được chế tác thủ công từ bạc s925 mix đá CZ', 100, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (4, N'Dây chuyền Helios Cross Bling', N'./images/neckplace2.jpg', 7.5, 3, N'Chất liệu : Mặt hợp kim titan trắng đúc không gỉ , dây hợp kim chống gỉ ', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (5, N'Nhẫn bạc Double Arrow', N'./images/ring2.jpg', 5, 1, N'Chất liệu : Mặt hợp kim titan trắng đúc không gỉ , dây hợp kim chống gỉ ', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (6, N'Nhẫn bạc Helios Lotusgot', N'./images/ring3.jpg', 10, 1, N'Chất liệu : Mặt hợp kim titan trắng đúc không gỉ , dây hợp kim chống gỉ ', 100, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (7, N'Khuyên tai bạc Compass', N'./images/earring2.jpg', 10, 2, N'Chất liệu: Được chế tác thủ công từ bạc s925 mix đá CZ', 100, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (8, N'Dây chuyền Helios Hexagram', N'./images/neckplace3.jpg', 7.5, 3, N'Chất liệu : đá nguyên khối', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (9, N'Khuyên tai bạc ANKH Key', N'./images/earring3.jpg', 5, 2, N'Chất liệu: Được chế tác thủ công từ bạc s925 mix đá CZ', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (10, N'Nhẫn bạc WAY BLING', N'./images/ring4.jpg', 10, 1, N'Chất liệu: Được chế tác thủ công từ bạc s925 mix đá CZ', 100, 0)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (11, N'Khuyên tai bạc Cross Hope', N'./images/earring4.jpg', 5, 2, N'Chất liệu: Được chế tác thủ công từ bạc s925 mix đá CZ', 100, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (12, N'Dây chuyền  Helios Aborigines', N'./images/neckplace4.jpg', 15, 3, N'Chất liệu : Mặt hợp kim titan trắng đúc không gỉ , dây hợp kim chống gỉ ', 100, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [cateID], [description], [quantity], [sale]) VALUES (27, N'b', N'https://d1hjkbq40fs2x4.cloudfront.net/2016-01-31/files/1045.jpg', 7.5, 1, N'a', 100, 0)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (2, 13, 35, N'giao buoi chieu', CAST(0xB6430B00 AS Date), 4, 4)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (3, 13, 30, N'Giao buoi sang', CAST(0xB6430B00 AS Date), 5, 4)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (4, 13, 37.5, N'Giao buổi sáng', CAST(0xB6430B00 AS Date), 6, 3)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (5, 1, 15, N'Hàng dễ vỡ', CAST(0xB6430B00 AS Date), 7, 3)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (6, 2, 5, N'Giao buổi chiều', CAST(0xB6430B00 AS Date), 8, 5)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (7, 2, 15, N'Hàng dễ vỡ', CAST(0xB6430B00 AS Date), 9, 2)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (8, 4, 35, N'Hàng dễ vỡ', CAST(0xBB430B00 AS Date), 10, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status_id]) VALUES (9, 1, 0, N'giao buoi chieu', CAST(0x9A430B00 AS Date), 3, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OderDetail]    Script Date: 03/25/2022 00:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productname] [nvarchar](100) NULL,
	[productimage] [nvarchar](50) NULL,
	[productprice] [float] NULL,
	[quantity] [int] NULL,
	[pid] [int] NULL,
 CONSTRAINT [PK_OderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OderDetail] ON
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (1, 3, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (2, 3, N'Nhẫn thời trang  Helios Triquetra', N'./images/ring1.jpg', 5, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (3, 3, N'Khuyên tai bạc HeliSilver B', N'./images/earring1.jpg', 10, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (4, 4, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (5, 4, N'Nhẫn thời trang  Helios Triquetra', N'./images/ring1.jpg', 5, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (6, 4, N'Khuyên tai bạc HeliSilver B', N'./images/earring1.jpg', 10, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (7, 4, N'Dây chuyền Helios Cross Bling', N'./images/neckplace2.jpg', 7.5, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (8, 5, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (9, 6, N'Nhẫn thời trang  Helios Triquetra', N'./images/ring1.jpg', 5, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (10, 7, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (11, 8, N'Dây chuyền Helios Sao David', N'./images/neckplace1.jpg', 15, 2, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (12, 8, N'Nhẫn thời trang  Helios Triquetra', N'./images/ring1.jpg', 5, 1, NULL)
INSERT [dbo].[OderDetail] ([id], [order_id], [productname], [productimage], [productprice], [quantity], [pid]) VALUES (15, 9, N'Dây chuyền Helios Cross Bling', N'./images/neckplace2.jpg', 7.5, 1, NULL)
SET IDENTITY_INSERT [dbo].[OderDetail] OFF
/****** Object:  Default [DF_Orders_created_date]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([acc_id])
REFERENCES [dbo].[Account] ([accID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_product_Category]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
/****** Object:  ForeignKey [FK_Orders_Account]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([accID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
/****** Object:  ForeignKey [FK_Orders_Order Status]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[OrderStatus] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Order Status]
GO
/****** Object:  ForeignKey [FK_Orders_Shipping]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
/****** Object:  ForeignKey [FK_OderDetail_Orders]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[OderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OderDetail] CHECK CONSTRAINT [FK_OderDetail_Orders]
GO
/****** Object:  ForeignKey [FK_OderDetail_product]    Script Date: 03/25/2022 00:26:00 ******/
ALTER TABLE [dbo].[OderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OderDetail_product] FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[OderDetail] CHECK CONSTRAINT [FK_OderDetail_product]
GO
