USE [master]
GO
/****** Object:  Database [nguyenvancudb]    Script Date: 4/17/2023 1:07:13 AM ******/
CREATE DATABASE [nguyenvancudb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nguyenvancudb', FILENAME = N'C:\data\nguyenvancudb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'nguyenvancudb_log', FILENAME = N'C:\data\nguyenvancudb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [nguyenvancudb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [nguyenvancudb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [nguyenvancudb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [nguyenvancudb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [nguyenvancudb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [nguyenvancudb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [nguyenvancudb] SET ARITHABORT OFF 
GO
ALTER DATABASE [nguyenvancudb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [nguyenvancudb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [nguyenvancudb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [nguyenvancudb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [nguyenvancudb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [nguyenvancudb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [nguyenvancudb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [nguyenvancudb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [nguyenvancudb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [nguyenvancudb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [nguyenvancudb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [nguyenvancudb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [nguyenvancudb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [nguyenvancudb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [nguyenvancudb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [nguyenvancudb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [nguyenvancudb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [nguyenvancudb] SET RECOVERY FULL 
GO
ALTER DATABASE [nguyenvancudb] SET  MULTI_USER 
GO
ALTER DATABASE [nguyenvancudb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [nguyenvancudb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [nguyenvancudb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [nguyenvancudb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [nguyenvancudb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [nguyenvancudb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'nguyenvancudb', N'ON'
GO
ALTER DATABASE [nguyenvancudb] SET QUERY_STORE = OFF
GO
USE [nguyenvancudb]
GO
/****** Object:  User [Huy\Votha]    Script Date: 4/17/2023 1:07:14 AM ******/
CREATE USER [Huy\Votha] FOR LOGIN [Huy\Votha] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ADMINS]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINS](
	[id] [varchar](16) NOT NULL,
	[passwords] [varbinary](64) NULL,
	[passwords_salt] [varbinary](64) NULL,
	[lastname] [nvarchar](32) NULL,
	[firstname] [nvarchar](10) NULL,
	[addressid] [nvarchar](100) NULL,
	[phone] [varchar](15) NULL,
	[email] [varchar](32) NULL,
	[idrank] [int] NULL,
	[date_create] [datetime] NULL,
	[admin_create] [varchar](16) NULL,
	[is_active] [bit] NOT NULL,
	[idImg] [int] NULL,
 CONSTRAINT [PK_ADMINS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[iduser] [varchar](16) NOT NULL,
	[idproduct] [int] NOT NULL,
	[COUNT] [int] NULL,
 CONSTRAINT [pk_cart] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC,
	[idproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT](
	[idproduct] [int] NOT NULL,
	[iduser] [varchar](16) NOT NULL,
	[RATE] [float] NOT NULL,
	[COMMENT] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_COMMENT] PRIMARY KEY CLUSTERED 
(
	[idproduct] ASC,
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idcontent] [int] NOT NULL,
	[idImg] [int] NOT NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTENT]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](16) NULL,
	[texts] [nvarchar](1000) NULL,
	[IDADMINS] [varchar](16) NOT NULL,
 CONSTRAINT [PK_CONTENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detailhistorycart]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detailhistorycart](
	[idhistorycart] [int] NOT NULL,
	[idproduct] [int] NOT NULL,
	[COUNT] [int] NULL,
 CONSTRAINT [pk_detailhistorycart] PRIMARY KEY CLUSTERED 
(
	[idhistorycart] ASC,
	[idproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detailproduct]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detailproduct](
	[idproduct] [int] NOT NULL,
	[idproperties] [int] NOT NULL,
	[datas] [nvarchar](1000) NULL,
 CONSTRAINT [PK_detailproduct] PRIMARY KEY CLUSTERED 
(
	[idproduct] ASC,
	[idproperties] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[iduser] [varchar](16) NOT NULL,
	[idproduct] [int] NOT NULL,
 CONSTRAINT [pk_history] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC,
	[idproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historycart]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historycart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [varchar](16) NOT NULL,
	[datecart] [date] NOT NULL,
	[iscomplete] [bit] NULL,
 CONSTRAINT [pk_historycart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMG]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](100) NULL,
	[ten] [nvarchar](50) NULL,
	[owner_id] [varchar](100) NULL,
	[tableowner] [varchar](100) NULL,
	[mota] [varchar](100) NULL,
	[id_LIST_IMG] [int] NULL,
 CONSTRAINT [PK_Img] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIST_IMG]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIST_IMG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](30) NULL,
	[id_user] [varchar](16) NULL,
	[date_update] [date] NULL,
 CONSTRAINT [PK_LIST_IMG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [nvarchar](30) NOT NULL,
	[is_active] [bit] NOT NULL,
	[lv] [int] NOT NULL,
	[menuownerid] [int] NULL,
 CONSTRAINT [PK_menulv1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [nvarchar](30) NULL,
	[price] [int] NULL,
	[ispromotion] [bit] NULL,
	[price_promotion] [int] NULL,
	[is_available] [bit] NULL,
	[idcontent] [int] NOT NULL,
	[idmenu] [int] NULL,
	[idcompany] [int] NULL,
	[idADMINSLASTMDF] [varchar](16) NULL,
	[id_list_img] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[properties]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[properties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [nvarchar](16) NULL,
 CONSTRAINT [PK_properties] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rank]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 4/17/2023 1:07:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [varchar](16) NOT NULL,
	[passwords] [varchar](32) NULL,
	[lastname] [nvarchar](32) NULL,
	[firstname] [nvarchar](10) NULL,
	[addressid] [nvarchar](100) NULL,
	[phone] [varchar](15) NULL,
	[email] [varchar](32) NULL,
	[rank] [nvarchar](20) NULL,
	[datecreate] [datetime] NULL,
	[is_active] [bit] NOT NULL,
	[idImg] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ADMINS] ([id], [passwords], [passwords_salt], [lastname], [firstname], [addressid], [phone], [email], [idrank], [date_create], [admin_create], [is_active], [idImg]) VALUES (N'ok', 0x2C65A312CEA884283074B513E0C1512D4B9676D9DA9FB0FBA2B12CC81C68E9E6, 0xB9EEAB0032946D92EEDC5DB2E568A370, N'Võ Thanh', N'Huy', N'q10', N'0988803850', N'vothanhhuytruc@gmail.com', NULL, NULL, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[CONTENT] ON 
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (2, NULL, N'.', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (3, NULL, N'truyền thuyết đô thị nhật bản', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (4, NULL, N'Tình yêu không hòi kết', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (5, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (6, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (7, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (8, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (9, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (10, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (11, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (12, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (13, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (14, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (15, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (16, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (17, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (18, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (19, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (20, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (21, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (22, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (23, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (24, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (25, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (26, NULL, N'', N'ok')
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (27, NULL, N'', N'ok')
GO
SET IDENTITY_INSERT [dbo].[CONTENT] OFF
GO
SET IDENTITY_INSERT [dbo].[IMG] ON 
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (1, N'tôivàquỷ416202383322PMq2qak4fh35webuke3hfxxodxbanner2.jpg', NULL, NULL, NULL, N'tôi và qu?', 1)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (2, N'ngườiấy416202384805PMtzrmczks3a4c1envht21p53eg11.jpg', NULL, NULL, NULL, N'ngu?i ?y', 2)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (3, N'tìnhcũ416202384905PMtzrmczks3a4c1envht21p53et1.jpg', NULL, NULL, NULL, N'tình cu', 3)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (4, N'anhgià416202384957PMtzrmczks3a4c1envht21p53eg10.jpg', NULL, NULL, NULL, N'anh già', 4)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (5, N'ácquỷ416202385031PMtzrmczks3a4c1envht21p53eg1.jpg', NULL, NULL, NULL, N'ác qu?', 5)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (6, N'hộithánh416202385109PMtzrmczks3a4c1envht21p53et2.jpg', NULL, NULL, NULL, N'h?i thánh', 6)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (7, N'ngườithứ3416202385243PMtzrmczks3a4c1envht21p53eg4.jpg', NULL, NULL, NULL, N'ngu?i th? 3', 7)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (8, N'ngườiiutôi416202385346PMtzrmczks3a4c1envht21p53eg8.jpg', NULL, NULL, NULL, N'ngu?i iu tôi', 8)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (9, N'toánrờirạc416202385429PMtzrmczks3a4c1envht21p53eg11.jpg', NULL, NULL, NULL, N'toán r?i r?c', 9)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (10, N'mónquànoel416202385554PMtzrmczks3a4c1envht21p53eg2.jpg', NULL, NULL, NULL, N'món quà noel', 10)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (11, N'giángsinhtacónhau416202385626PMtzrmczks3a4c1envht21p53eg3.jpg', NULL, NULL, NULL, N'giáng sinh ta có nhau', 11)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (12, N'malairútruột416202385714PMtzrmczks3a4c1envht21p53eg8.jpg', NULL, NULL, NULL, N'ma lai rút ru?t', 12)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (13, N'mario416202385814PMtzrmczks3a4c1envht21p53eg6.jpg', NULL, NULL, NULL, N'mario ', 13)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (14, N'helo416202393534PMrkk5cf30l5y0uutos1j5wartg5.jpg', NULL, NULL, NULL, N'helo', 16)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (15, N'huy416202393627PMrkk5cf30l5y0uutos1j5wartg10.jpg', NULL, NULL, NULL, N'huy', 17)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (16, N'minhkiệtmất416202393711PMrkk5cf30l5y0uutos1j5wartg9.jpg', NULL, NULL, NULL, N'minh ki?t m?t', 18)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (17, N'trườnghọctôi416202393831PMrkk5cf30l5y0uutos1j5wartt2.jpg', NULL, NULL, NULL, N'tru?ng h?c tôi', 19)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (18, N'anhtôi416202394013PMrkk5cf30l5y0uutos1j5warttest3.jpg', NULL, NULL, NULL, N'anh tôi ', 20)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (19, N'chịtôi416202394100PMrkk5cf30l5y0uutos1j5warttest2.jpg', NULL, NULL, NULL, N'ch? tôi', 21)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (20, N'đạigiacailậy416202394334PMrkk5cf30l5y0uutos1j5wartg11.jpg', NULL, NULL, NULL, N'd?i gia cai l?y', 22)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (21, N'xuynghĩđạigia416202394453PMrkk5cf30l5y0uutos1j5wartt1.jpg', NULL, NULL, NULL, N'xuy nghi d?i gia ', 23)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (22, N'côngtybestnow416202394646PMrkk5cf30l5y0uutos1j5wartnext.png', NULL, NULL, NULL, N'công ty best now', 24)
GO
INSERT [dbo].[IMG] ([id], [link], [ten], [owner_id], [tableowner], [mota], [id_LIST_IMG]) VALUES (23, N'Viếtmực4162023114047PMpntmuzbmwttpk5rfxqheumfdg9.jpg', NULL, NULL, NULL, N'Vi?t m?c', 25)
GO
SET IDENTITY_INSERT [dbo].[IMG] OFF
GO
SET IDENTITY_INSERT [dbo].[LIST_IMG] ON 
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (1, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (2, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (3, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (4, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (5, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (6, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (7, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (8, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (9, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (10, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (11, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (12, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (13, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (15, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (16, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (17, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (18, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (19, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (20, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (21, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (22, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (23, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (24, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
INSERT [dbo].[LIST_IMG] ([id], [class], [id_user], [date_update]) VALUES (25, N'ADMINS', N'ok', CAST(N'2023-04-16' AS Date))
GO
SET IDENTITY_INSERT [dbo].[LIST_IMG] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (76, N'THẾ GIỚI SÁCH', 0, 1, NULL)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (77, N'VĂN PHÒNG PHẨM', 0, 1, NULL)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (78, N'BÁCH HOÁ NGUYỄN VĂN CỪ', 0, 1, NULL)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (79, N'IN NHANH KỸ THUẬT SỐ', 0, 1, NULL)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (80, N'Văn Học', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (81, N'Công Nghệ-Thiết Bị', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (82, N'Giáo khoa-Tham Khảo', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (83, N'Cuộc Sống Quanh Ta', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (84, N'Kinh Tế-Chính Trị-Pháp Luật', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (85, N'Sách Ngoại Văn', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (86, N'Thiếu Nhi', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (87, N'Tâm Lý-Kỹ Năng Sống', 0, 2, 76)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (88, N'Tiếu Thuyết', 0, 3, 80)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (89, N'Truyện Ngắn - Ngôn Tình', 0, 3, 80)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (90, N'Trinh Thám', 0, 3, 80)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (91, N'Giả Tuong-Huyến Bí-Kinh Dị', 0, 3, 80)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (92, N'Tiểu Sử - Hồi Ký', 0, 3, 80)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (93, N'Sách Giáo Khoa', 0, 3, 82)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (94, N'Sách Học Ngoại Ngữ', 0, 3, 82)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (95, N'Sách Đại Học', 0, 3, 82)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (96, N'Combo Rèn Luyện Trẻ', 0, 3, 82)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (97, N'Sách Tham Khảo Các Lớp', 0, 3, 82)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (98, N'Cấp 1', 0, 4, 97)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (99, N'Cấp 2', 0, 4, 97)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (100, N'Cấp 3', 0, 4, 97)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (101, N'CƠ KHÍ', 0, 3, 81)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (102, N'TIN HỌC', 0, 3, 81)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (103, N'KIẾN TRÚC - XÂY DỰNG', 0, 3, 81)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (104, N'KINH TẾ', 0, 3, 84)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (105, N'CHÍNH TRỊ', 0, 3, 84)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (106, N'TÀI CHÍNH', 0, 3, 84)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (107, N'PHÁP LUẬT', 0, 3, 84)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (108, N'MANGA', 0, 3, 86)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (109, N'BÁCH KHOA THIẾU NHI', 0, 3, 86)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (110, N'SÁCH TIẾNG ANH THIẾU NHI', 0, 3, 86)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (111, N'TẬP TÔ MÀU', 0, 3, 86)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (112, N'LUYỆN CHỮ', 0, 3, 86)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (113, N'ÂM NHẠC', 0, 3, 83)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (114, N'ẨM THỰC', 0, 3, 83)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (115, N'NGHỆ THUẬT', 0, 3, 83)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (116, N'DU LỊCH', 0, 3, 83)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (117, N'PHẬT GIÁO', 0, 3, 83)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (118, N'TÂM LÝ', 0, 3, 87)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (119, N'KỸ NĂNG SỐNG', 0, 3, 87)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (120, N'DỤNG CỤ HỌC SINH', 0, 2, 77)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (121, N'THIẾT BỊ VĂN PHÒNG', 0, 2, 77)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (122, N'THIẾT BỊ TRƯỜNG HỌC', 0, 2, 77)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (123, N'BÚT VIẾT', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (124, N'BÚT BI', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (125, N'BÚT CHÌ', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (126, N'BÚT DẠ QUANG', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (127, N'BÚT GEL', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (128, N'BÚT KIỂU', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (129, N'BÚT LÔNG BẢNG', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (130, N'BÚT MÁY', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (131, N'BÚT MÀU', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (132, N'BÚT VẼ', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (133, N'BÚT XÓA', 0, 4, 123)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (134, N'TẬP VỞ', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (135, N'THƯỚC KẺ', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (136, N'GÔM TẨY', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (137, N'BỘ DỤNG CỤ HỌC SINH', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (138, N'RUỘT CHỈ BẤM', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (139, N'MỰC VIẾT', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (140, N'BÓP VIẾT - HỘP BÚT', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (141, N'NHÃN VỞ', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (142, N'CHUỐT BÚT CHÌ', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (143, N'GIẤY GHI CHÚ (NOTE)', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (144, N'MÁY TÍNH', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (145, N'MÀU NƯỚC', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (146, N'SỎ TAY CÁC LOẠI', 0, 3, 120)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (147, N'SỔ TAY NOTEBOOK', 0, 4, 146)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (148, N'BÌA - KHAY HỒ SƠ', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (149, N'GIẤY IN', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (150, N'GHIM GIẤY - KIM BẤM', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (151, N'BÌA TRÌNH KÝ', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (152, N'BĂNG KEO', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (153, N'BÚT LÔNG BÀNG', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (154, N'KEO - HỒ DÁN', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (155, N'HÓA ĐƠN', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (156, N'KÉO', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (157, N'MENU - KỆ MICA', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (158, N'ĐÈN BÀN', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (159, N'BẢNG LỚN', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (160, N'BÀN HỌC SINH', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (161, N'QUẢ ĐỊA CẦU', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (162, N'GIÁ VẼ', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (163, N'GIÁ - KỆ', 0, 3, 121)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (164, N'PHỤ KIỆN', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (165, N'LƯU NIỆM', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (166, N'BALO - CẶP - TÚI', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (167, N'ĐỒ CHƠI', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (168, N'LỊCH CÁC NĂM', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (169, N'MẮT KÍNH', 0, 3, 164)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (170, N'ĐỒNG HỒ', 0, 3, 164)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (171, N'PHỤ KIÊN', 0, 3, 164)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (172, N'LƯU NIÊM', 0, 2, 78)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (173, N'HỘP QUÀ', 0, 3, 172)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (174, N'TÚI GIẤY', 0, 3, 172)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (175, N'GIẤY GÓI QUÀ', 0, 3, 172)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (176, N'ĐỒ LƯU NIỆM', 0, 3, 172)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (177, N'ẤN PHẦM VẬT DỤNG THEO YÊU CẦU', 0, 2, 79)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (178, N'ẤN PHẨM CĂN PHÒNG THEO YÊU CẦU', 0, 2, 79)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (179, N'DANH THIẾP', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (180, N'VÉ GIỮ XE', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (181, N'BIỂU MẪU - CẢBONLESS', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (182, N'GIẤY LÓT BẦN ĂN', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (183, N'LỊCH CÁC LOẠI', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (184, N'BAO LÌ XÌ', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (185, N'GIẤY KHEN', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (186, N'IN THẺ TỪ', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (187, N'GIẤY GHI CHÚ', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (188, N'THIỆP MỜI - THIỆP CƯỚI', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (189, N'THIỆP MỜI - TIỆC HỘI NGHỊ', 0, 4, 188)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (190, N'THIỆP CƯỚI', 0, 3, 178)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (191, N'ÁO ĐỒNG PHỤC', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (192, N'MENU', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (193, N'LY SỨ', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (194, N'ĐẾ LÓT LY', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (195, N'IN TRÊN NHỰA', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (196, N'BAO ĐŨA - BAO MUỖNG', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (197, N'TEM BẢO HÀNH - PHIẾU BẢO HÀNH', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (198, N'HÓA ĐƠN BÁN LẺ', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (199, N'IN BAO BÌ - TÚI NILON', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (200, N'TEM BẢO HÀNH', 0, 4, 197)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (201, N'PHIẾU BẢO HÀNH', 0, 4, 197)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (202, N'QUẠT CẦM TAY', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (203, N'IN ẢNH', 0, 3, 177)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (204, N'PHOTOBOOK', 0, 4, 203)
GO
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (205, N'BƯU ẢNH', 0, 4, 203)
GO
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (4, N'tôi và quỷ', 40, 1, 0, 1, 3, 92, NULL, N'ok', 1)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (5, N'người ấy', 20, 1, 0, 1, 4, 76, NULL, N'ok', 2)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (6, N'tình cũ', 60, 1, 0, 1, 5, 76, NULL, N'ok', 3)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (7, N'anh già', 80, 1, 0, 1, 6, 76, NULL, N'ok', 4)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (8, N'ác quỷ', 100, 1, 0, 1, 7, 76, NULL, N'ok', 5)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (9, N'hội thánh', 100, 1, 0, 1, 8, 88, NULL, N'ok', 6)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (10, N'người thứ 3', 200, 1, 10, 1, 9, 83, NULL, N'ok', 7)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (11, N'người iu tôi', 30, 1, 0, 1, 10, 83, NULL, N'ok', 8)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (12, N'toán rời rạc', 60, 1, 0, 1, 11, 93, NULL, N'ok', 9)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (13, N'món quà noel', 49, 1, 0, 1, 12, 83, NULL, N'ok', 10)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (14, N'giáng sinh ta có nhau', 50, 1, 0, 1, 13, 83, NULL, N'ok', 11)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (15, N'ma lai rút ruột', 45, 1, 0, 1, 14, 91, NULL, N'ok', 12)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (16, N'mario ', 56, 1, 0, 1, 15, 83, NULL, N'ok', 13)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (17, N'câu chuyện 3h sáng', 59, 1, 0, 1, 16, 83, NULL, N'ok', NULL)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (18, N'hi myseft', 60, 0, 0, 1, 17, 76, NULL, N'ok', NULL)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (19, N'helo', 30, 0, 0, 1, 18, 76, NULL, N'ok', 16)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (20, N'huy', 87, 1, 0, 1, 19, 76, NULL, N'ok', 17)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (21, N'minh kiệt mất', 300, 1, 21, 1, 20, 76, NULL, N'ok', 18)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (22, N'trường học tôi', 89, 1, 0, 1, 21, 89, NULL, N'ok', 19)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (23, N'anh tôi ', 87, 1, 0, 1, 22, 82, NULL, N'ok', 20)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (24, N'chị tôi', 76, 1, 0, 1, 23, 86, NULL, N'ok', 21)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (25, N'đại gia cai lậy', 87, 1, 0, 1, 24, 86, NULL, N'ok', 22)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (26, N'xuy nghĩ đại gia ', 56, 1, 0, 1, 25, 81, NULL, N'ok', 23)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (27, N'công ty best now', 60, 1, 0, 1, 26, 84, NULL, N'ok', 24)
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF], [id_list_img]) VALUES (28, N'Viết mực', 5, 0, 0, 1, 27, 123, NULL, N'ok', 25)
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[properties] ON 
GO
INSERT [dbo].[properties] ([id], [names]) VALUES (1, N'Loại bìa')
GO
INSERT [dbo].[properties] ([id], [names]) VALUES (2, N'Năm xuất bản')
GO
INSERT [dbo].[properties] ([id], [names]) VALUES (3, N'Tác giả')
GO
SET IDENTITY_INSERT [dbo].[properties] OFF
GO
/****** Object:  Index [UQ__historyc__3214EC06D91C566B]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[historycart] ADD UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__historyc__3214EC06DD71A3A4]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[historycart] ADD UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__IMG__A2692381D154F4C3]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[IMG] ADD UNIQUE NONCLUSTERED 
(
	[link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__IMG__A2692381F1758B34]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[IMG] ADD UNIQUE NONCLUSTERED 
(
	[link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__properti__F0B628823A35034F]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[properties] ADD UNIQUE NONCLUSTERED 
(
	[names] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__properti__F0B6288297F9E5AE]    Script Date: 4/17/2023 1:07:14 AM ******/
ALTER TABLE [dbo].[properties] ADD UNIQUE NONCLUSTERED 
(
	[names] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINS] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((0)) FOR [ispromotion]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [is_available]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[ADMINS]  WITH CHECK ADD  CONSTRAINT [FK_ADMINS_ADMINS] FOREIGN KEY([admin_create])
REFERENCES [dbo].[ADMINS] ([id])
GO
ALTER TABLE [dbo].[ADMINS] CHECK CONSTRAINT [FK_ADMINS_ADMINS]
GO
ALTER TABLE [dbo].[ADMINS]  WITH CHECK ADD  CONSTRAINT [FK_Img_ADMINS] FOREIGN KEY([idImg])
REFERENCES [dbo].[IMG] ([id])
GO
ALTER TABLE [dbo].[ADMINS] CHECK CONSTRAINT [FK_Img_ADMINS]
GO
ALTER TABLE [dbo].[ADMINS]  WITH CHECK ADD  CONSTRAINT [FK_rank_ADMINS] FOREIGN KEY([idrank])
REFERENCES [dbo].[rank] ([id])
GO
ALTER TABLE [dbo].[ADMINS] CHECK CONSTRAINT [FK_rank_ADMINS]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_product_cart] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_product_cart]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_user_cart] FOREIGN KEY([iduser])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_user_cart]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_product_COMMENT] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_product_COMMENT]
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_USER_COMMENT] FOREIGN KEY([iduser])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_USER_COMMENT]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_CONTENT_company] FOREIGN KEY([idcontent])
REFERENCES [dbo].[CONTENT] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_CONTENT_company]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_Img_company] FOREIGN KEY([idImg])
REFERENCES [dbo].[IMG] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_Img_company]
GO
ALTER TABLE [dbo].[CONTENT]  WITH CHECK ADD  CONSTRAINT [FK_ADMINS_CONTENT] FOREIGN KEY([IDADMINS])
REFERENCES [dbo].[ADMINS] ([id])
GO
ALTER TABLE [dbo].[CONTENT] CHECK CONSTRAINT [FK_ADMINS_CONTENT]
GO
ALTER TABLE [dbo].[detailhistorycart]  WITH CHECK ADD  CONSTRAINT [FK_historycart_detailhistorycart] FOREIGN KEY([idhistorycart])
REFERENCES [dbo].[historycart] ([Id])
GO
ALTER TABLE [dbo].[detailhistorycart] CHECK CONSTRAINT [FK_historycart_detailhistorycart]
GO
ALTER TABLE [dbo].[detailhistorycart]  WITH CHECK ADD  CONSTRAINT [FK_product_detailhistorycart] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[detailhistorycart] CHECK CONSTRAINT [FK_product_detailhistorycart]
GO
ALTER TABLE [dbo].[detailproduct]  WITH CHECK ADD  CONSTRAINT [FK_product_detailproduct] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[detailproduct] CHECK CONSTRAINT [FK_product_detailproduct]
GO
ALTER TABLE [dbo].[detailproduct]  WITH CHECK ADD  CONSTRAINT [FK_properties_detailproduct] FOREIGN KEY([idproperties])
REFERENCES [dbo].[properties] ([id])
GO
ALTER TABLE [dbo].[detailproduct] CHECK CONSTRAINT [FK_properties_detailproduct]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_product_history] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_product_history]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_user_history] FOREIGN KEY([iduser])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_user_history]
GO
ALTER TABLE [dbo].[historycart]  WITH CHECK ADD  CONSTRAINT [FK_user_historycart] FOREIGN KEY([iduser])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[historycart] CHECK CONSTRAINT [FK_user_historycart]
GO
ALTER TABLE [dbo].[IMG]  WITH CHECK ADD  CONSTRAINT [FK_list_img_Img] FOREIGN KEY([id_LIST_IMG])
REFERENCES [dbo].[LIST_IMG] ([id])
GO
ALTER TABLE [dbo].[IMG] CHECK CONSTRAINT [FK_list_img_Img]
GO
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [FK_menu_menu] FOREIGN KEY([menuownerid])
REFERENCES [dbo].[menu] ([id])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [FK_menu_menu]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_ADMINS_product] FOREIGN KEY([idADMINSLASTMDF])
REFERENCES [dbo].[ADMINS] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_ADMINS_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_company_product] FOREIGN KEY([idcompany])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_company_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_CONTENT_product] FOREIGN KEY([idcontent])
REFERENCES [dbo].[CONTENT] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_CONTENT_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_list_img_product] FOREIGN KEY([id_list_img])
REFERENCES [dbo].[LIST_IMG] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_list_img_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_menu_product] FOREIGN KEY([idmenu])
REFERENCES [dbo].[menu] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_menu_product]
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_Img_USERS] FOREIGN KEY([idImg])
REFERENCES [dbo].[IMG] ([id])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_Img_USERS]
GO
USE [master]
GO
ALTER DATABASE [nguyenvancudb] SET  READ_WRITE 
GO
