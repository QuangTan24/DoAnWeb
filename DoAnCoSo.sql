USE [master]
GO
/****** Object:  Database [DoAnFull]    Script Date: 30/05/2022 1:24:09 CH ******/
CREATE DATABASE [DoAnFull]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAnFull', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnFull.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoAnFull_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnFull_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DoAnFull] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAnFull].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAnFull] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAnFull] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAnFull] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAnFull] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAnFull] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAnFull] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAnFull] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAnFull] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAnFull] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAnFull] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAnFull] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAnFull] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAnFull] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAnFull] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAnFull] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoAnFull] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAnFull] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAnFull] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAnFull] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAnFull] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAnFull] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAnFull] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAnFull] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAnFull] SET  MULTI_USER 
GO
ALTER DATABASE [DoAnFull] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAnFull] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAnFull] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAnFull] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAnFull] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAnFull] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DoAnFull] SET QUERY_STORE = OFF
GO
USE [DoAnFull]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GopY]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GopY](
	[MaGopY] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [varchar](15) NULL,
	[YKien] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GopY] PRIMARY KEY CLUSTERED 
(
	[MaGopY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayMua] [date] NOT NULL,
	[NgayGiaoHang] [date] NULL,
	[ThanhTien] [float] NOT NULL,
	[TinhTrangGiao] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[SDT] [varchar](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[NgaySinh] [date] NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[SDT] [varchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[SoNgayLam] [int] NOT NULL,
	[Luong] [float] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhSP] [varchar](50) NULL,
	[GiaSP] [float] NOT NULL,
	[TonKho] [int] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[HanSuDung] [date] NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanQuanLy]    Script Date: 30/05/2022 1:24:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanQuanLy](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoanQuanLy] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GopY] ON 

INSERT [dbo].[GopY] ([MaGopY], [HoTen], [SDT], [YKien]) VALUES (1, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[GopY] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [NgaySinh]) VALUES (1, N'Đoàn Trung H', N'hieu', N'123456', N'doantrunghieu472@gmail.com', N'0852775564', N'Long An', CAST(N'2001-05-16' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [NgaySinh]) VALUES (2, N'Nguyễn Quang T', N'tan', N'123456', N'duck@gmail.com', N'0123654987', N'Long An', CAST(N'2001-10-14' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TaiKhoan], [MatKhau], [Email], [SDT], [DiaChi], [NgaySinh]) VALUES (3, N'Nguyễn Văn C', N'c', N'123456', N'123456@gmail.com', N'', N'', CAST(N'2001-02-07' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (1, N'Đông lạnh')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (2, N'Tươi sống')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (1, N'Công Ty TNHH DinoGoose', N'HCM', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (2, N'Công Ty Cổ Phần Hoa Sen', N'HCM', NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [ChucVu], [SDT], [Email], [SoNgayLam], [Luong]) VALUES (1, N'Nguyễn Thị D', N'Nữ', CAST(N'1999-07-29' AS Date), N'Bán hàng', N'', N'', 27, 5940000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [ChucVu], [SDT], [Email], [SoNgayLam], [Luong]) VALUES (2, N'Nguyễn Văn A', N'Nam', CAST(N'2001-03-19' AS Date), N'Kho', NULL, NULL, 25, 5000000)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [AnhSP], [GiaSP], [TonKho], [NgayNhap], [HanSuDung], [MaLoai], [MaNCC]) VALUES (2, N'Gà Đông Lạnh', N'Gà nguyên con xuất xứ từ Việt Nam, được chế biến và bảo quản theo phương pháp đông lạnh. ', N'GaDongLanh.jpg', 120000, 300, CAST(N'2022-05-27' AS Date), CAST(N'2022-06-30' AS Date), 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [AnhSP], [GiaSP], [TonKho], [NgayNhap], [HanSuDung], [MaLoai], [MaNCC]) VALUES (4, N'Trứng Gà', N'Trứng gà từ những con gà mái khỏe mạnh nhất Việt Nam', N'TrungGa.jpg', 3000, 500, CAST(N'2022-05-27' AS Date), CAST(N'2022-07-20' AS Date), 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [AnhSP], [GiaSP], [TonKho], [NgayNhap], [HanSuDung], [MaLoai], [MaNCC]) VALUES (5, N'Trứng Vịt', N'Trứng của những con vịt khỏe mạnh nhất Việt Nam', N'TrungVit.jpg', 4000, 400, CAST(N'2022-05-27' AS Date), CAST(N'2022-07-10' AS Date), 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [AnhSP], [GiaSP], [TonKho], [NgayNhap], [HanSuDung], [MaLoai], [MaNCC]) VALUES (6, N'Ức Gà', N'Ức của con gà :v', N'UcGa.jpg', 50000, 200, CAST(N'2022-05-29' AS Date), CAST(N'2022-06-29' AS Date), 1, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [AnhSP], [GiaSP], [TonKho], [NgayNhap], [HanSuDung], [MaLoai], [MaNCC]) VALUES (7, N'Gà Xốt Đóng Hộp', N'Gà băm ra đóng vô hộp', N'GaDongHop.jpg', 30000, 250, CAST(N'2022-05-29' AS Date), CAST(N'2022-08-20' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanQuanLy] ON 

INSERT [dbo].[TaiKhoanQuanLy] ([MaTK], [TenTK], [MatKhau]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[TaiKhoanQuanLy] OFF
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [DoAnFull] SET  READ_WRITE 
GO
