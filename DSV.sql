USE [master]
GO
/****** Object:  Database [DiemSinhVienDienLuc]    Script Date: 1/5/2021 11:28:31 AM ******/
CREATE DATABASE [DiemSinhVienDienLuc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DiemSinhVienDienLuc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DiemSinhVienDienLuc.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DiemSinhVienDienLuc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DiemSinhVienDienLuc_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiemSinhVienDienLuc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET RECOVERY FULL 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET  MULTI_USER 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DiemSinhVienDienLuc]
GO
/****** Object:  Table [dbo].[BangChuyennganh]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangChuyennganh](
	[makhoa] [nvarchar](100) NOT NULL,
	[machuyennganh] [nvarchar](100) NOT NULL,
	[tenchuyennganh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[machuyennganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangDiemSinhVien]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiemSinhVien](
	[masv] [nvarchar](100) NULL,
	[mamon] [nvarchar](100) NULL,
	[diemlan1] [float] NULL,
	[diemlan2] [float] NULL,
	[diemthiketthuc] [float] NULL,
	[diemtbhe10] [float] NULL,
	[diemtbhe4] [float] NULL,
	[ghichu] [nvarchar](300) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangKhoa]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangKhoa](
	[makhoa] [nvarchar](100) NOT NULL,
	[tenkhoa] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangLop]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangLop](
	[malop] [nvarchar](100) NOT NULL,
	[tenlop] [nvarchar](100) NOT NULL,
	[machuyennganh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangMonhoc]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangMonhoc](
	[mamon] [nvarchar](100) NOT NULL,
	[tenmon] [nvarchar](100) NOT NULL,
	[tinchi] [int] NOT NULL,
	[machuyennganh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BangTongKetDiemSinhVien]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangTongKetDiemSinhVien](
	[masv] [nvarchar](100) NULL,
	[tongtinchi] [int] NULL,
	[diemtbhe10] [float] NULL,
	[tbchungtichluy] [float] NULL,
	[ghichu] [nvarchar](300) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[taikhoan] [nvarchar](50) NOT NULL,
	[tennguoidung] [nvarchar](100) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[quyendn] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyensinhvien]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyensinhvien](
	[taikhoan] [nvarchar](50) NULL,
	[masv] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[masv] [nvarchar](100) NOT NULL,
	[tensv] [nvarchar](100) NOT NULL,
	[gioitinh] [nvarchar](5) NOT NULL,
	[ngaysinh] [date] NOT NULL,
	[quequan] [nvarchar](30) NOT NULL,
	[malop] [nvarchar](100) NOT NULL,
	[tenlop] [nvarchar](100) NOT NULL,
	[tenchuyennganh] [nvarchar](100) NOT NULL,
	[tenkhoa] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BangChuyennganh] ([makhoa], [machuyennganh], [tenchuyennganh]) VALUES (N'DDL-CNTT', N'CNTT-CNPM', N'Công Nghệ Phần Mềm')
INSERT [dbo].[BangChuyennganh] ([makhoa], [machuyennganh], [tenchuyennganh]) VALUES (N'DDL-CNTT', N'CNTT-QTANM', N'Quản Trị An Ninh Mạng')
INSERT [dbo].[BangChuyennganh] ([makhoa], [machuyennganh], [tenchuyennganh]) VALUES (N'DDL-CNTT', N'CNTT-TMDT', N'Hệ Thống Thương Mại Điện Tử')
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'TA', 10, 9, 7, 6.8, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'TCC', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'TD', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'TRR', 7, 9, 8.5, 8.15, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300197', N'TA', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300197', N'TCC', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300197', N'TD', 3, 5, 4, 3.9, 0.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300197', N'TRR', 6, 7, 9, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300197', N'NMTH', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300198', N'TA', 7, 4, 9, 7.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300198', N'TCC', 8, 4, 8, 7.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300198', N'TD', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300198', N'TRR', 9, 8, 8, 8.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300198', N'NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300199', N'TA', 5, 6, 7, 6.2, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300199', N'TCC', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300199', N'TD', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300199', N'TRR', 7, 6, 9, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300199', N'NMTH', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300200', N'TA', 7, 4, 8, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300200', N'TCC', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300200', N'TD', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300200', N'TRR', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300200', N'NMTH', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300201', N'TA', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300201', N'TCC', 7, 5, 8, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300201', N'TD', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300201', N'TRR', 8, 4, 8, 7.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300201', N'NMTH', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300202', N'TA', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300202', N'TCC', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300202', N'TD', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300202', N'TRR', 7, 5, 8, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300202', N'NMTH', 5, 4, 6, 5.3, 1.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300203', N'TA', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300203', N'TCC', 6, 9, 9, 8.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300203', N'TD', 7, 7, 7, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300203', N'TRR', 6, 6, 6, 6, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300203', N'NMTH', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300204', N'TA', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300204', N'TCC', 7.5, 7, 8, 7.65, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300204', N'TD', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300204', N'NMTH', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300205', N'TA', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300205', N'TCC', 7, 5, 8, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300205', N'TD', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300205', N'TRR', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300205', N'NMTH', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300206', N'TA', 7, 3, 8, 6.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300206', N'TCC', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300206', N'TD', 7, 4, 8, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300206', N'TRR', 8, 6, 8, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300206', N'NMTH', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300207', N'TA', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300207', N'TCC', 7, 0, 8, 6.1, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300207', N'TD', 7, 4, 7, 6.4, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300207', N'TRR', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300207', N'NMTH', 6, 5, 8, 6.8, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300208', N'TA', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300208', N'TCC', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300208', N'TD', 8, 6, 8, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300208', N'TRR', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300208', N'NMTH', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300209', N'TA', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300209', N'TCC', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300209', N'TD', 8, 7, 8, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300209', N'TRR', 9.5, 4.5, 8.5, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300209', N'NMTH', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300210', N'TA', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300210', N'TCC', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300210', N'TD', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300210', N'TRR', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300232', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300233', N'CTDLVGT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300233', N'QTANM-MMT', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300233', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300234', N'CTDLVGT', 7, 7, 6, 6.5, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300234', N'QTANM-MMT', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300234', N'QTANM-NMTH', 7, 8, 7, 7.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300211', N'CTDLVGT', 6, 7, 8, 7.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300211', N'QTANM-MMT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300211', N'QTANM-NMTH', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300212', N'CTDLVGT', 3, 4, 5, 4.2, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300212', N'QTANM-MMT', 7, 0, 10, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300212', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300213', N'CTDLVGT', 5, 3, 6, 5.1, 1.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300213', N'QTANM-MMT', 7, 7, 7, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300213', N'QTANM-NMTH', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300214', N'CTDLVGT', 6, 9, 9, 8.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300214', N'QTANM-MMT', 8, 8, 7, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300214', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300215', N'CTDLVGT', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300215', N'QTANM-MMT', 9, 8, 8, 8.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300215', N'QTANM-NMTH', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300217', N'CTDLVGT', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300217', N'QTANM-MMT', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300217', N'QTANM-NMTH', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300218', N'CTDLVGT', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300218', N'QTANM-MMT', 6, 6, 8, 7, 3, NULL)
GO
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300218', N'QTANM-NMTH', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300219', N'CTDLVGT', 7, 7, 7, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300219', N'QTANM-MMT', 8, 7, 9, 8.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300219', N'QTANM-NMTH', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300220', N'CTDLVGT', 5, 3, 5, 4.6, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300220', N'QTANM-MMT', 6, 8, 7, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300220', N'QTANM-NMTH', 7, 6, 9, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300221', N'CTDLVGT', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300221', N'QTANM-MMT', 10, 10, 10, 10, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300221', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300222', N'CTDLVGT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300222', N'QTANM-MMT', 8, 6, 7, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300222', N'QTANM-NMTH', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300223', N'CTDLVGT', 8, 7, 8, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300223', N'QTANM-MMT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300223', N'QTANM-NMTH', 7, 9, 9, 8.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300224', N'CTDLVGT', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300224', N'QTANM-MMT', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300224', N'QTANM-NMTH', 10, 10, 10, 10, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'CTDLVGT', 6, 10, 9, 8.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'QTANM-MMT', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'QTANM-NMTH', 8, 9, 7, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'CTDLVGT', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'QTANM-MMT', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300225', N'QTANM-NMTH', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300226', N'CTDLVGT', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300226', N'QTANM-MMT', 4, 3, 3, 3.3, 0.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300226', N'QTANM-NMTH', 6, 6, 7, 6.5, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300227', N'CTDLVGT', 8, 7, 9, 8.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300227', N'QTANM-MMT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300227', N'QTANM-NMTH', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300228', N'CTDLVGT', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300228', N'QTANM-MMT', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300228', N'QTANM-NMTH', 0, 0, 0, 0, 0, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300229', N'CTDLVGT', 5, 5, 6, 5.5, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300229', N'QTANM-MMT', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300229', N'QTANM-NMTH', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300230', N'CTDLVGT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300230', N'QTANM-MMT', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300230', N'QTANM-NMTH', 3, 4, 5, 4.2, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300231', N'CTDLVGT', 7, 7, 7, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300231', N'QTANM-MMT', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300231', N'QTANM-NMTH', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300232', N'CTDLVGT', 6, 7, 9, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300232', N'QTANM-MMT', 7, 8, 9, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300180', N'NMTH', 7, 4, 8, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300180', N'TA', 5, 6, 9, 7.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300180', N'TCC', 5, 6, 7, 6.2, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300180', N'TD', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300180', N'TRR', 5, 5, 4, 4.5, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300181', N'NMTH', 5, 4, 5, 4.8, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300181', N'TA', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300181', N'TCC', 3, 4, 9, 6.2, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300181', N'TD', 9, 5, 10, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300181', N'TRR', 5, 6, 6, 5.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300182', N'NMTH', 6, 6, 8, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300182', N'TA', 4, 4, 5, 4.5, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300182', N'TCC', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300182', N'TD', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300182', N'TRR', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300183', N'NMTH', 10, 10, 10, 10, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300183', N'TA', 4, 8, 8, 6.8, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300183', N'TCC', 5, 7, 9, 7.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300183', N'TD', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300183', N'TRR', 4, 8, 9, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300184', N'NMTH', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300184', N'TA', 6, 9, 8, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300184', N'TCC', 7.5, 7.5, 8, 7.75, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300184', N'TD', 7.25, 8.5, 9.5, 8.63, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300184', N'TRR', 8, 9.5, 8.5, 8.55, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300185', N'NMTH', 4, 6, 9, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300185', N'TA', 5, 8, 8.5, 7.35, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300185', N'TCC', 7.5, 8.5, 9, 8.45, NULL, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300185', N'TD', 7, 8, 4, 5.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300185', N'TRR', 4, 5, 9, 6.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300186', N'NMTH', 5, 8, 9, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300186', N'TA', 4.5, 4, 5, 4.65, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300186', N'TCC', 4, 8, 9, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300186', N'TD', 7, 5, 7, 6.6, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300186', N'TRR', 10, 10, 9, 9.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300187', N'NMTH', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300187', N'TA', 9, 9, 6, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300187', N'TCC', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300187', N'TD', 7.5, 4.5, 9, 7.65, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300187', N'TRR', 6, 8, 8, 7.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300188', N'NMTH', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300188', N'TA', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300188', N'TCC', 5, 8, 9, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300188', N'TD', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300188', N'TRR', 6, 3, 2, 3.4, 0.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300189', N'NMTH', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300189', N'TA', 5, 5, 6, 5.5, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300189', N'TCC', 7, 7, 9, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300189', N'TD', 7, 7, 9, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300189', N'TRR', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300190', N'NMTH', 5, 4, 5, 4.8, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300190', N'TA', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300190', N'TCC', 9, 9, 10, 9.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300190', N'TD', 2, 3, 4, 3.2, 0.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300190', N'TRR', 6, 7, 9, 7.7, 3, NULL)
GO
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300191', N'NMTH', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300191', N'TA', 6, 8, 9, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300191', N'TCC', 6, 9, 9, 8.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300191', N'TD', 6.5, 4, 9, 7.25, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300191', N'TRR', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300192', N'NMTH', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300192', N'TA', 9, 8, 9, 8.8, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300192', N'TCC', 7.5, 5.5, 9, 7.85, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300192', N'TD', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300192', N'TRR', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300193', N'NMTH', 7, 5, 9, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300193', N'TA', 7, 7, 8.5, 7.75, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300193', N'TCC', 7, 8.5, 8, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300193', N'TD', 7, 4.5, 8, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300193', N'TRR', 7.5, 7, 8, 7.65, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300194', N'NMTH', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300194', N'TA', 7, 9, 8, 7.9, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300194', N'TCC', 7, 10, 8, 8.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300194', N'TD', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300194', N'TRR', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300195', N'NMTH', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300195', N'TA', 7, 6, 9, 7.8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300195', N'TCC', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300195', N'TD', 9, 9, 9, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300195', N'TRR', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'NMTH', 6, 7, 7.8, 7.1, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300235', N'CTDLVGT', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300235', N'QTANM-MMT', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300235', N'QTANM-NMTH', 7, 4, 8, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300236', N'TMDT-NMTH', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300236', N'TMDT-PTTKHT', 8, 7, 6, 6.8, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300236', N'TMDT-TTHCM', 5, 8, 9, 7.6, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300237', N'TMDT-NMTH', 8, 9, 5, 6.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300237', N'TMDT-PTTKHT', 2, 3, 5, 3.7, 0.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300237', N'TMDT-TTHCM', 5, 10, 7, 7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300238', N'TMDT-NMTH', 8, 6, 10, 8.6, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300238', N'TMDT-PTTKHT', 7, 9, 10, 8.9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300238', N'TMDT-TTHCM', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300239', N'TMDT-NMTH', 10, 8, 8, 8.6, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300239', N'TMDT-PTTKHT', 10, 9, 8, 8.8, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300239', N'TMDT-TTHCM', 9, 9, 8, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300240', N'TMDT-NMTH', 8, 8, 10, 9, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300240', N'TMDT-PTTKHT', 8, 10, 8, 8.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300240', N'TMDT-TTHCM', 8, 9, 10, 9.2, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300241', N'TMDT-NMTH', 8, 7, 7, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300241', N'TMDT-PTTKHT', 8, 7, 6, 6.8, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300241', N'TMDT-TTHCM', 5, 6, 7, 6.2, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300242', N'TMDT-NMTH', 6, 7, 9, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300242', N'TMDT-PTTKHT', 8.75, 8.5, 8.5, 8.57, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300242', N'TMDT-TTHCM', 8, 9, 10, 9.2, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300243', N'TMDT-NMTH', 6, 7, 9, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300243', N'TMDT-PTTKHT', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300243', N'TMDT-TTHCM', 7, 7, 8, 7.5, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300244', N'TMDT-NMTH', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300244', N'TMDT-PTTKHT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300244', N'TMDT-TTHCM', 7, 8, 8, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300245', N'TMDT-NMTH', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300245', N'TMDT-PTTKHT', 3, 7, 8, 6.3, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300245', N'TMDT-TTHCM', 4, 4, 7, 5.5, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300246', N'TMDT-NMTH', 8, 9, 9, 8.7, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300246', N'TMDT-PTTKHT', 8.75, 9, 10, 9.43, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300246', N'TMDT-TTHCM', 7, 6, 8, 7.3, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002467', N'TMDT-NMTH', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002467', N'TMDT-PTTKHT', 10, 10, 10, 10, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002467', N'TMDT-TTHCM', 9, 9, 10, 9.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'1881030024670', N'TMDT-NMTH', 5, 7, 9, 7.4, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'1881030024670', N'TMDT-PTTKHT', 4, 4, 6, 5, 1.5, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'1881030024670', N'TMDT-TTHCM', 5, 8, 7, 6.6, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002468', N'TMDT-NMTH', 3, 9, 8, 6.7, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002468', N'TMDT-PTTKHT', 6.5, 7.5, 8.75, 7.83, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002468', N'TMDT-TTHCM', 8.5, 9, 8, 8.35, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002469', N'TMDT-NMTH', 6.5, 7.5, 8, 7.45, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002469', N'TMDT-PTTKHT', 8, 8, 9, 8.5, 4, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002469', N'TMDT-TTHCM', 6, 7, 9, 7.7, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002471', N'TMDT-NMTH', 8, 9, 8, 8.2, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002471', N'TMDT-PTTKHT', 3, 4, 5, 4.2, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002471', N'TMDT-TTHCM', 0, 0, 9, 4.5, 1, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002472', N'TMDT-NMTH', 8, 0, 9, 6.9, 2, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002472', N'TMDT-PTTKHT', 8, 8, 8, 8, 3, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'188103002472', N'TMDT-TTHCM', 7.5, 8.5, 9, 8.45, NULL, NULL)
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300210', N'NMTH', 8, 8, 8, 8, 3, N'')
INSERT [dbo].[BangDiemSinhVien] ([masv], [mamon], [diemlan1], [diemlan2], [diemthiketthuc], [diemtbhe10], [diemtbhe4], [ghichu]) VALUES (N'18810300196', N'TA', 10, 9, 7, 6.8, 2, N'')
INSERT [dbo].[BangKhoa] ([makhoa], [tenkhoa]) VALUES (N'DDL-CNTT', N'Công Nghệ Thông Tin')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'CNTT-CNPM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'CNTT-CNPM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'CNTT-CNPM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'CNTT-QTANM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-QTANM2', N'Quản trị An Ninh Mạng 2', N'CNTT-QTANM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-QTANM3', N'Quản trị An Ninh Mạng 3', N'CNTT-QTANM')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-TMDT1', N'Hệ Thống Thương Mại Điện Tử 1', N'CNTT-TMDT')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'CNTT-TMDT')
INSERT [dbo].[BangLop] ([malop], [tenlop], [machuyennganh]) VALUES (N'CNTT-TMDT3', N'Hệ Thống Thương Mại Điện Tử 3', N'CNTT-TMDT')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'CTDLVGT', N'Cấu trúc dữ liệu và giải thuật', 2, N'CNTT-QTANM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'NMTH', N'Nhập môn tin học', 3, N'CNTT-CNPM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'QTANM-MMT', N'Mạng máy tính', 3, N'CNTT-QTANM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'QTANM-NMTH', N'Nhập môn tin học', 2, N'CNTT-QTANM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TA', N'Tiếng Anh', 3, N'CNTT-CNPM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TCC', N'Toán Cao Cấp', 2, N'CNTT-CNPM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TD', N'Thể Dục', 2, N'CNTT-CNPM')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TMDT-NMTH', N'Nhập môn tin học', 2, N'CNTT-TMDT')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TMDT-PTTKHT', N'Phân tích thiết kế hệ thống thông tin', 2, N'CNTT-TMDT')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TMDT-TTHCM', N'Tư tưởng Hồ Chí Minh', 3, N'CNTT-TMDT')
INSERT [dbo].[BangMonhoc] ([mamon], [tenmon], [tinchi], [machuyennganh]) VALUES (N'TRR', N'Toán Rời Rạc', 2, N'CNTT-CNPM')
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300180', 12, 6.8100000000000005, 2.42, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300181', 12, 6.51, 2.33, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300182', 12, 7.13, 2.83, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300183', 12, 7.93, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300184', 12, 8.05, 3.33, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300185', 12, 7.04, 1.92, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300186', 12, 6.96, 2.5, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300187', 12, 7.76, 3.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300188', 12, 6.88, 2.58, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300189', 12, 7.52, 2.92, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300190', 12, 6.6, 2.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300191', 12, 7.79, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300192', 12, 8.23, 3.42, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300193', 12, 7.58, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300194', 12, 8.08, 3.33, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300195', 12, 8.31, 3.42, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300196', 15, 7.56, 2.8, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300197', 12, 7.15, 2.58, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300198', 12, 7.7, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300199', 12, 7.77, 3.17, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300200', 12, 7.87, 3.17, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300201', 12, 7.64, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300202', 12, 7, 2.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300203', 12, 7.57, 2.83, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300204', 10, 7.9, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300205', 12, 7.53, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300206', 12, 7.38, 2.58, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300207', 12, 6.82, 2.42, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300208', 12, 7.73, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300209', 12, 8.08, 3.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300210', 12, 7.76, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300211', 8, 7.72, 3.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300212', 8, 6.79, 2.5, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300213', 8, 6.79, 2.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300214', 8, 7.91, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300215', 8, 8.23, 3.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300217', 8, 8.21, 3.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300218', 8, 7.49, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300219', 8, 8.13, 3.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300220', 8, 6.66, 2.13, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300221', 8, 9.07, 3.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300222', 8, 7.97, 3.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300223', 8, 8.29, 3.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300224', 8, 9, 3.75, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300225', 16, 8.35, 3.5, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300226', 8, 5.85, 1.94, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300227', 8, 8.53, 3.75, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300228', 8, 5, 1.88, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300229', 8, 7.75, 3.13, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300230', 8, 6.89, 2.88, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300231', 8, 7.64, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300232', 8, 8.07, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300233', 8, 8.27, 3.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300234', 8, 7.7, 3.13, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300235', 8, 7.71, 2.88, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300236', 8, 7.55, 2.75, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300237', 8, 6.06, 2, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300238', 8, 8.64, 4, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300239', 8, 8.61, 4, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300240', 8, 8.92, 3.75, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300241', 8, 6.76, 2.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300242', 8, 8.48, 3.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300243', 8, 7.53, 3, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300244', 8, 8.27, 3.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300245', 8, 6.71, 2.38, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810300246', 8, 8.36, 3.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'188103002467', 8, 9.25, 4, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'1881030024670', 8, 6.5, 2.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'188103002468', 8, 7.6, 2.63, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'188103002469', 8, 7.81, 3.25, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'188103002471', 8, 5.8100000000000005, 1.75, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'188103002472', 8, 7.76, 1.5, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'18810310000', NULL, NULL, NULL, NULL)
INSERT [dbo].[BangTongKetDiemSinhVien] ([masv], [tongtinchi], [diemtbhe10], [tbchungtichluy], [ghichu]) VALUES (N'28810300216', NULL, NULL, NULL, NULL)
INSERT [dbo].[DangNhap] ([taikhoan], [tennguoidung], [matkhau], [quyendn]) VALUES (N'giaovien', N'Vũ Văn Định', N'123', N'giaovien')
INSERT [dbo].[DangNhap] ([taikhoan], [tennguoidung], [matkhau], [quyendn]) VALUES (N'giaovien1', N'Vu Van Dinh', N'1234', N'giaovien')
INSERT [dbo].[DangNhap] ([taikhoan], [tennguoidung], [matkhau], [quyendn]) VALUES (N'hocsinh', N'Nguyễn Tiến Nam', N'12345', N'hocsinh')
INSERT [dbo].[DangNhap] ([taikhoan], [tennguoidung], [matkhau], [quyendn]) VALUES (N'SinhVien', N'Sinh Vieen', N'12345', N'hocsinh')
INSERT [dbo].[DangNhap] ([taikhoan], [tennguoidung], [matkhau], [quyendn]) VALUES (N'Team8', N'Đội 8', N'12345', N'hocsinh')
INSERT [dbo].[Quyensinhvien] ([taikhoan], [masv]) VALUES (N'hocsinh', N'18810310000')
INSERT [dbo].[Quyensinhvien] ([taikhoan], [masv]) VALUES (N'Team8', N'18810300183')
INSERT [dbo].[Quyensinhvien] ([taikhoan], [masv]) VALUES (N'SinhVien', N'18810300199')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300180', N'Nguyễn Văn Chiến', N'Nam', CAST(N'2000-06-15' AS Date), N'Hà Nội', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300181', N'Phan Văn Khải', N'Nam', CAST(N'2000-07-27' AS Date), N'Hải Phòng', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300182', N'Phùng Minh Hiếu', N'Nam', CAST(N'2000-06-15' AS Date), N'Nam Định', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300183', N'Nguyễn Doãn Thế Anh', N'Nam', CAST(N'2000-04-20' AS Date), N'Nghệ An', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300184', N'Văn Huy Nam', N'Nam', CAST(N'2000-02-10' AS Date), N'Huế', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300185', N'Nguyễn Minh Bảo', N'Nam', CAST(N'2000-12-15' AS Date), N'Điện Biên', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300186', N'Nguyễn Thảo Nhi', N'Nữ', CAST(N'2000-07-25' AS Date), N'Lào Cai', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300187', N'Bùi Thị Phương', N'Nữ', CAST(N'2000-10-05' AS Date), N'Thanh Hóa', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300188', N'Lỗ Trí Anh Đức', N'Nam', CAST(N'2000-03-23' AS Date), N'Hà Nội', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300189', N'Vũ Ngọc An', N'Nữ', CAST(N'2000-04-21' AS Date), N'Thái Bình', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300190', N'Ngô Minh Hiếu', N'Nam', CAST(N'2000-10-26' AS Date), N'Lai Châu', N'CNTT-CNPM1', N'Công Nghệ Phần Mềm 1', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300191', N'Trần Thanh Nhàn', N'Nữ', CAST(N'2000-11-27' AS Date), N'Ba VÌ', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300192', N'Nguyễn Văn Toàn', N'Nam', CAST(N'2000-04-23' AS Date), N'Cà Mau', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300193', N'Phạm Văn Tài', N'Nam', CAST(N'2000-10-11' AS Date), N'Quảng Ninh', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300194', N'Nguyễn Thị Tuyết Nhi', N'Nữ', CAST(N'2000-11-27' AS Date), N'Hà Nôi', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300195', N'Trần Văn Nam', N'Nam', CAST(N'2000-02-21' AS Date), N'Thái Bình', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300196', N'Nguyễn Tiến Tài', N'Nam', CAST(N'2000-05-10' AS Date), N'Hải Phòng', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300197', N'Phan Văn Trí', N'Nam', CAST(N'2000-03-27' AS Date), N'Nghệ An', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300198', N'Trần Bảo Ngọc', N'Nữ', CAST(N'2000-01-27' AS Date), N'Hồ Chí Minh', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300199', N'Trần Huyền Châu', N'Nữ', CAST(N'2000-01-10' AS Date), N'Hà Nội', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300200', N'Phan Văn Tú', N'Nam', CAST(N'2000-05-25' AS Date), N'Nghệ An', N'CNTT-CNPM2', N'Công Nghệ Phần Mềm 2', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300201', N'Phan Tuấn Tú', N'Nam', CAST(N'2000-04-19' AS Date), N'Hải Phòng', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300202', N'Ngô Hoàng Hải', N'Nam', CAST(N'2000-02-29' AS Date), N'NInh Bình', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300203', N'Quách Nguyễn Tiến Tùng', N'Nam', CAST(N'2000-12-10' AS Date), N'Dak Lak', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300204', N'Trần Hữu Chiến', N'Nam', CAST(N'2000-02-13' AS Date), N'Thái Nguyên', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300205', N'Phan Ngọc Đại', N'Nam', CAST(N'2000-03-22' AS Date), N'Ba Vì', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300206', N'Nguyễn Thành Long', N'Nam', CAST(N'2000-07-23' AS Date), N'Hà Nội', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300207', N'Phạm Xuân Phú', N'Nam', CAST(N'2000-01-29' AS Date), N'Hà Nội', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300208', N'Nguyễn Thế Sơn', N'Nam', CAST(N'2000-07-26' AS Date), N'Hồ Chí Minh', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300209', N'Đinh Thành Quốc', N'Nam', CAST(N'2000-02-23' AS Date), N'Hải Dương', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300210', N'Ngô Kiến Hào', N'Nam', CAST(N'2000-09-29' AS Date), N'Hà Nội', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300211', N'Nguyễn Ngọc Quang', N'Nam', CAST(N'2000-01-21' AS Date), N'Thái Bình', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300212', N'Ngô Tiến Ngọc', N'Nam', CAST(N'2000-02-23' AS Date), N'Nam Định', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300213', N'Tạ Minh Hoàng', N'Nam', CAST(N'2000-05-25' AS Date), N'Lai Châu', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300214', N'Trần Huy Nam', N'Nam', CAST(N'2000-04-04' AS Date), N'Lào Cai', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300215', N'Bùi Duy tiến', N'Nam', CAST(N'2000-08-08' AS Date), N'Hà Nội', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300217', N'Đỗ Lan Anh', N'Nữ', CAST(N'2000-12-01' AS Date), N'Nam Định', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300218', N'Dương Thị Minh', N'Nữ', CAST(N'2000-07-28' AS Date), N'Quảng Ninh', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300219', N'Đào Bá Lộc', N'Nam', CAST(N'2000-11-10' AS Date), N'Hải Phòng', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300220', N'Đào Duy Từ', N'Nam', CAST(N'2000-03-23' AS Date), N'Đà Nẵng', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300221', N'Đỗ Thanh Tâm', N'Nữ', CAST(N'2000-07-28' AS Date), N'Nghệ An', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300222', N'Trần Huyền Châu', N'Nữ', CAST(N'2000-03-04' AS Date), N'Huế', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300223', N'Nguyễn Văn Chiến', N'Nam', CAST(N'2000-05-10' AS Date), N'Huế', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300224', N'Nguyễn Thái Quỳnh An', N'Nam', CAST(N'2000-11-23' AS Date), N'Huế', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300225', N'Đinh Tường Anh', N'Nam', CAST(N'2000-01-11' AS Date), N'Thanh Hóa', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300226', N'Nguyễn Chí Anh', N'Nam', CAST(N'2000-10-10' AS Date), N'Thái Bình', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300227', N'Nguyễn Tuấn Anh', N'Nam', CAST(N'2000-12-11' AS Date), N'Thái Bình', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300228', N'Vương Việt Anh', N'Nam', CAST(N'2000-02-20' AS Date), N'Hà Nội', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300229', N'Đặng Việt Cường', N'Nam', CAST(N'2000-07-05' AS Date), N'Điện Biên ', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300230', N'Nguyễn Trọng Đại', N'Nam', CAST(N'2000-09-10' AS Date), N'Điện Biên', N'CNTT-QTANM2', N'Quản Trị An Ninh Mạng 2', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300231', N'Nguyễn Hữu Đăng', N'Nam', CAST(N'2000-02-11' AS Date), N'Hà Tĩnh', N'CNTT-QTANM3', N'Quản Trị An Ninh Mạng 3', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300232', N'Kiều Văn Đạo', N'Nam', CAST(N'2000-10-23' AS Date), N'Nghệ An', N'CNTT-QTANM3', N'Quản Trị An Ninh Mạng 3', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300233', N'Ngô Vĩnh Đạt', N'Nam', CAST(N'2000-12-12' AS Date), N'Huế', N'CNTT-QTANM3', N'Quản Trị An Ninh Mạng 3', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300234', N'Nguyễn Quý Đạt', N'Nam', CAST(N'2000-05-12' AS Date), N'Hải Phòng', N'CNTT-QTANM3', N'Quản Trị An Ninh Mạng 3', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300235', N'Nguyễn Tiến Đạt', N'Nam', CAST(N'2000-07-30' AS Date), N'Hà Nội', N'CNTT-QTANM3', N'Quản Trị An Ninh Mạng 3', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300236', N'Nguyễn Công Dương', N'Nam', CAST(N'2000-10-01' AS Date), N'Hải Phòng', N'CNTT-TMDT1', N'Hệ Thống Thương Mại Điện Tử 1', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300237', N'Nguyễn Danh Dương', N'Nam', CAST(N'2000-05-04' AS Date), N'Hải Phòng', N'CNTT-TMDT1', N'Hệ Thống Thương Mại Điện Tử 1', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300238', N'Nguyễn Huy Hiếu', N'Nam', CAST(N'2000-07-20' AS Date), N'Hà Nội', N'CNTT-TMDT1', N'Hệ Thống Thương Mại Điện Tử 1', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300239', N'Phạm Trung Hoan', N'Nam', CAST(N'2000-04-04' AS Date), N'Hồ Chí Minh', N'CNTT-TMDT1', N'Hệ Thống Thương Mại Điện Tử 1', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300240', N'Nguyễn Việt Hoàng', N'Nam', CAST(N'2000-02-08' AS Date), N'Phú Thọ', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 1', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300241', N'Nguyễn Xuân Hồng', N'Nam', CAST(N'2000-05-07' AS Date), N'Hà Nội', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300242', N'Tạ Văn Hùng', N'Nam', CAST(N'2000-08-10' AS Date), N'Thái Bình', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300243', N'Đào Quang Huy', N'Nam', CAST(N'2000-06-07' AS Date), N'Thái Bình', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300244', N'Lưu Quang Huy', N'Nam', CAST(N'2000-09-02' AS Date), N'Hà Tĩnh', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300245', N'Trần Đức Huy', N'Nam', CAST(N'2000-10-09' AS Date), N'Hà Tĩnh', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810300246', N'Trịnh Nhật Huy', N'Nam', CAST(N'2000-07-10' AS Date), N'Hà Tĩnh', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'188103002467', N'Vũ Quang Huy', N'Nam', CAST(N'2000-10-21' AS Date), N'Hà Tĩnh', N'CNTT-TMDT2', N'Hệ Thống Thương Mại Điện Tử 2', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'1881030024670', N'Mai Trung Kiến', N'Nam', CAST(N'2000-09-20' AS Date), N'Hải Phòng', N'CNTT-TMDT3', N'Hệ Thống Thương Mại Điện Tử 3', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'188103002468', N'Vũ Mạnh Huy', N'Nam', CAST(N'2000-12-20' AS Date), N'Hải Phòng', N'CNTT-TMDT3', N'Hệ Thống Thương Mại Điện Tử 3', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'188103002469', N'Đồng Quốc Khánh', N'Nam', CAST(N'2000-11-20' AS Date), N'Hà Nội', N'CNTT-TMDT3', N'Hệ Thống Thương Mại Điện Tử 3', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'188103002471', N'Lò Hoàng Linh', N'Nữ', CAST(N'2000-02-23' AS Date), N'Phú Thọ', N'CNTT-TMDT3', N'Hệ Thống Thương Mại Điện Tử 3', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'188103002472', N'Quách Thị Mỹ Linh', N'Nữ', CAST(N'2000-10-10' AS Date), N'Thái Nguyên', N'CNTT-TMDT3', N'Thương Mại Điện Tử 3', N'Hệ Thống Thương Mại Điện Tử', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'18810310000', N'Phạm Huy Hoàng', N'Nam', CAST(N'2020-05-25' AS Date), N'Thái Nguyên', N'CNTT-CNPM3', N'Công Nghệ Phần Mềm 3', N'Công Nghệ Phần Mềm', N'Công Nghệ Thông Tin')
INSERT [dbo].[SinhVien] ([masv], [tensv], [gioitinh], [ngaysinh], [quequan], [malop], [tenlop], [tenchuyennganh], [tenkhoa]) VALUES (N'28810300216', N'Bạch Thúy Vy', N'Nữ', CAST(N'2000-02-02' AS Date), N'Hà Nội', N'CNTT-QTANM1', N'Quản Trị An Ninh Mạng 1', N'Quản Trị An Ninh Mạng', N'Công Nghệ Thông Tin')
ALTER TABLE [dbo].[BangChuyennganh]  WITH CHECK ADD FOREIGN KEY([makhoa])
REFERENCES [dbo].[BangKhoa] ([makhoa])
GO
ALTER TABLE [dbo].[BangDiemSinhVien]  WITH CHECK ADD  CONSTRAINT [FK__BangDiemS__mamon__2E1BDC42] FOREIGN KEY([mamon])
REFERENCES [dbo].[BangMonhoc] ([mamon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangDiemSinhVien] CHECK CONSTRAINT [FK__BangDiemS__mamon__2E1BDC42]
GO
ALTER TABLE [dbo].[BangDiemSinhVien]  WITH CHECK ADD FOREIGN KEY([masv])
REFERENCES [dbo].[SinhVien] ([masv])
GO
ALTER TABLE [dbo].[BangLop]  WITH CHECK ADD FOREIGN KEY([machuyennganh])
REFERENCES [dbo].[BangChuyennganh] ([machuyennganh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangMonhoc]  WITH CHECK ADD FOREIGN KEY([machuyennganh])
REFERENCES [dbo].[BangChuyennganh] ([machuyennganh])
GO
ALTER TABLE [dbo].[BangTongKetDiemSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_BangTongKetDiemSinhVien_SinhVien] FOREIGN KEY([masv])
REFERENCES [dbo].[SinhVien] ([masv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangTongKetDiemSinhVien] CHECK CONSTRAINT [FK_BangTongKetDiemSinhVien_SinhVien]
GO
ALTER TABLE [dbo].[Quyensinhvien]  WITH CHECK ADD FOREIGN KEY([taikhoan])
REFERENCES [dbo].[DangNhap] ([taikhoan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quyensinhvien]  WITH CHECK ADD FOREIGN KEY([masv])
REFERENCES [dbo].[SinhVien] ([masv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD FOREIGN KEY([malop])
REFERENCES [dbo].[BangLop] ([malop])
GO
/****** Object:  StoredProcedure [dbo].[ChangePassWord]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ChangePassWord]
@taikhoan NVARCHAR(50), @tennguoidung NVARCHAR(100), @matkhau NVARCHAR(20), @matkhaumoi NVARCHAR(20)
AS
BEGIN

	DECLARE @CheckPass INT

	SELECT @CheckPass = COUNT(*) FROM dbo.DangNhap WHERE taikhoan = @taikhoan AND matkhau = @matkhau

	IF (@CheckPass = 1)
	BEGIN 
	IF (@matkhaumoi = NULL OR @matkhaumoi = '')
		BEGIN
			UPDATE dbo.DangNhap SET taikhoan = @taikhoan WHERE tennguoidung = @tennguoidung
		END
		ELSE
			UPDATE dbo.DangNhap SET taikhoan = @taikhoan, matkhau = @matkhaumoi WHERE tennguoidung = @tennguoidung
	END
END




GO
/****** Object:  StoredProcedure [dbo].[ChuyenNganhData]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ChuyenNganhData]
@tenchuyennganh NVARCHAR(100), @tenmon NVARCHAR(100)
AS
BEGIN

DECLARE @Bang1 TABLE (
masv nvarchar(100),
tensv nvarchar(100),
tenlop nvarchar(100),
tongtinchi NVARCHAR(100),
diemtbhe10 FLOAT,
tbchungtichluy FLOAT,
ghichu NVARCHAR(300));


	IF (@tenchuyennganh != '' AND @tenmon = ' ')
		BEGIN
		INSERT INTO @Bang1
			 SELECT BangTongKetDiemSinhVien.masv AS[Mã sinh viên], 
			 SinhVien.tensv AS[Tên sinh viên], 
			 BangLop.tenlop AS[Tên lớp], tongtinchi AS[Tổng tín chỉ], 
			 diemtbhe10 AS[Điểm trung bình], 
			 tbchungtichluy AS[Điểm trung bình chung tích lũy], 
			 dbo.BangTongKetDiemSinhVien.ghichu AS[Ghi chú] 
			 FROM dbo.BangTongKetDiemSinhVien,
			 dbo.BangChuyennganh, 
			 SinhVien, 
			 BangLop 
			 
			 WHERE SinhVien.masv = BangTongKetDiemSinhVien.masv
			 AND SinhVien.malop = BangLop.malop 
			 AND BangChuyennganh.machuyennganh = BangLop.machuyennganh 
			 AND BangChuyennganh.tenchuyennganh = @tenchuyennganh

		SELECT masv AS[Mã sinh viên], tensv AS[Tên sinh viên], tenlop AS[Tên lớp], tongtinchi AS[Tổng tín chỉ], diemtbhe10 AS[Điểm trung bình], tbchungtichluy AS[Trung bình chung tích lũy]  FROM @Bang1
		END
	ELSE 
		BEGIN
		DELETE @Bang1
			SELECT dbo.BangDiemSinhVien.masv AS[Mã sinh viên], 
			SinhVien.tensv AS[Tên sinh viên],  
			BangLop.tenlop [Tên lớp], 
			BangMonHoc.tenmon AS[Tên môn học], 
			tongtinchi AS[Tổng tín chỉ], 
			dbo.BangDiemSinhVien.diemtbhe10 AS[Điểm trung bình hệ 10], 
			diemtbhe4 AS[Điểm trung bình hệ 4],
			 dbo.BangTongKetDiemSinhVien.ghichu AS[Ghi chú] 
			 FROM 
			 SinhVien, 
			 dbo.BangTongKetDiemSinhVien, 
			 dbo.BangChuyennganh, 
			 dbo.BangDiemSinhVien, 
			 BangMonhoc, 
			 BangLop 
			 WHERE SinhVien.masv = BangTongKetDiemSinhVien.masv 
			 AND SinhVien.malop = BangLop.malop 
			 AND BangMonhoc.machuyennganh = BangChuyennganh.machuyennganh
			  AND dbo.BangDiemSinhVien.masv=dbo.BangTongKetDiemSinhVien.masv 
			  AND BangChuyennganh.machuyennganh =BangLop.machuyennganh 
			  AND BangChuyennganh.tenchuyennganh = @tenchuyennganh 
			  AND BangMonhoc.tenmon = @tenmon
		END
END


GO
/****** Object:  StoredProcedure [dbo].[DiemKhoaData]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DiemKhoaData]
@tenkhoa NVARCHAR(100)
AS
BEGIN

SELECT BangTongKetDiemSinhVien.masv AS[Mã sinh viên], SinhVien.tensv AS[Tên sinh viên], BangLop.tenlop AS[Tên lớp],BangChuyennganh.tenchuyennganh AS[Tên chuyên ngành], tongtinchi AS[Tín chỉ],BangTongKetDiemSinhVien.diemtbhe10 AS[Điểm trung bình], BangTongKetDiemSinhVien.tbchungtichluy AS[Điểm trung bình chung tích lũy], ghichu AS[Ghi chú] 
FROM dbo.BangTongKetDiemSinhVien, dbo.BangKhoa, SinhVien, BangLop, BangChuyennganh 
WHERE BangTongKetDiemSinhVien.masv = SinhVien.masv AND BangLop.malop = SinhVien.malop AND BangChuyennganh.machuyennganh = BangLop.machuyennganh AND BangKhoa.tenkhoa = @tenkhoa 
ORDER BY diemtbhe10 DESC 

END

GO
/****** Object:  StoredProcedure [dbo].[DiemLopData]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DiemLopData]
@tenlop NVARCHAR(100), @tenmon NVARCHAR(100)
AS
BEGIN

DECLARE @Bang1 TABLE (
masv nvarchar(100),
tensv nvarchar(100),
tongtinchi NVARCHAR(100),
diemtbhe10 FLOAT,
tbchungtichluy FLOAT,
ghichu NVARCHAR(300));
	IF (@tenlop != '' AND @tenmon = '')
		BEGIN
		INSERT INTO @Bang1		
			 SELECT BangTongKetDiemSinhVien.masv AS[Mã sinh viên], 
			 SinhVien.tensv AS[Tên sinh viên],
			 BangTongKetDiemSinhVien.tongtinchi AS[Tổng tín chỉ], 
			 diemtbhe10 AS[Điểm trung bình], 
			 tbchungtichluy AS[Điểm trung bình chung tích lũy], 
			 dbo.BangTongKetDiemSinhVien.ghichu AS[Ghi chú] 
			 FROM dbo.BangTongKetDiemSinhVien, 
			 dbo.BangChuyennganh, 
			 SinhVien,
			 BangLop
			 WHERE BangTongKetDiemSinhVien.masv = SinhVien.masv
			 AND SinhVien.malop = BangLop.malop
			 AND BangChuyennganh.machuyennganh = Banglop.machuyennganh 
			 AND BangLop.tenlop = @tenlop

		SELECT masv AS[Mã sinh viên], tensv AS[Tên sinh viên], tongtinchi AS[Tổng tín chỉ], diemtbhe10 AS[Điểm trung bình], tbchungtichluy AS[Trung bình trung tích lũy], ghichu AS[Ghi chú]   FROM @Bang1
		END
	ELSE 
		BEGIN
		DELETE @Bang1
			SELECT dbo.BangDiemSinhVien.masv AS[Mã sinh viên], 
			SinhVien.tensv AS[Tên sinh viên], 
			tenmon AS[Tên môn học], 
			dbo.BangDiemSinhVien.diemtbhe10 AS[Điểm trung bình hệ 10],
			diemtbhe4 AS[Điểm trung bình hệ 4], 
			dbo.BangTongKetDiemSinhVien.ghichu AS[Ghi chú] 
			FROM dbo.BangTongKetDiemSinhVien, 
			dbo.BangChuyennganh, 
			dbo.BangDiemSinhVien, 
			SinhVien, 
			BangMonhoc, 
			BangLop
			 
			WHERE BangLop.malop = SinhVien.malop 
			AND BangLop.machuyennganh = BangChuyennganh.machuyennganh 
			AND BangMonhoc.machuyennganh = BangChuyennganh.machuyennganh 
			AND dbo.BangDiemSinhVien.masv=dbo.BangTongKetDiemSinhVien.masv
			AND BangMonHoc.machuyennganh = BangChuyennganh.machuyennganh  
			AND BangLop.tenlop=@tenlop AND tenmon = @tenmon
		END
END

GO
/****** Object:  StoredProcedure [dbo].[DiemSinhVien]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DiemSinhVien]
@masv nvarchar(100)
AS
BEGIN
	
SELECT BangMonHoc.tenmon AS[Môn học],diemlan1 AS[Điểm thi lần 1], diemlan2 AS[Điểm thi lần 2], diemthiketthuc AS[Điểm thi kết thúc], dbo.BangDiemSinhVien.diemtbhe10 AS[Điểm trung bình hệ 10], diemtbhe4 AS[Điểm trung bình hệ 4] ,  dbo.BangDiemSinhVien.ghichu AS[Ghi chú]  
FROM dbo.BangTongKetDiemSinhVien, dbo.BangDiemSinhVien, BangMonhoc 
WHERE BangDiemSinhVien.mamon = BangMonHoc.mamon AND dbo.BangTongKetDiemSinhVien.masv = dbo.BangDiemSinhVien.masv AND dbo.BangTongKetDiemSinhVien.masv = @masv

END


GO
/****** Object:  StoredProcedure [dbo].[EditGrade]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditGrade]
@masv NVARCHAR(100),
@mamon NVARCHAR(100),
@diemlan1 FLOAT,
@diemlan2 FLOAT,
@diemthiketthuc FLOAT OUT

AS

BEGIN 
UPDATE BangDiemSinhVien SET diemlan1 = @diemlan1, diemlan2 = @diemlan2 WHERE masv = @masv AND mamon = @mamon
END
GO
/****** Object:  StoredProcedure [dbo].[GetSinhVienInfor]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetSinhVienInfor] 
@taikhoan NVARCHAR(50)

AS

BEGIN 

SELECT SinhVien.masv, SinhVien.tensv, gioitinh, ngaysinh, SinhVien.quequan, BangLop.tenlop, BangChuyennganh.tenchuyennganh, BangKhoa.tenkhoa, diemtbhe10, tbchungtichluy, tongtinchi
FROM SinhVien, BangKhoa, BangChuyennganh, BangLop, BangTongKetDiemSinhVien, Quyensinhvien WHERE SinhVien.masv = BangTongKetDiemSinhVien.masv 
AND BangKhoa.makhoa = BangChuyennganh.makhoa AND BangChuyennganh.machuyennganh = BangLop.machuyennganh AND SinhVien.malop = BangLop.malop
AND SinhVien.masv = Quyensinhvien.masv AND taikhoan = @taikhoan

END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Login]
@taikhoan NVARCHAR(100), @matkhau NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.DangNhap WHERE taikhoan = @taikhoan AND matkhau = @matkhau

END


GO
/****** Object:  StoredProcedure [dbo].[Quyen]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Quyen]
@taikhoan NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.DangNhap WHERE taikhoan = @taikhoan
END



GO
/****** Object:  StoredProcedure [dbo].[SearchStudent]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[SearchStudent]
@masv NVARCHAR(100)
AS
BEGIN
	SELECT tenmon AS[Tên môn học], diemlan1 AS[Điểm lần 1], diemlan2 AS[Điểm lần 2],diemthiketthuc AS[Điểm thi], diemtbhe10 AS[Điểm trung bình hệ 10], diemtbhe4 AS[Điểm trung bình hệ 4],ghichu AS[Ghi chú] 
	FROM dbo.BangDiemSinhVien, BangMonhoc, BangChuyennganh
	WHERE BangDiemSinhVien.mamon = BangMonhoc.mamon
	AND BangMonHoc.machuyennganh = BangChuyennganh.machuyennganh
	AND BangDiemSinhVien.masv = @masv
END



GO
/****** Object:  StoredProcedure [dbo].[SubjectUpdate]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SubjectUpdate]
@mamon nvarchar(100), @tenmonhoc nvarchar(100), @tinchi int
AS
BEGIN

	DECLARE @check INT

	SELECT @check = COUNT(*) FROM dbo.BangMonhoc WHERE mamon = @mamon

	IF(@check = 1)
		BEGIN 
			UPDATE dbo.BangMonhoc SET mamon=@mamon, tenmon=@tenmonhoc, tinchi = @tinchi  WHERE mamon = @mamon

			UPDATE dbo.BangDiemSinhVien SET tinchi = @tinchi WHERE tenmon = @tenmonhoc

			UPDATE dbo.BangTongKetDiemSinhVien SET tongtinchi = (SELECT SUM(tinchi) FROM dbo.BangDiemSinhVien WHERE dbo.BangDiemSinhVien.masv = dbo.BangTongKetDiemSinhVien.masv) 

			UPDATE dbo.BangTongKetDiemSinhVien SET diemtbhe10 = (SELECT SUM(tinchi*diemtbhe10)/SUM(tinchi) FROM dbo.BangDiemSinhVien WHERE dbo.BangDiemSinhVien.masv = dbo.BangTongKetDiemSinhVien.masv)

			UPDATE dbo.BangTongKetDiemSinhVien SET diemtbhe10 = ROUND(diemtbhe10, 2)

			UPDATE dbo.BangTongKetDiemSinhVien SET tbchungtichluy = (SELECT SUM(tinchi*diemtbhe4)/SUM(tinchi) FROM dbo.BangDiemSinhVien WHERE dbo.BangDiemSinhVien.masv = dbo.BangTongKetDiemSinhVien.masv)

			UPDATE dbo.BangTongKetDiemSinhVien SET tbchungtichluy = ROUND(tbchungtichluy, 2)
		END
END

GO
/****** Object:  StoredProcedure [dbo].[USO_Login]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USO_Login]
@taikhoan NVARCHAR(100), @matkhau NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.DangNhap WHERE taikhoan = @taikhoan AND matkhau = @matkhau

END



GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccoundByUserName]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetAccoundByUserName]
@username nvarchar(100)
AS
BEGIN
	SELECT * FROM dbo.DangNhap WHERE	taikhoan = @username 
END



GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 1/5/2021 11:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
@taikhoan NVARCHAR(100), @matkhau NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.DangNhap WHERE taikhoan = @taikhoan AND matkhau = @matkhau

END


GO
USE [master]
GO
ALTER DATABASE [DiemSinhVienDienLuc] SET  READ_WRITE 
GO
