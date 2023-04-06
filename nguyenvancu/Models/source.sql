USE [nguyenvancudb]
GO
/****** Object:  Table [dbo].[ADMINS]    Script Date: 06/04/2023 11:58:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINS](
	[id] [varchar](16) NOT NULL,
	[passwords] [varbinary](64) NULL,
	[passwords_salt] [varbinary](64) NULL,
	[lastname] [varchar](32) NULL,
	[firstname] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[cart]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[COMMENT]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[company]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[CONTENT]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[detailhistorycart]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[detailproduct]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[history]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[historycart]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[IMG]    Script Date: 06/04/2023 11:58:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [varchar](100) NULL,
	[ten] [nvarchar](50) NULL,
	[owner_id] [varchar](100) NULL,
	[tableowner] [varchar](100) NULL,
	[mota] [varchar](100) NULL,
 CONSTRAINT [PK_Img] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIST_IMG]    Script Date: 06/04/2023 11:58:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIST_IMG](
	[idproduct] [int] NOT NULL,
	[idImg] [int] NOT NULL,
 CONSTRAINT [PK_LIST_IMG] PRIMARY KEY CLUSTERED 
(
	[idproduct] ASC,
	[idImg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 06/04/2023 11:58:36 CH ******/
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
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[properties]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[rank]    Script Date: 06/04/2023 11:58:36 CH ******/
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
/****** Object:  Table [dbo].[USERS]    Script Date: 06/04/2023 11:58:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [varchar](16) NOT NULL,
	[passwords] [varchar](32) NULL,
	[lastname] [varchar](32) NULL,
	[firstname] [varchar](10) NULL,
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
INSERT [dbo].[ADMINS] ([id], [passwords], [passwords_salt], [lastname], [firstname], [addressid], [phone], [email], [idrank], [date_create], [admin_create], [is_active], [idImg]) VALUES (N'ok', 0x2C65A312CEA884283074B513E0C1512D4B9676D9DA9FB0FBA2B12CC81C68E9E6, 0xB9EEAB0032946D92EEDC5DB2E568A370, N'V? Thanh', N'Huy', N'q10', N'0988803850', N'vothanhhuytruc@gmail.com', NULL, NULL, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[CONTENT] ON 
GO
INSERT [dbo].[CONTENT] ([id], [title], [texts], [IDADMINS]) VALUES (2, NULL, N'.', N'ok')
GO
SET IDENTITY_INSERT [dbo].[CONTENT] OFF
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
INSERT [dbo].[menu] ([id], [names], [is_active], [lv], [menuownerid]) VALUES (206, N'ac', 0, 2, 79)
GO
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([id], [names], [price], [ispromotion], [price_promotion], [is_available], [idcontent], [idmenu], [idcompany], [idADMINSLASTMDF]) VALUES (3, N'abc', NULL, 0, NULL, 1, 2, NULL, NULL, NULL)
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CONTENT__E52A1BB355664EA8]    Script Date: 06/04/2023 11:58:36 CH ******/
ALTER TABLE [dbo].[CONTENT] ADD UNIQUE NONCLUSTERED 
(
	[title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__historyc__3214EC0683B610F4]    Script Date: 06/04/2023 11:58:36 CH ******/
ALTER TABLE [dbo].[historycart] ADD UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__IMG__A26923811A01E383]    Script Date: 06/04/2023 11:58:36 CH ******/
ALTER TABLE [dbo].[IMG] ADD UNIQUE NONCLUSTERED 
(
	[link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__properti__F0B62882017A591A]    Script Date: 06/04/2023 11:58:36 CH ******/
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
ALTER TABLE [dbo].[LIST_IMG]  WITH CHECK ADD  CONSTRAINT [FK_Img_LISTIMG] FOREIGN KEY([idImg])
REFERENCES [dbo].[IMG] ([id])
GO
ALTER TABLE [dbo].[LIST_IMG] CHECK CONSTRAINT [FK_Img_LISTIMG]
GO
ALTER TABLE [dbo].[LIST_IMG]  WITH CHECK ADD  CONSTRAINT [FK_product_LISTIMG] FOREIGN KEY([idproduct])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[LIST_IMG] CHECK CONSTRAINT [FK_product_LISTIMG]
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
