USE [master]
GO
/****** Object:  Database [TruongMamNon]    Script Date: 2/22/2017 9:11:59 PM ******/
CREATE DATABASE [TruongMamNon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TruongMamNon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TruongMamNon.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TruongMamNon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TruongMamNon_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TruongMamNon] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TruongMamNon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TruongMamNon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TruongMamNon] SET ARITHABORT OFF 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TruongMamNon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TruongMamNon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TruongMamNon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TruongMamNon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TruongMamNon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TruongMamNon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TruongMamNon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TruongMamNon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TruongMamNon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TruongMamNon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TruongMamNon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TruongMamNon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TruongMamNon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TruongMamNon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TruongMamNon] SET  MULTI_USER 
GO
ALTER DATABASE [TruongMamNon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TruongMamNon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TruongMamNon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TruongMamNon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TruongMamNon]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[confirm_password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[email_address] [nvarchar](50) NOT NULL,
	[enabled] [bit] NULL,
	[role_id] [int] NULL,
	[HocsinhId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Baomau]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baomau](
	[BaomauId] [int] IDENTITY(1,1) NOT NULL,
	[Tenbaomau] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Hinhanh] [nvarchar](max) NULL,
	[Dienthoai] [nvarchar](100) NULL,
	[XeplopId] [int] NULL,
 CONSTRAINT [PK__Baomau__E25C5698CCB0A87B] PRIMARY KEY CLUSTERED 
(
	[BaomauId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chuansuckhoe]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuansuckhoe](
	[ChuansuckhoeId] [int] IDENTITY(1,1) NOT NULL,
	[Thangtuoi] [nvarchar](100) NULL,
	[Chuanchieucaonam] [float] NULL,
	[Chuancannangnam] [float] NULL,
	[Chuanchieucaonu] [float] NULL,
	[Chuancannangnu] [float] NULL,
 CONSTRAINT [PK__Chuansuc__04908AD57A603225] PRIMARY KEY CLUSTERED 
(
	[ChuansuckhoeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giaovien]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giaovien](
	[GiaovienId] [int] IDENTITY(1,1) NOT NULL,
	[Tengv] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Hinhanh] [nvarchar](max) NULL,
	[Dienthoai] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Trinhdo] [nvarchar](100) NULL,
	[Chucvu] [nvarchar](100) NULL,
	[Kinhnghiem] [nvarchar](100) NULL,
	[XeplopId] [int] NULL,
 CONSTRAINT [PK__Giaovien__437AAB0CA8686C95] PRIMARY KEY CLUSTERED 
(
	[GiaovienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hocsinh]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hocsinh](
	[HocsinhId] [int] IDENTITY(1,1) NOT NULL,
	[Tenhs] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Sothich] [nvarchar](100) NULL,
	[Hinhanh] [nvarchar](max) NULL,
	[Phuhuynh] [nvarchar](100) NULL,
	[Dienthoaiph] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hocsinh] PRIMARY KEY CLUSTERED 
(
	[HocsinhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lichhdkhoitre]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lichhdkhoitre](
	[LichhdkhoitreId] [int] IDENTITY(1,1) NOT NULL,
	[Thoigian] [nvarchar](500) NULL,
	[Hoatdong] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LichhdkhoitreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lichhdmaugiao]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lichhdmaugiao](
	[LichhdmaugiaoId] [int] IDENTITY(1,1) NOT NULL,
	[Thoigian] [nvarchar](500) NULL,
	[Hoatdong] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LichhdmaugiaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[LopId] [int] IDENTITY(1,1) NOT NULL,
	[XeplopId] [int] NULL,
	[HocsinhId] [int] NULL,
 CONSTRAINT [PK__Lop__40585D2B93C4A2CB] PRIMARY KEY CLUSTERED 
(
	[LopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monhoc]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monhoc](
	[MonhocId] [int] IDENTITY(1,1) NOT NULL,
	[Tenmonhoc] [nvarchar](100) NULL,
	[Sotiet] [int] NULL,
	[Thoigian] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MonhocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phanquyen]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phanquyen](
	[PhanquyenId] [int] IDENTITY(1,1) NOT NULL,
	[Tenphanquyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PhanquyenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phanquyens]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phanquyens](
	[PhanquyenId] [int] IDENTITY(1,1) NOT NULL,
	[Tenphanquyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhanquyenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[authority] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suckhoebenam]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suckhoebenam](
	[SuckhoebenamId] [int] IDENTITY(1,1) NOT NULL,
	[HocsinhId] [int] NULL,
	[Ngaykham] [date] NULL,
	[Chieucao] [float] NOT NULL,
	[Sosanhcc] [float] NULL,
	[Tinhtrangcc] [nvarchar](50) NULL,
	[Cannang] [float] NULL,
	[Sosanhcn] [float] NULL,
	[Tinhtrangcn] [nvarchar](50) NULL,
	[ChuansuckhoeId] [int] NULL,
 CONSTRAINT [PK__Suckhoe__B56E81AC4AC22B36] PRIMARY KEY CLUSTERED 
(
	[SuckhoebenamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suckhoebenu]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suckhoebenu](
	[SuckhoebenuId] [int] IDENTITY(1,1) NOT NULL,
	[HocsinhId] [int] NULL,
	[Ngaykham] [date] NULL,
	[Chieucao] [float] NOT NULL,
	[Sosanhcc] [float] NULL,
	[Tinhtrangcc] [nvarchar](50) NULL,
	[Cannang] [float] NULL,
	[Sosanhcn] [float] NULL,
	[Tinhtrangcn] [nvarchar](50) NULL,
	[ChuansuckhoeId] [int] NULL,
 CONSTRAINT [PK_Suckhoebenu] PRIMARY KEY CLUSTERED 
(
	[SuckhoebenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[TaikhoanId] [int] IDENTITY(1,1) NOT NULL,
	[Tentaikhoan] [nvarchar](100) NULL,
	[Matkhau] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[PhanquyenId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaikhoanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taikhoans]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoans](
	[Taikhoan_id] [int] IDENTITY(1,1) NOT NULL,
	[Tentaikhoan] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](50) NOT NULL,
	[Xacnhanmatkhau] [nvarchar](50) NULL,
	[Hovaten] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Trangthai_taikhoan] [bit] NULL,
	[Hinhanh] [nvarchar](max) NULL,
	[PhanquyenId] [int] NULL,
	[HocsinhId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Taikhoan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thucdontrongtuan]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thucdontrongtuan](
	[Thucdontrongtuanid] [int] IDENTITY(1,1) NOT NULL,
	[Buoi] [nvarchar](200) NULL,
	[Thu2] [nvarchar](max) NULL,
	[Thu3] [nvarchar](max) NULL,
	[Thu4] [nvarchar](max) NULL,
	[Thu5] [nvarchar](max) NULL,
	[Thu6] [nvarchar](max) NULL,
	[Thu7] [nvarchar](max) NULL,
	[Chunhat] [nvarchar](max) NULL,
 CONSTRAINT [PK_Thucdontrongtuan] PRIMARY KEY CLUSTERED 
(
	[Thucdontrongtuanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuchi]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuchi](
	[ThuchiId] [int] IDENTITY(1,1) NOT NULL,
	[HocsinhId] [int] NULL,
	[Tienhocphi] [float] NULL,
	[Tienan] [float] NULL,
	[Tienphuthu] [float] NULL,
	[Diemdanh] [float] NULL,
	[Tienthua] [float] NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [PK_Thuchi] PRIMARY KEY CLUSTERED 
(
	[ThuchiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Xeplop]    Script Date: 2/22/2017 9:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xeplop](
	[XeplopId] [int] IDENTITY(1,1) NOT NULL,
	[Nhomtuoi] [nvarchar](100) NULL,
	[Tenxeplop] [nvarchar](100) NULL,
	[Siso] [int] NULL,
	[GiaovienId] [int] NULL,
	[BaomauId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[XeplopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (2, N'dung', N'333', N'333', N'Nguyễn Đức Dũng', N'Nam', N'dung@gmail.com', 1, 3, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (3, N'thien', N'333', N'333', N'Đặng Ngọc Thiên', N'Nam', N'thien@gmail.com', 1, 3, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (4, N'thao', N'111', N'111', N'Nguyễn Thị Thu Thảo', N'Nữ', N'thao@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (5, N'hang', N'111', N'111', N'Nguyễn Thị Hằng', N'Nữ', N'hang@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (6, N'nga2', N'111', N'111', N'Nguyễn Thị Nga', N'Nữ', N'nga@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (8, N'hoa', N'111', N'111', N'Nguyễn Thị Hoa', N'Nữ', N'hoa@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (10, N'hue', N'111', N'111', N'Nguyễn Thị Huệ', N'Nữ', N'hue@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (11, N'teo', N'222', N'222', N'Nguyễn Quang Tèo', N'Nam', N'teo@gmail.com', 1, 2, 1)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (14, N'chuong', N'222', N'222', N'Nguyễn Công Chương', N'Nam', N'chuong@gmail.com', 1, 2, 2)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (15, N'anh', N'222', N'222', NULL, N'Nam', N'anh@gmail.com', 1, 2, 3)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (16, N'chinh', N'222', N'222', N'Vũ Văn Chinh', N'Nam', N'chinh@gmail.com', 1, 2, 4)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (17, N'minh', N'222', N'222', N'Trần Công Minh', N'Nam', N'minh@gmail.com', 1, 2, 5)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (19, N'hung', N'222', N'222', N'Hoàng Đức Hùng', N'Nam', N'hung@gmail.com', 1, 2, 6)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (20, N'tho', N'222', N'222', N'Đặng Ngọc Thọ', N'Nam', N'tho@gmail.com', 1, 2, 7)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (26, N'123', N'321', N'321', NULL, NULL, N'q@gmail.com', 1, 2, 11)
INSERT [dbo].[Accounts] ([account_id], [user_name], [password], [confirm_password], [fullname], [gender], [email_address], [enabled], [role_id], [HocsinhId]) VALUES (28, N'dung99', N'1', N'1', NULL, NULL, N'dung1234@gmail.com', 1, 2, 38)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Baomau] ON 

INSERT [dbo].[Baomau] ([BaomauId], [Tenbaomau], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [XeplopId]) VALUES (1, N'Trần Thị Hiệp', N'Đà Nẵng', CAST(0xAC170B00 AS Date), N'Nữ', N'baomau1.jpg', N'0908000444', 1)
INSERT [dbo].[Baomau] ([BaomauId], [Tenbaomau], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [XeplopId]) VALUES (2, N'Thì Thị Diệu', N'Quảng Nam', CAST(0xFC180B00 AS Date), N'Nữ', N'baomau2.jpg', N'0908000444', 2)
INSERT [dbo].[Baomau] ([BaomauId], [Tenbaomau], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [XeplopId]) VALUES (3, N'Trần Thị Thắm', N'Hà Nội', CAST(0x4A1A0B00 AS Date), N'Nữ', N'baomau3.jpg', N'0908000444', 3)
INSERT [dbo].[Baomau] ([BaomauId], [Tenbaomau], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [XeplopId]) VALUES (4, N'Trần Thị Lan', N'Nghệ An', CAST(0x9B1B0B00 AS Date), N'Nữ', N'baomau4.jpg', N'0908000444', 4)
INSERT [dbo].[Baomau] ([BaomauId], [Tenbaomau], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [XeplopId]) VALUES (5, N'Trần Thị Anh', N'Huế', CAST(0xE91C0B00 AS Date), N'Nữ', N'baomau5.jpg', N'0908000444', 5)
SET IDENTITY_INSERT [dbo].[Baomau] OFF
SET IDENTITY_INSERT [dbo].[Chuansuckhoe] ON 

INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (1, N'1 Tháng', 4.5, 54.9, 4.1, 53.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (2, N'2 Tháng', 5.6, 58.4, 5.1, 57.1)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (3, N'3 Tháng', 6.4, 61.4, 5.8, 59.8)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (4, N'4 Tháng', 7, 63.9, 6.4, 62.1)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (5, N'5 Tháng', 7.5, 65.9, 6.9, 64)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (6, N'6 Tháng', 7.9, 67.6, 7.3, 65.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (7, N'7 Tháng', 8.3, 69.2, 7.6, 67.3)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (8, N'8 Tháng', 8.6, 70.6, 7.9, 68.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (9, N'9 Tháng', 8.9, 72, 8.2, 70.1)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (10, N'10 Tháng', 9.2, 73.3, 8.5, 71.5)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (11, N'11 Tháng', 9.4, 74.5, 8.7, 72.8)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (12, N'12 Tháng', 9.6, 75.7, 8.9, 74)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (13, N'18 Tháng', 10.9, 82.3, 10.2, 80.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (14, N'2 Tuổi', 12.2, 87.8, 11.5, 86.4)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (15, N'2,5 Tuổi', 13.3, 91.9, 12.7, 90.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (16, N'3 Tuổi', 14.3, 96.1, 13.9, 95.1)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (17, N'3,5 Tuổi', 15.3, 99.9, 15, 99)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (18, N'4 Tuổi', 16.3, 103.3, 16.1, 102.7)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (19, N'4,5 Tuổi', 17.3, 106.7, 17.2, 106.2)
INSERT [dbo].[Chuansuckhoe] ([ChuansuckhoeId], [Thangtuoi], [Chuanchieucaonam], [Chuancannangnam], [Chuanchieucaonu], [Chuancannangnu]) VALUES (20, N'5 Tuổi', 18.3, 110, 18.2, 109.4)
SET IDENTITY_INSERT [dbo].[Chuansuckhoe] OFF
SET IDENTITY_INSERT [dbo].[Giaovien] ON 

INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (1, N'Nguyễn Thị Thu Thảo', N'Đà Nẵng', CAST(0xD1150B00 AS Date), N'Nữ', N'cogiao1.jpg', N'0908000000', N'cogiaothao@gmail.com', N'Cao Đẳng', N'Nhân Viên', N'2 Năm', 1)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (2, N'Nguyễn Thị Hằng', N'Quang Nam', CAST(0x2B1A0B00 AS Date), N'Nữ', N'cogiao2.jpg', N'0908000111', N'Hang@gmail.com', N'Đại Học', N'Nhân Viên', N'2 Năm', 2)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (3, N'Nguyễn Thị Nga', N'Hà Nội', CAST(0x481A0B00 AS Date), N'Nữ', N'cogiao3.jpg', N'0908000222', N'Nga@gmail.com', N'Cao Đẳng', N'Nhân Viên', N'1,5 Năm', 3)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (4, N'Nguyễn Thị Hoa', N'Huế', CAST(0xFB180B00 AS Date), N'Nữ', N'cogiao4.jpg', N'0908000333', N'Hoa@gmail.com', N'Trung Cấp', N'Nhân Viên', N'1 Năm', 4)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (5, N'Nguyễn Thị Huệ', N'Gia Lai', CAST(0xAC170B00 AS Date), N'Nữ', N'cogiao5.jpg', N'0908000444', N'Hue@gmail.com', N'Cao Đẳng', N'Nhân Viên', N'2 Năm', 5)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (11, N'phan anh', N'tran cao van', CAST(0xBE160B00 AS Date), N'Nu', N'baomau4.jpg', N'0803746', N'dphan@gmail.com', N'Dai hoc', N'Nhan vien', N'3', NULL)
INSERT [dbo].[Giaovien] ([GiaovienId], [Tengv], [Diachi], [Ngaysinh], [Gioitinh], [Hinhanh], [Dienthoai], [Email], [Trinhdo], [Chucvu], [Kinhnghiem], [XeplopId]) VALUES (12, N'nguyen van a', N'ddd', CAST(0xE3150B00 AS Date), N'nu', N'cogiao1.jpg', N'353535', N'ddd@gmail.com', N'dai hoc', N'nhan vioen', N'3', NULL)
SET IDENTITY_INSERT [dbo].[Giaovien] OFF
SET IDENTITY_INSERT [dbo].[Hocsinh] ON 

INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (1, N'Nguyễn Đức Dũng', N'Đà Nẵng', CAST(0x55340B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh6.jpg', N'Nguyễn Đức An', N'0914905739')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (2, N'Nguyễn Kim Tuấn', N'Gia Lai', CAST(0xBB330B00 AS Date), N'Nam', N'Bơi lội', N'hocsinh2.jpg', N'Nguyễn Kim Đức', N'0909000111')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (3, N'Đặng Ngọc Thiên', N'Quang Nam', CAST(0xDA330B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh4.jpg', N'Đặng Ngọc Thọ', N'0909000222')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (4, N'Ngô Thanh Tùng', N'Hải  Phòng', CAST(0xED340B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh5.jpg', N'Ngô Thanh Hoàng', N'0909000333')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (5, N'Tô Thanh Hải', N'Đà Nẵng', CAST(0x18340B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh3.jpg', N'Tô Thanh Phong', N'0909000444')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (6, N'Nguyễn Thị Danh', N'Đà Nẵng', CAST(0x55340B00 AS Date), N'Nữ', N'Múa Hát', N'hocsinh1.jpg', N'Nguyễn Phi Hùng', N'0909000555')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (7, N'Ngô Thị Quyên', N'Quảng Nam', CAST(0x31340B00 AS Date), N'Nữ', N'Chơi Game', N'hocsinh5.jpg', N'Ngô Thị Hoa', N'0909000666')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (8, N'Nguyễn Đoàn Minh Anh', N'Hà Nội', CAST(0x38340B00 AS Date), N'Nam', N'Chơi Game', N'hocsinh1.jpg', N'Nguyễn Đoàn Hồng', N'0900912113')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (9, N'Nguyễn Phương Anh', N'Quảng Nam', CAST(0x34340B00 AS Date), N'Nữ', N'Múa Hát', N'hocsinh2.jpg', N'Nguyễn Phương Hà', N'0905929323')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (10, N'Mai Đức Duy', N'Quảng Nam', CAST(0x37340B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh3.jpg', N'Mai Đức Anh', N'0905783513')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (11, N'Võ Việt Hà', N'Đà Nẵng', CAST(0xA3350B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh4.jpg', N'Võ Việt Đức', N'0905647362')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (12, N'Nguyễn Hoàng Hải', N'Quảng Nam', CAST(0xE4350B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh5.jpg', N'Nguyễn Hoàng Sơn', N'0905647382')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (13, N'Trương Gia Huy', N'Đà Nẵng', CAST(0x22360B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh6.jpg', N'Trương Gia Tuấn', N'0905873612')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (14, N'Trần Đăng Khoa', N'Quảng Nam', CAST(0x82350B00 AS Date), N'Nữ', N'Chơi Game', N'hocsinh1.jpg', N'Trần Đăng Hào', N'0905768462')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (15, N'Nguyễn Quang Khôi', N'Đà Nẵng', CAST(0x49350B00 AS Date), N'Nữ', N'Nghe Nhạc', N'hocsinh2.jpg', N'Nguyễn Tuấn', N'0905987423')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (16, N'Nguyễn Thị Ngọc Ngân', N'Quảng Nam', CAST(0x59360B00 AS Date), N'Nữ', N'Bơi lội', N'hocsinh3.jpg', N'Nguyễn Thế Danh', N'0988546312')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (17, N'Nguyễn Thị Thảo', N'Quảng Nam', CAST(0xDFB60B00 AS Date), N'Nữ', N'Bơi lội', N'hocsinh4.jpg', N'Nguyễn Phương Anh', N'0974536221')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (18, N'Hồ Ngọc Yến Nhi', N'Đà Nẵng', CAST(0x89360B00 AS Date), N'Nữ', N'Đọc Truyện', N'hocsinh6.jpg', N'Hồ Văn Phước', N'0907020120')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (19, N'Nguyễn Minh Như', N'Đà Nẵng', CAST(0xB6360B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh5.jpg', N'Nguyễn Minh Thảo', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (20, N'Lê Thanh Phong', N'Đà Nẵng', CAST(0x11370B00 AS Date), N'Nam', N'Chơi Game', N'hocsinh1.jpg', N'Lê Thanh Hải', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (21, N'Đỗ Vĩnh Phú', N'Quảng Nam', CAST(0xBB360B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh2.jpg', N'Đỗ Vĩnh Hà', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (22, N'Nguyễn Đông Quân', N'Đà Nẵng', CAST(0x8F370B00 AS Date), N'Nam', N'Chơi Game', N'hocsinh3.jpg', N'Nguyễn Đông Hùng', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (23, N'Nguyễn Đức Tâm', N'Quảng Nam', CAST(0x50370B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh4.jpg', N'Nguyễn Đức Tuấn', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (24, N'Nguyễn Ngọc Phương Thùy', N'Đà Nẵng', CAST(0xEF360B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh6.jpg', N'Nguyễn Thị Thủy', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (25, N'Lê Ngọc Anh Thư', N'Quảng Nam', CAST(0x0C370B00 AS Date), N'Nữ', N'Đọc Truyện', N'hocsinh5.jpg', N'Lê Thị Hồng', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (26, N'Lê Ngân Hạnh Thi', N'Đà Nẵng', CAST(0x0D370B00 AS Date), N'Nữ', N'Chơi Game', N'hocsinh1.jpg', N'Lê Như Đoàn', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (27, N'Trần Ánh Tiên', N'Quảng Nam', CAST(0xFC380B00 AS Date), N'Nữ', N'Múa Hát', N'hocsinh2.jpg', N'Trần Thị Nguyệt', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (28, N'Trần Ngọc Trâm', N'Đà Nẵng', CAST(0xFB380B00 AS Date), N'Nữ', N'Nghe Nhạc', N'hocsinh3.jpg', N'Trần Công Chí', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (29, N'Trần Tuấn Triệu', N'Quảng Nam', CAST(0xE9380B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh4.jpg', N'Trần Tuấn Tú', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (30, N'Lê Trung Hiếu', N'Đà Nẵng', CAST(0x63390B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh6.jpg', N'Lê Thanh Phong', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (31, N'Trương Mỹ Tú', N'Quảng Nam', CAST(0x4E390B00 AS Date), N'Nữ', N'Nghe Nhạc', N'hocsinh1.jpg', N'Trương Mỹ Chi', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (32, N'Nguyễn Điệp Vũ', N'Đà Nẵng', CAST(0x1D390B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh2.jpg', N'Nguyễn Đình Vũ', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (33, N'Nguyễn Thế Anh', N'Quảng Nam', CAST(0x3B390B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh3.jpg', N'Nguyễn Thế Hào', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (34, N'Đặng Thiên Bảo', N'Quảng Nam', CAST(0x5A390B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh4.jpg', N'Đặng Thiên Sơn', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (35, N'Trần Thế Duy', N'Đà Nẵng', CAST(0x7D3A0B00 AS Date), N'Nam', N'Chơi Game', N'hocsinh6.jpg', N'Trần Thế Thuận', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (36, N'Nguyễn Thị Anh Thư', N'Quảng Nam', CAST(0xEA390B00 AS Date), N'Nữ', N'Đọc Truyện', N'hocsinh5.jpg', N'Nguyễn Duy Hưng', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (37, N'Trần Thị Tuyết', N'Đà Nẵng', CAST(0x693A0B00 AS Date), N'Nữ', N'Nghe Nhạc', N'hocsinh1.jpg', N'Trần Anh Đức', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (38, N'Đào Phi Dương', N'Quảng Nam', CAST(0x473A0B00 AS Date), N'Nam', N'Đọc Truyện', N'hocsinh2.jpg', N'Đào Phi Trường', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (39, N'Trần Nguyên Lộc', N'Đà Nẵng', CAST(0xE8390B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh3.jpg', N'Trần Nguyên Sơn', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (40, N'Bùi Nhật Nam', N'Quảng Nam', CAST(0x623A0B00 AS Date), N'Nam', N'Múa Hát', N'hocsinh4.jpg', N'Bùi Nhật Danh', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (41, N'Bùi Tấn Thành', N'Đà Nẵng', CAST(0xF4390B00 AS Date), N'Nam', N'Nghe Nhạc', N'hocsinh6.jpg', N'Bùi Tấm Tâm', N'0909325232')
INSERT [dbo].[Hocsinh] ([HocsinhId], [Tenhs], [Diachi], [Ngaysinh], [Gioitinh], [Sothich], [Hinhanh], [Phuhuynh], [Dienthoaiph]) VALUES (42, N'Diệp Gia Thuận', N'Quảng Nam', CAST(0x483A0B00 AS Date), N'Nữ', N'Múa Hát', N'hocsinh5.jpg', N'Diệp Thế Thành', N'0909325232')
SET IDENTITY_INSERT [dbo].[Hocsinh] OFF
SET IDENTITY_INSERT [dbo].[Lichhdkhoitre] ON 

INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (1, N'6h30-7h30', N'Đón trẻ - Thể dục buổi sáng')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (2, N'7h30-8h00', N'Ăn sáng')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (3, N'8h00-8h30', N'Vệ sinh cá nhân - Trò chuyện sáng - Đi dạo')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (4, N'8h30-9h30', N'Hoạt động học - Hoạt động chơi')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (5, N'9h30-10h35', N'Hoạt động theo ý thích - Hoạt động chơi ngoài trời')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (6, N'10h30-11h30', N'Ăn trưa')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (7, N'11h30-1400', N'Ngủ trưa')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (8, N'14h00-14h30', N'Uống nước hoa quả - Vệ sinh cá nhân')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (9, N'14h30-15h30', N'Ăn xế')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (10, N'15h30-16h00', N'Sinh hoạt chung')
INSERT [dbo].[Lichhdkhoitre] ([LichhdkhoitreId], [Thoigian], [Hoatdong]) VALUES (11, N'16h00-17h00', N'Chơi - Trả trẻ')
SET IDENTITY_INSERT [dbo].[Lichhdkhoitre] OFF
SET IDENTITY_INSERT [dbo].[Lichhdmaugiao] ON 

INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (1, N'6h30-7h30', N'Đón trẻ - Thể dục buổi sáng')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (2, N'7h30-8h00', N'Ăn sáng')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (3, N'8h00-8h30', N'Vệ sinh cá nhân - Trò chuyện sáng - Đi dạo')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (4, N'8h30-9h30', N'Hoạt động học - Hoạt động chơi')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (5, N'9h30-10h35', N'Hoạt động theo ý thích - Hoạt động chơi ngoài trời')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (6, N'10h30-11h30', N'Ăn trưa')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (7, N'11h30-1400', N'Ngủ trưa')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (8, N'14h00-14h30', N'Uống nước hoa quả - Vệ sinh cá nhân')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (9, N'14h30-15h30', N'Ăn xế')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (10, N'15h30-16h00', N'Sinh hoạt chung')
INSERT [dbo].[Lichhdmaugiao] ([LichhdmaugiaoId], [Thoigian], [Hoatdong]) VALUES (11, N'16h00-17h00', N'Chơi - Trả trẻ')
SET IDENTITY_INSERT [dbo].[Lichhdmaugiao] OFF
SET IDENTITY_INSERT [dbo].[Lop] ON 

INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (1, 5, 1)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (2, 5, 2)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (3, 5, 3)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (4, 5, 4)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (5, 5, 5)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (6, 5, 6)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (7, 5, 7)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (11, 5, 8)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (12, 5, 9)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (13, 5, 10)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (14, 4, 11)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (15, 4, 12)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (16, 4, 13)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (17, 4, 14)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (18, 4, 15)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (19, 4, 16)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (20, 4, 17)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (21, 4, 18)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (22, 3, 19)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (23, 3, 20)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (24, 3, 21)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (25, 3, 22)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (26, 3, 23)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (27, 3, 24)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (28, 3, 25)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (29, 3, 26)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (30, 2, 27)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (31, 2, 28)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (32, 2, 29)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (33, 2, 30)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (34, 2, 31)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (35, 2, 32)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (36, 2, 33)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (37, 2, 34)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (38, 1, 35)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (39, 1, 36)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (40, 1, 37)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (41, 1, 38)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (42, 1, 39)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (43, 1, 40)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (44, 1, 41)
INSERT [dbo].[Lop] ([LopId], [XeplopId], [HocsinhId]) VALUES (45, 1, 42)
SET IDENTITY_INSERT [dbo].[Lop] OFF
SET IDENTITY_INSERT [dbo].[Monhoc] ON 

INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (1, N'Võ', 4, N'7 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (2, N'Vẽ', 2, N'4 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (3, N'Aerobic', 4, N'7 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (4, N'Hát', 4, N'7 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (5, N'Đàn', 2, N'4 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (6, N'Múa', 4, N'7 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (7, N'Làm quen với bảng chữ cái', 2, N'2 Tiết/Tuần')
INSERT [dbo].[Monhoc] ([MonhocId], [Tenmonhoc], [Sotiet], [Thoigian]) VALUES (8, N'Tập viết căn bản', 2, N'2 Tiết/Tuần')
SET IDENTITY_INSERT [dbo].[Monhoc] OFF
SET IDENTITY_INSERT [dbo].[Phanquyen] ON 

INSERT [dbo].[Phanquyen] ([PhanquyenId], [Tenphanquyen]) VALUES (1, N'Admin')
INSERT [dbo].[Phanquyen] ([PhanquyenId], [Tenphanquyen]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Phanquyen] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([role_id], [authority]) VALUES (1, N'ROLE_HOST')
INSERT [dbo].[Roles] ([role_id], [authority]) VALUES (2, N'ROLE_GUEST')
INSERT [dbo].[Roles] ([role_id], [authority]) VALUES (3, N'ROLE_ADMIN')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Suckhoebenam] ON 

INSERT [dbo].[Suckhoebenam] ([SuckhoebenamId], [HocsinhId], [Ngaykham], [Chieucao], [Sosanhcc], [Tinhtrangcc], [Cannang], [Sosanhcn], [Tinhtrangcn], [ChuansuckhoeId]) VALUES (1121, 1, CAST(0x1A190B00 AS Date), 10.199999809265137, 1, N'Thap', 111, 11.100000381469727, N'Béo', 10)
INSERT [dbo].[Suckhoebenam] ([SuckhoebenamId], [HocsinhId], [Ngaykham], [Chieucao], [Sosanhcc], [Tinhtrangcc], [Cannang], [Sosanhcn], [Tinhtrangcn], [ChuansuckhoeId]) VALUES (1122, 1, CAST(0x5B950A00 AS Date), 67, 56.099998474121094, N'Cao', 55, -27.299999237060547, N'Gầy', 13)
INSERT [dbo].[Suckhoebenam] ([SuckhoebenamId], [HocsinhId], [Ngaykham], [Chieucao], [Sosanhcc], [Tinhtrangcc], [Cannang], [Sosanhcn], [Tinhtrangcn], [ChuansuckhoeId]) VALUES (1123, 8, CAST(0x623B0B00 AS Date), 22, 6.6999998092651367, N'Cao', 100, 0.10000000149011612, N'Gầy', 17)
SET IDENTITY_INSERT [dbo].[Suckhoebenam] OFF
SET IDENTITY_INSERT [dbo].[Suckhoebenu] ON 

INSERT [dbo].[Suckhoebenu] ([SuckhoebenuId], [HocsinhId], [Ngaykham], [Chieucao], [Sosanhcc], [Tinhtrangcc], [Cannang], [Sosanhcn], [Tinhtrangcn], [ChuansuckhoeId]) VALUES (14, 11, CAST(0x5B950A00 AS Date), 22, 14.100000381469727, N'Cao', 70, -0.10000000149011612, N'Gầy', 8)
SET IDENTITY_INSERT [dbo].[Suckhoebenu] OFF
SET IDENTITY_INSERT [dbo].[Taikhoan] ON 

INSERT [dbo].[Taikhoan] ([TaikhoanId], [Tentaikhoan], [Matkhau], [Email], [PhanquyenId]) VALUES (6, N'Thiendn', N'123456', N'Thiendn@gmail.com', 1)
INSERT [dbo].[Taikhoan] ([TaikhoanId], [Tentaikhoan], [Matkhau], [Email], [PhanquyenId]) VALUES (7, N'Dungnd', N'123456', N'Dungnd@gmail.com', 1)
INSERT [dbo].[Taikhoan] ([TaikhoanId], [Tentaikhoan], [Matkhau], [Email], [PhanquyenId]) VALUES (8, N'Ducnq', N'123456', N'Ducnq@gmail.com', 2)
INSERT [dbo].[Taikhoan] ([TaikhoanId], [Tentaikhoan], [Matkhau], [Email], [PhanquyenId]) VALUES (9, N'Danhnc', N'123456', N'Danhnc@gmail.com', 2)
INSERT [dbo].[Taikhoan] ([TaikhoanId], [Tentaikhoan], [Matkhau], [Email], [PhanquyenId]) VALUES (10, N'Tuannk', N'123456', N'Tuannk@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[Taikhoan] OFF
SET IDENTITY_INSERT [dbo].[Thucdontrongtuan] ON 

INSERT [dbo].[Thucdontrongtuan] ([Thucdontrongtuanid], [Buoi], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [Chunhat]) VALUES (1, N'Sáng (7h30 - 8h30)', N'Miến lươn + thịt nạc Sữa bột Arti', N'Hoành thánh gói thịt (MG) Hoành thánh tôm thịt (NT) . Sữa bột Arti', N' Bánh mì sò pa-tê (MG) Cháo cá lóc- thịt nạc tần ô . Sữa bột Arti', N'Bánh canh cua    Sữa bột Arti', N'Cháo nghêu - thịt đậu tí-po           Sữa bột Arti', N'Phở gà Sữa bột Arti', NULL)
INSERT [dbo].[Thucdontrongtuan] ([Thucdontrongtuanid], [Buoi], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [Chunhat]) VALUES (3, N'Ăn phụ (9h)', N'Thanh long', N'Dưa hấu', N'Nho xanh           (Ba Mọi)', N'Rau câu', N'Đu Đủ', N'Chuối Sứ', NULL)
INSERT [dbo].[Thucdontrongtuan] ([Thucdontrongtuanid], [Buoi], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [Chunhat]) VALUES (4, N'Ăn trưa Tráng miệng (10h30 - 11h)', N'Thịt kho trứng         Canh nấm bào ngư thịt nạc     Đậu cô-ve xào (DC-BP)                    Yaourt', N'Sườn heo nấu đậu                        Canh bầu tôm tươi                                  Bánh Flan', N'Xúc xích chiên trứng Canh rau tập tàng tôm thịt Sà lách trộn dầu dấm (DC- BP) Yaourt', N'Cá thu chiên sốt cà . Canh cải thảo tôm thịt          Bánh Flan', N'Bò nấu  Ra-gu         Bánh mì lạt (MG)            Bánh mì sandwich (NT) . Yaourt', N'Tôm thịt kho nấm rơm           Canh cải xanh cá lóc     Bánh flan', NULL)
INSERT [dbo].[Thucdontrongtuan] ([Thucdontrongtuanid], [Buoi], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [Chunhat]) VALUES (5, N'Ăn uống nhẹ (14h)', N'Sinh tố bơ', N'Nước Chanh dây', N'Nước bông cúc	', N'Nước tắc', N'Nước Cam', N'Nước Chanh', NULL)
INSERT [dbo].[Thucdontrongtuan] ([Thucdontrongtuanid], [Buoi], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [Chunhat]) VALUES (6, N'Ăn xế; (14h30 - 15h)', N'Soup bò                              Sữa bột Arti (NT)', N'Bún Mọc', N'Hủ tíu bò viên       Sữa bột Arti (NT)', N'Xôi sen - gà xé (MG)              Cháo gà hạt sen (NT)                 Sữa bột Arti (NT)', N'Mì nấu thập cẩm    Sữa bột Arti (NT)', N'Nui sườn - Trứng gà so luộc (MG)            Phô -mai viên + Sữa bột Arti (NT)', NULL)
SET IDENTITY_INSERT [dbo].[Thucdontrongtuan] OFF
SET IDENTITY_INSERT [dbo].[Thuchi] ON 

INSERT [dbo].[Thuchi] ([ThuchiId], [HocsinhId], [Tienhocphi], [Tienan], [Tienphuthu], [Diemdanh], [Tienthua], [Tongtien]) VALUES (13, 1, 50000, 50000, 150000, 2, 40000, 210000)
INSERT [dbo].[Thuchi] ([ThuchiId], [HocsinhId], [Tienhocphi], [Tienan], [Tienphuthu], [Diemdanh], [Tienthua], [Tongtien]) VALUES (16, 2, 100000, 600000, 50000, 5, 100000, 650000)
INSERT [dbo].[Thuchi] ([ThuchiId], [HocsinhId], [Tienhocphi], [Tienan], [Tienphuthu], [Diemdanh], [Tienthua], [Tongtien]) VALUES (18, 3, 200000, 600000, 100000, 3, 60000, 840000)
SET IDENTITY_INSERT [dbo].[Thuchi] OFF
SET IDENTITY_INSERT [dbo].[Xeplop] ON 

INSERT [dbo].[Xeplop] ([XeplopId], [Nhomtuoi], [Tenxeplop], [Siso], [GiaovienId], [BaomauId]) VALUES (1, N'1 Tháng - 18 Tháng', N'Lớp Bé', 15, 1, 1)
INSERT [dbo].[Xeplop] ([XeplopId], [Nhomtuoi], [Tenxeplop], [Siso], [GiaovienId], [BaomauId]) VALUES (2, N'19 Tháng - 36 Tháng', N'Lớp Trẻ', 20, 2, 2)
INSERT [dbo].[Xeplop] ([XeplopId], [Nhomtuoi], [Tenxeplop], [Siso], [GiaovienId], [BaomauId]) VALUES (3, N'3 Tuổi - 4 Tuổi', N'Lớp Mầm', 25, 3, 3)
INSERT [dbo].[Xeplop] ([XeplopId], [Nhomtuoi], [Tenxeplop], [Siso], [GiaovienId], [BaomauId]) VALUES (4, N'4 Tuổi - 5 Tuổi', N'Lớp Chồi', 30, 4, 4)
INSERT [dbo].[Xeplop] ([XeplopId], [Nhomtuoi], [Tenxeplop], [Siso], [GiaovienId], [BaomauId]) VALUES (5, N'5 Tuổi - 6 Tuổi', N'Lớp Lá', 30, 5, 5)
SET IDENTITY_INSERT [dbo].[Xeplop] OFF
USE [master]
GO
ALTER DATABASE [TruongMamNon] SET  READ_WRITE 
GO
