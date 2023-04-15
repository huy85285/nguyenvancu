USE [nguyenvancudb]
GO
INSERT [dbo].[ADMINS] ([id], [passwords], [passwords_salt], [lastname], [firstname], [addressid], [phone], [email], [idrank], [date_create], [admin_create], [is_active], [idImg]) VALUES (N'ok', 0x2C65A312CEA884283074B513E0C1512D4B9676D9DA9FB0FBA2B12CC81C68E9E6, 0xB9EEAB0032946D92EEDC5DB2E568A370, N'Võ Thanh', N'Huy', N'q10', N'0988803850', N'vothanhhuytruc@gmail.com', NULL, NULL, NULL, 1, NULL)
GO
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
