USE [nguyenvancudb]
GO
/****** Object:  Table [dbo].[ADMINS]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[cart]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[COMMENT]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[company]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[CONTENT]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[detailhistorycart]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[detailproduct]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[history]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[historycart]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[IMG]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[LIST_IMG]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[menu]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[properties]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[rank]    Script Date: 4/6/2023 10:35:31 PM ******/
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
/****** Object:  Table [dbo].[USERS]    Script Date: 4/6/2023 10:35:31 PM ******/
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
INSERT [dbo].[ADMINS] ([id], [passwords], [passwords_salt], [lastname], [firstname], [addressid], [phone], [email], [idrank], [date_create], [admin_create], [is_active], [idImg]) VALUES (N'ok', 0x2C65A312CEA884283074B513E0C1512D4B9676D9DA9FB0FBA2B12CC81C68E9E6, 0xB9EEAB0032946D92EEDC5DB2E568A370, N'Võ Thanh', N'Huy', N'q10', N'0988803850', N'vothanhhuytruc@gmail.com', NULL, NULL, NULL, 1, NULL)
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
/****** Object:  Index [UQ__CONTENT__E52A1BB35D77B02E]    Script Date: 4/6/2023 10:35:32 PM ******/
ALTER TABLE [dbo].[CONTENT] ADD UNIQUE NONCLUSTERED 
(
	[title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__historyc__3214EC06F0E54072]    Script Date: 4/6/2023 10:35:32 PM ******/
ALTER TABLE [dbo].[historycart] ADD UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__IMG__A26923819709E342]    Script Date: 4/6/2023 10:35:32 PM ******/
ALTER TABLE [dbo].[IMG] ADD UNIQUE NONCLUSTERED 
(
	[link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__properti__F0B62882FC10CDF3]    Script Date: 4/6/2023 10:35:32 PM ******/
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
