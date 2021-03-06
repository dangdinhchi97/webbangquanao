USE [yameshop]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 5/31/2019 9:51:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[mahoadon] [int] NOT NULL,
	[machitietsanpham] [int] NOT NULL,
	[soluong] [int] NULL,
	[giatien] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC,
	[machitietsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETKHUYENMAI]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETKHUYENMAI](
	[makhuyenmai] [int] NOT NULL,
	[masanpham] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[makhuyenmai] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[machitietsanpham] [int] IDENTITY(1,1) NOT NULL,
	[masanpham] [int] NOT NULL,
	[masize] [int] NOT NULL,
	[mamau] [int] NOT NULL,
	[soluong] [int] NULL,
	[ngaynhap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[machitietsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[machucvu] [int] IDENTITY(1,1) NOT NULL,
	[tenchucvu] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[machucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUCSANPHAM]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSANPHAM](
	[madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](100) NULL,
	[hinhdanhmuc] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[madanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahoadon] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](100) NULL,
	[sodt] [char](12) NULL,
	[diachigiaohang] [nvarchar](200) NULL,
	[tinhtrang] [bit] NULL,
	[ngaylap] [nvarchar](50) NULL,
	[hinhthucgiaohang] [nvarchar](150) NULL,
	[ghichu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[makhuyenmai] [int] IDENTITY(1,1) NOT NULL,
	[giagiam] [int] NULL,
	[tenkhuyenmai] [nvarchar](200) NULL,
	[thoigianbatdau] [nvarchar](50) NULL,
	[thoigianketthuc] [nvarchar](50) NULL,
	[mota] [text] NULL,
	[hinhkhuyenmai] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[makhuyenmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MAUSANPHAM]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSANPHAM](
	[mamau] [int] IDENTITY(1,1) NOT NULL,
	[tenmau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mamau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](30) NULL,
	[diachi] [nvarchar](500) NULL,
	[cmnd] [char](14) NULL,
	[machucvu] [int] NULL,
	[email] [nvarchar](50) NULL,
	[tendangnhap] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[madanhmuc] [int] NULL,
	[tensanpham] [nvarchar](100) NULL,
	[giatien] [nvarchar](50) NULL,
	[mota] [text] NULL,
	[hinhsanpham] [text] NULL,
	[gianhcho] [nvarchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIZESANPHAM]    Script Date: 5/31/2019 9:51:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZESANPHAM](
	[masize] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (1, 5, 11, N'225,000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (1, 10, 11, N'225,000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (1, 11, 5, N'225,000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (1, 38, 1, N'255,000')
INSERT [dbo].[CHITIETHOADON] ([mahoadon], [machitietsanpham], [soluong], [giatien]) VALUES (1, 40, 1, N'255,000')
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] ON 

INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (4, 2, 1, 1, 15, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (5, 2, 2, 2, 10, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (6, 3, 3, 1, 8, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (10, 2, 1, 1, 30, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (11, 2, 1, 2, 20, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (12, 2, 2, 2, 10, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (17, 3, 1, 1, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (18, 3, 1, 2, 3, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (19, 3, 2, 1, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (20, 3, 3, 2, 3, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (21, 4, 1, 1, 4, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (22, 4, 1, 2, 6, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (23, 4, 2, 1, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (24, 5, 1, 1, 6, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (25, 6, 1, 2, 7, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (26, 7, 1, 1, 7, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (27, 7, 2, 1, 7, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (28, 7, 3, 2, 8, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (29, 7, 2, 2, 8, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (30, 8, 1, 1, 7, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (31, 9, 1, 2, 7, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (32, 10, 2, 2, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (33, 11, 3, 1, 4, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (34, 12, 1, 1, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (35, 13, 1, 5, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (36, 14, 1, 3, 5, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (37, 15, 1, 2, 4, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (38, 16, 1, 2, 3, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (39, 17, 1, 2, 4, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (40, 18, 2, 2, 6, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (41, 19, 1, 2, 6, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (42, 20, 2, 3, 4, N'24/11/2017')
INSERT [dbo].[CHITIETSANPHAM] ([machitietsanpham], [masanpham], [masize], [mamau], [soluong], [ngaynhap]) VALUES (43, 21, 1, 5, 6, N'24/11/2017')
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] ON 

INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (1, N'Áo So Mi', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (2, N'Áo Thun', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (3, N'Qu?n Sort', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (4, N'Ð? Ki?u', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (5, N'Áo Khoác', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (6, N'Áo Ðôi', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (7, N'Áo So Mi Adachi N?', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (8, N'Qu?n Tây', NULL)
INSERT [dbo].[DANHMUCSANPHAM] ([madanhmuc], [tendanhmuc], [hinhdanhmuc]) VALUES (9, N'Qu?n Jean Adachi Nam', NULL)
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([mahoadon], [tenkhachhang], [sodt], [diachigiaohang], [tinhtrang], [ngaylap], [hinhthucgiaohang], [ghichu]) VALUES (1, N'', N'            ', N'', NULL, NULL, N'Giao hÃ ng táº­n nÆ¡i', N'')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] ON 

INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (1, N'Xanh Duong')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (2, N'Xám')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (3, N'Tr?ng')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (4, N'H?ng')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (5, N'Xanh Duong')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (6, N'Xanh Lá')
INSERT [dbo].[MAUSANPHAM] ([mamau], [tenmau]) VALUES (7, N'Xanh Ng?c')
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (2, 1, N'So Mi Nam No Style TD R02', N'225,000', N'- Thi?t k? áo so mi ki?u dáng basic, d? dàng mix v?i nhi?u trang ph?c khác nhau. \n- Ch?t li?u Kate m?m m?n, thoáng mát. \n- Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,..\n- S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng.\n- V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu.', N'b443d8c7-54cc-4500-4a2e-0013ff9ccb91.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (3, 1, N'So Mi Nam No Style TN O02', N'185,000', N'- Thi?t k? áo so mi ki?u dáng basic, d? dàng mix v?i nhi?u trang ph?c khác nhau. \n- Ch?t li?u Kate m?m m?n, thoáng mát. \n- Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,..\n- S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng.\n- V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu.', N'7cb8e2db-a600-9c00-0d22-00140b981d57.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (4, 1, N'So Mi Nam No Style TN L01', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n. \n- Ði?m nh?n ? túi áo và tay áo\n- Ch?t li?u Kate mang l?i c?m giác thoáng mát.\n- Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,..\n- S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng.\n- V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'4364f967-2c49-6600-0912-0013c7dbecf6.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (5, 1, N'So Mi Nam No Style TD ST01', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'd5ebdfa6-2945-2300-e7fe-0013fe31f537.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (6, 1, N'So Mi Nam No Style TN N03', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'71be5178-0fd9-3300-3f2f-001402e4a70d.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (7, 7, N'So Mi Adachi / 0012655', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'd5ebdfa6-2945-2300-e7fe-0013fe31f537.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (8, 7, N'So Mi Adachi / 0012738', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'a4f67968-f23e-0100-8167-00129a10884e.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (9, 7, N'So Mi Adachi / 0012658', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'deec8c60-24e0-2400-041b-001266560db2.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (10, 7, N'So Mi Adachi / 0012658', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'c115c69d-008c-9900-eea8-00125b42fa42.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (11, 7, N'So Mi N? Ada / 0011510', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'235dbdd4-3e4c-0601-d255-0011b3196395.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (12, 7, N'So Mi N? Ada / 0011527', N'225,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'd0876922-7a1a-1000-d878-0011cac12000.jpg', N'nu')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (13, 5, N'Áo Khoác Nam / 0012847', N'350,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'dbd236b7-632a-4d00-e24c-0012c7cebae9.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (14, 5, N'Áo Khoác Nam / 0015281', N'350,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'f68cced6-1260-1800-8aba-0013f7c75d9d.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (15, 8, N'Qu?n Tây Nam / 0013221', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'bc9c9562-4f7b-5000-3996-00130c201f8b.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (16, 8, N'Qu?n Tây Nam / 0013149', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'1a210540-fc63-4f00-8a10-00130c1f9f3e.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (17, 9, N'Qu?n Kaki Na / 0013761', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'6a77c9a8-65a8-7100-099b-00132237c111.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (18, 9, N'Qu?n Jean Na / 0011530', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'14980579-6ccf-4700-8f83-0011bef478d3.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (19, 9, N'Qu?n Jean Na / 0012764', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'f77d145c-d029-c000-b518-0012843a733b.jpg', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (20, 9, N'Qu?n Jean Na / 0013631', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'aa1bf585-0b70-6300-c372-00131679d75e,1771f301-dfcf-6200-1841-00131679d749.gif', N'nam')
INSERT [dbo].[SANPHAM] ([masanpham], [madanhmuc], [tensanpham], [giatien], [mota], [hinhsanpham], [gianhcho]) VALUES (21, 9, N'Qu?n Kaki Na / 0013757', N'255,000', N'- Thi?t k? don gi?n và hi?n d?i v?i so mi tay ng?n.  - Ði?m nh?n ? túi áo và tay áo - Ch?t li?u Kate mang l?i c?m giác thoáng mát. - Cotton ch? y?u trong thành ph?n s?i v?i mang l?i nhi?u tính nang vu?t tr?i: Th?m hút ?m t?t, Không co rút,.. - S? d?ng công ngh? d?t may hi?n d?i h?n ch? t?i da nhan v?i trong s? d?ng. - V?i không nhu?m v?i chì an toàn cho s?c kh?e, nhung v?n ít ra màu', N'cb3e216d-6429-0100-8fd0-00132239b82b.jpg', N'nam')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] ON 

INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (1, N'M')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (2, N'L')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (3, N'XL')
INSERT [dbo].[SIZESANPHAM] ([masize], [size]) VALUES (4, N'XXL')
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] OFF
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_CTSANPHAM] FOREIGN KEY([machitietsanpham])
REFERENCES [dbo].[CHITIETSANPHAM] ([machitietsanpham])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHOADON_CTSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_HOADON] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[HOADON] ([mahoadon])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETKHUYENMAI_KHUYENMAI] FOREIGN KEY([makhuyenmai])
REFERENCES [dbo].[KHUYENMAI] ([makhuyenmai])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_CHITIETKHUYENMAI_KHUYENMAI]
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETKHUYENMAI_SANPHAM] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SANPHAM] ([masanpham])
GO
ALTER TABLE [dbo].[CHITIETKHUYENMAI] CHECK CONSTRAINT [FK_CHITIETKHUYENMAI_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_MAUSANPHAM] FOREIGN KEY([mamau])
REFERENCES [dbo].[MAUSANPHAM] ([mamau])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_MAUSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_SANPHAM] FOREIGN KEY([masanpham])
REFERENCES [dbo].[SANPHAM] ([masanpham])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_SIZE] FOREIGN KEY([masize])
REFERENCES [dbo].[SIZESANPHAM] ([masize])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITIET_SIZE]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([machucvu])
REFERENCES [dbo].[CHUCVU] ([machucvu])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DANHMUCSANPHAM] ([madanhmuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
