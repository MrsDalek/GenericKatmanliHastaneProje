USE [HastaneDLL1]
GO
/****** Object:  Table [dbo].[AltBolge]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltBolge](
	[AltBolgeID] [int] NOT NULL,
	[AltBolgeAdi] [nvarchar](50) NULL,
	[BolgeID] [int] NULL,
 CONSTRAINT [PK_AltBolge] PRIMARY KEY CLUSTERED 
(
	[AltBolgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bolge]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolge](
	[BolgeID] [int] NOT NULL,
	[BolgeAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bolge] PRIMARY KEY CLUSTERED 
(
	[BolgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktorlar]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktorlar](
	[DoktorID] [int] NOT NULL,
	[TBID] [int] NULL,
	[PersonelID] [int] NULL,
 CONSTRAINT [PK_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hasta]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta](
	[HastaID] [int] IDENTITY(1,1) NOT NULL,
	[HastaAdi] [nvarchar](50) NULL,
	[HastaSoyAdi] [nvarchar](50) NULL,
	[Tc_Passaport] [nchar](10) NULL,
	[HastaKanGrubu] [nvarchar](50) NULL,
	[HastaBoy] [nvarchar](50) NULL,
	[HastaKilo] [nvarchar](50) NULL,
	[HastaAdres] [nvarchar](50) NULL,
	[HastaTel] [nvarchar](50) NULL,
	[HastaYas] [int] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_Hasta] PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastaneler]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastaneler](
	[HastaneID] [int] IDENTITY(1,1) NOT NULL,
	[HastaneAdi] [nvarchar](50) NULL,
	[AltBolgeID] [int] NULL,
	[HastaneTel] [nvarchar](50) NULL,
	[HastaneAdres] [nvarchar](255) NULL,
	[HastaneMail] [nvarchar](50) NULL,
	[durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HastaneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaTahlil]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaTahlil](
	[TahlilID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[TahlilTarih] [date] NULL,
	[SonucTarih] [date] NULL,
	[TahlilSonuc] [nvarchar](250) NULL,
 CONSTRAINT [PK__HastaTah__5176756B3CBC46A6] PRIMARY KEY CLUSTERED 
(
	[TahlilID] ASC,
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muayene]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muayene](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[DoktorID] [int] NULL,
	[HastaID] [int] NULL,
	[MTURID] [int] NULL,
	[MGiris] [date] NULL,
	[MCikis] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuayeneTedavi]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuayeneTedavi](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[TedaviID] [int] NOT NULL,
	[ReceteAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK__MuayeneT__C797348A96561BD0] PRIMARY KEY CLUSTERED 
(
	[MID] ASC,
	[TedaviID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuayeneTur]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuayeneTur](
	[MTURID] [int] NOT NULL,
	[MuayeneTuru] [nvarchar](50) NULL,
 CONSTRAINT [PK_MuayeneTur] PRIMARY KEY CLUSTERED 
(
	[MTURID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdi] [nvarchar](50) NULL,
	[PersonelSoyad] [nvarchar](50) NULL,
	[PersonelTc] [nvarchar](50) NULL,
	[HastaneID] [int] NULL,
	[UnvanID] [int] NULL,
	[PersonelYas] [int] NULL,
	[PersonelCinsiyet] [nvarchar](50) NULL,
	[PersonelTel] [nvarchar](50) NULL,
	[PersonelMail] [nvarchar](50) NULL,
	[PersonelAdres] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK__Personel__0F0C5751CE341552] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tahliller]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tahliller](
	[TahlilID] [int] IDENTITY(1,1) NOT NULL,
	[TahlilTur] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tahliller] PRIMARY KEY CLUSTERED 
(
	[TahlilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedavi]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedavi](
	[TedaviID] [int] IDENTITY(1,1) NOT NULL,
	[TedaviTanim] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TedaviID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TibbiBirimler]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TibbiBirimler](
	[TBID] [int] NOT NULL,
	[TibbiAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TibbiBirimler] PRIMARY KEY CLUSTERED 
(
	[TBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unvan]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unvan](
	[UnvanID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAdi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Doktor]    Script Date: 4.06.2022 19:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_Doktor]
as
select d.DoktorID, tb.TBID, p.PersonelAdi + ' '+p.PersonelSoyad as Doktor , tb.TibbiAdi from  Doktorlar d, TibbiBirimler tb ,Personeller p where d.TBID=tb.TBID and d.PersonelID=p.PersonelID
GO
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (6, N'Ankara', 4)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (10, N'Balıkesir', 1)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (34, N'İstanbul', 1)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (35, N'İzmir', 2)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (48, N'Muğla', 2)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (53, N'Rize', 3)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (55, N'Samsun', 3)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (58, N'Sivas', 4)
INSERT [dbo].[AltBolge] ([AltBolgeID], [AltBolgeAdi], [BolgeID]) VALUES (61, N'Trabzon', 3)
GO
INSERT [dbo].[Bolge] ([BolgeID], [BolgeAdi]) VALUES (1, N'Marmara')
INSERT [dbo].[Bolge] ([BolgeID], [BolgeAdi]) VALUES (2, N'Ege')
INSERT [dbo].[Bolge] ([BolgeID], [BolgeAdi]) VALUES (3, N'Karadeniz')
INSERT [dbo].[Bolge] ([BolgeID], [BolgeAdi]) VALUES (4, N'İç Anadolu')
GO
INSERT [dbo].[Doktorlar] ([DoktorID], [TBID], [PersonelID]) VALUES (1, 4, 9)
INSERT [dbo].[Doktorlar] ([DoktorID], [TBID], [PersonelID]) VALUES (2, 2, 2)
INSERT [dbo].[Doktorlar] ([DoktorID], [TBID], [PersonelID]) VALUES (3, 3, 1)
INSERT [dbo].[Doktorlar] ([DoktorID], [TBID], [PersonelID]) VALUES (4, 1, 10)
GO
SET IDENTITY_INSERT [dbo].[Hasta] ON 

INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (1, N'Furkan', N'Varaşgan', N'2231231231', N'AB+', N'163', N'55', N'İstanbul Merkez', N'012356486', 28, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (2, N'Şeyma', N'Çakıroğlu', N'2331231123', N'BRH+', N'190', N'85', N'Konya Merkez', N'012345890', 17, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (3, N'Emine', N'Bilgi', N'1231312312', N'ARH-', N'175', N'90', N'İzmir Merkez', N'012312312', 33, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (4, N'Şafak', N'Saydır', N'8974587245', N'AB-', N'155', N'70', N'Mardin Merkez', N'012345678', 25, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (5, N'Atakan', N'Başgjgk', N'9871235489', N'0RH+', N'170', N'110', N'Diyarbakır Merkez', N'012354865', 54, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (6, N'elifoski', N'akoski', N'123455355 ', N'abrh+', N'165', N'70', N'pendik', N'125446546', 25, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (7, N'Sakura', N'Haruno', N'1234567980', N'A RH+', N'155', N'56', N'Tokyo', N'335522449', 16, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (8, N'elif', N'Çakıroğlu', N'6578994521', N'A RH -', N'170', N'55', N'Pendik/Yakacık', N'12365478974', 24, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (9, N'Atakan', N'Bas', N'8745632188', N'0 RH +', N'175', N'65', N'Pendik', N'8754851265', 56, 1)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyAdi], [Tc_Passaport], [HastaKanGrubu], [HastaBoy], [HastaKilo], [HastaAdres], [HastaTel], [HastaYas], [durum]) VALUES (10, N'Sasuke', N'Uchiha', N'1234567892', N'A RH+', N'190', N'70', N'Konoha', N'5551114422', 30, 1)
SET IDENTITY_INSERT [dbo].[Hasta] OFF
GO
SET IDENTITY_INSERT [dbo].[Hastaneler] ON 

INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (1, N'Wordify', 34, N'3761096941', N'169 Sundown Alley', N'johrtmann0@1688.com', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (2, N'Shufflebeat', 58, N'9263092958', N'2853 Thierer Trail', N'csempill1@guardian.co.uk', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (3, N'Wordify', 55, N'7101798357', N'903 Dovetail Way', N'olanders2@state.tx.us', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (4, N'Gevee', 61, N'8297004325', N'0 Express Drive', N'mbourget3@arizona.edu', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (5, N'Tekfly', 53, N'6590356920', N'7 Fordem Drive', N'llongforth4@bbb.org', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (6, N'Feedbug', 35, N'2337311074', N'7944 Gateway Court', N'ghellyer5@wunderground.com', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (7, N'Avavee', 48, N'0622245163', N'6673 Arapahoe Street', N'scosley6@histats.com', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (8, N'Quamba', 6, N'6414892742', N'0328 Esker Crossing', N'nsowter7@bluehost.com', 1)
INSERT [dbo].[Hastaneler] ([HastaneID], [HastaneAdi], [AltBolgeID], [HastaneTel], [HastaneAdres], [HastaneMail], [durum]) VALUES (9, N'Voomm', 10, N'8811900654', N'1201 Spohn Lane', N'mmacgillivray8@oaic.gov.au', 1)
SET IDENTITY_INSERT [dbo].[Hastaneler] OFF
GO
SET IDENTITY_INSERT [dbo].[HastaTahlil] ON 

INSERT [dbo].[HastaTahlil] ([TahlilID], [HastaID], [TahlilTarih], [SonucTarih], [TahlilSonuc]) VALUES (1, 2, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-20' AS Date), N'Negatif')
INSERT [dbo].[HastaTahlil] ([TahlilID], [HastaID], [TahlilTarih], [SonucTarih], [TahlilSonuc]) VALUES (2, 3, CAST(N'2022-02-15' AS Date), CAST(N'2022-02-15' AS Date), N'Negatif')
INSERT [dbo].[HastaTahlil] ([TahlilID], [HastaID], [TahlilTarih], [SonucTarih], [TahlilSonuc]) VALUES (3, 1, CAST(N'2022-02-21' AS Date), CAST(N'2022-02-21' AS Date), N'Negatif')
SET IDENTITY_INSERT [dbo].[HastaTahlil] OFF
GO
SET IDENTITY_INSERT [dbo].[Muayene] ON 

INSERT [dbo].[Muayene] ([MID], [DoktorID], [HastaID], [MTURID], [MGiris], [MCikis]) VALUES (1, 4, 2, 1, CAST(N'2022-02-20' AS Date), CAST(N'2022-02-20' AS Date))
INSERT [dbo].[Muayene] ([MID], [DoktorID], [HastaID], [MTURID], [MGiris], [MCikis]) VALUES (2, 3, 4, 2, CAST(N'2022-02-19' AS Date), CAST(N'2022-03-19' AS Date))
INSERT [dbo].[Muayene] ([MID], [DoktorID], [HastaID], [MTURID], [MGiris], [MCikis]) VALUES (3, 3, 1, 1, CAST(N'2022-02-21' AS Date), CAST(N'2022-02-21' AS Date))
INSERT [dbo].[Muayene] ([MID], [DoktorID], [HastaID], [MTURID], [MGiris], [MCikis]) VALUES (4, 2, 3, 2, CAST(N'2021-12-15' AS Date), CAST(N'2022-01-24' AS Date))
INSERT [dbo].[Muayene] ([MID], [DoktorID], [HastaID], [MTURID], [MGiris], [MCikis]) VALUES (5, 1, 5, 2, CAST(N'2022-02-21' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Muayene] OFF
GO
SET IDENTITY_INSERT [dbo].[MuayeneTedavi] ON 

INSERT [dbo].[MuayeneTedavi] ([MID], [TedaviID], [ReceteAdi]) VALUES (1, 2, N'A0564XC')
INSERT [dbo].[MuayeneTedavi] ([MID], [TedaviID], [ReceteAdi]) VALUES (2, 1, N'X2312DS')
INSERT [dbo].[MuayeneTedavi] ([MID], [TedaviID], [ReceteAdi]) VALUES (3, 4, N'G124XGF')
INSERT [dbo].[MuayeneTedavi] ([MID], [TedaviID], [ReceteAdi]) VALUES (4, 3, N'RFGGWE')
INSERT [dbo].[MuayeneTedavi] ([MID], [TedaviID], [ReceteAdi]) VALUES (5, 4, N'')
SET IDENTITY_INSERT [dbo].[MuayeneTedavi] OFF
GO
INSERT [dbo].[MuayeneTur] ([MTURID], [MuayeneTuru]) VALUES (1, N'Ayakta')
INSERT [dbo].[MuayeneTur] ([MTURID], [MuayeneTuru]) VALUES (2, N'Yatakta')
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (1, N'Rory', N'Kindley', N'5223456789', 8, 1, 35, N'Erkek', N'0124864789', N'Rory@gmail.com', N'İstanbul Üsküdar', N'18a25bB9', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (2, N'Karla', N'Lazenbury', N'1234567489', 4, 1, 84, N'Kadın', N'0213456782', N'karla@gmail.com', N'Bursa ', N'84ad258798', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (3, N'Rudolfo', N'Durrington', N'0123456789', 3, 4, 26, N'Erkek', N'0123456788', N'Rudolfo@gmail.com', N'Afyon', N'ad4879bc9', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (4, N'Katalin', N'Edwards', N'1015468987', 2, 2, 26, N'Erkek', N'0123456788', N'Rudolfo@gmail.com', N'Afyon', N'ef58748963', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (5, N'Rayner', N'Marley', N'5645645652', 1, 3, 25, N'Erkek', N'0234186798', N'raynerattack@gmail.com', N'İzmir', N'acb85794215', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (6, N'Melisande', N'MacNeill', N'1234988945', 3, 3, 54, N'Kadın', N'0234988989', N'melisande@gmail.com', N'Edirne', N'8745123698', 0)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (7, N'Archaimbaud', N'Revan', N'5464564564', 1, 2, 25, N'Erkek', N'0524689897', N'Archaimbaud@gmail.com', N'Antalya', N'7412589632', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (8, N'Janine', N'Goodanew', N'5674899987', 6, 2, 52, N'Kadın', N'0564867486', N'Janine@gmail.com', N'İstanbul Kadıköy', N'ac25bc47856', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (9, N'Winnah', N'Collocott', N'8946965456', 5, 1, 28, N'Kadın', N'0567489778', N'winnah@gmail.com', N'Ankara Keçiören', N'7456982145', 0)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (10, N'Elizabet', N'Grigorini', N'5646981112', 7, 1, 23, N'Kadın', N'0564648989', N'elizabet@gmail.com', N'Trabzon', N'acb5874962', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (11, N'Elizabet', N'John', N'1123554858', 1, 1, 12, N's', N's', N's', N's', N'adcb258479', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (12, N'Archa', N'Dea', N'5582235898', 1, 1, 4, N'f', N'f', N'f', N'f', N'aed14785263', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (13, N'William', N'James', N'1236486669', 2, 3, 4, N'g', N'g', N'gg', N'g', N'8745698541', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (14, N'Clara', N'Owl', N'6452148511', 6, 3, 7, N'u', N'u', N'u', N'uu', N'abe874521', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (15, N'Sarı', N'ssarı', N'5122555554', 2, 6, 5, N'kkk', N'k', N'k', N'k', N'abe874521', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (16, N'Luis', N'Juan', N'25852254122', 2, 2, 62, N'Erkek', N'45698712354', N'luis@luis.com', N'Barcelona', N'ebf154ad', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (17, N'elif', N'akkaya', N'2255621456', 2, 2, 55, N'kadın', N'6546464', N'jsakak', N'jhggjgkjg', N'876549abc', 0)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (18, N'Atakan', N'Baş', N'12345678912', 1, 3, 26, N'Erkek', N'5555555555', N'atakan@atakan.com', N'Pendik', N'852369abd', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (19, N'Şeyma ', N'Çakıroğlu', N'98765425875', 4, 4, 23, N'Kadın', N'5514256587', N'seyma@seyma.com', N'Pendik Merkez', N'u82hA08Xqf', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (20, N'Elif ', N'Çakıroğlu', N'65498732114', 2, 2, 24, N'Kadın', N'12345679885', N'elif@elif.com', N'Yakacık Merkez', N'LQQ46d610', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (21, N'Ati', N'Basovski', N'54411885522', 6, 5, 30, N'Erkek', N'458541231574', N'ati@ati.com', N'Samsun', N'2FmTrvsV', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (22, N'Şeyma', N'Akkaya', N'74136985247', 6, 3, 35, N'Kadın', N'7778889955', N'sey@sey.com', N'Pendik/Yakacık', N'suz7h7wHy9', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (23, N'zcxzxczxc', N'asdasd', N'85212345698', 3, 1, 45, N'Erkek', N'598745621', N'sey@sey.com', N'Bursa', N'22Hfpy69', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (24, N'Bahar', N'kidir', N'45685274156', 6, 5, 56, N'Kadın', N'74859632145', N'bhr@bhr.com', N'Sinop', N'x8gtSO2pBZ', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (25, N'Atakan', N'Baş', N'54879654781', 1, 5, 26, N'Erkek', N'54879532154', N'ati@ati.com', N'Pendik', N'QN6BLqy5V', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (26, N'sadasdas', N'zxczxc', N'78965232145', 4, 4, 65, N'Erkek', N'4567812375456', N'asdasdasd', N'İkitelli', N'uxRIv7BlUn', 0)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (27, N'Hüsamettin', N'Cindoruk', N'14876264842', 8, 6, 55, N'Erkek', N'08574562514', N'cindrouk@cindoruk', N'Kayseri', N'30IBJIo3', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (28, N'Sasuke', N'Uchiha', N'12349876523', 3, 3, 32, N'Erkek', N'5558886633', N'uchiha@konoha.com', N'Konoha/Ateş Ulusu', N'ade25b1c7', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (29, N'Naruto', N'Uzumaki', N'45632178952', 4, 3, 32, N'Erkek', N'5556662233', N'uzumaki@konoha.com', N'Konoha/Ateş Ulusu', N'ace856321', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (30, N'Tsunade', N'Senju', N'12323645678', 3, 4, 65, N'Kadın', N'5556669988', N'tsu@tsu.com', N'Konoha / Ateş Ulusu', N'aef1485267', 1)
INSERT [dbo].[Personeller] ([PersonelID], [PersonelAdi], [PersonelSoyad], [PersonelTc], [HastaneID], [UnvanID], [PersonelYas], [PersonelCinsiyet], [PersonelTel], [PersonelMail], [PersonelAdres], [Sifre], [Durum]) VALUES (32, N'a', N'a', N'12304562789', 2, 2, 52, N'a', N'5551122332', N'a', N'a', N's7AlvZNJ0l', 1)
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[Tahliller] ON 

INSERT [dbo].[Tahliller] ([TahlilID], [TahlilTur]) VALUES (1, N'Kan')
INSERT [dbo].[Tahliller] ([TahlilID], [TahlilTur]) VALUES (2, N'Gaita')
INSERT [dbo].[Tahliller] ([TahlilID], [TahlilTur]) VALUES (3, N'Röntgen')
INSERT [dbo].[Tahliller] ([TahlilID], [TahlilTur]) VALUES (4, N'Tomografi')
INSERT [dbo].[Tahliller] ([TahlilID], [TahlilTur]) VALUES (5, N'Ultrason')
SET IDENTITY_INSERT [dbo].[Tahliller] OFF
GO
SET IDENTITY_INSERT [dbo].[Tedavi] ON 

INSERT [dbo].[Tedavi] ([TedaviID], [TedaviTanim]) VALUES (1, N'İlaç Tedavisi')
INSERT [dbo].[Tedavi] ([TedaviID], [TedaviTanim]) VALUES (2, N'Kemoterapi')
INSERT [dbo].[Tedavi] ([TedaviID], [TedaviTanim]) VALUES (3, N'Diyaliz')
INSERT [dbo].[Tedavi] ([TedaviID], [TedaviTanim]) VALUES (4, N'Fizik Tedavi')
SET IDENTITY_INSERT [dbo].[Tedavi] OFF
GO
INSERT [dbo].[TibbiBirimler] ([TBID], [TibbiAdi]) VALUES (1, N'Beyin Cerrahisi')
INSERT [dbo].[TibbiBirimler] ([TBID], [TibbiAdi]) VALUES (2, N'İç Hastalıkları')
INSERT [dbo].[TibbiBirimler] ([TBID], [TibbiAdi]) VALUES (3, N'KBB')
INSERT [dbo].[TibbiBirimler] ([TBID], [TibbiAdi]) VALUES (4, N'Cildiye')
INSERT [dbo].[TibbiBirimler] ([TBID], [TibbiAdi]) VALUES (5, N'Gastroenteroloji')
GO
SET IDENTITY_INSERT [dbo].[Unvan] ON 

INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (1, N'Doktor')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (2, N'Hemsire')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (3, N'Sekreter')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (4, N'Yonetici')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (5, N'Ynt.Doktor')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (6, N'Yonetici')
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi]) VALUES (7, N'Yonetici')
SET IDENTITY_INSERT [dbo].[Unvan] OFF
GO
ALTER TABLE [dbo].[Hasta] ADD  DEFAULT ((1)) FOR [durum]
GO
ALTER TABLE [dbo].[Hastaneler] ADD  DEFAULT ((1)) FOR [durum]
GO
ALTER TABLE [dbo].[AltBolge]  WITH CHECK ADD  CONSTRAINT [FK_AltBolge_Bolge] FOREIGN KEY([BolgeID])
REFERENCES [dbo].[Bolge] ([BolgeID])
GO
ALTER TABLE [dbo].[AltBolge] CHECK CONSTRAINT [FK_AltBolge_Bolge]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personeller] ([PersonelID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_Personeller]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_TibbiBirimler] FOREIGN KEY([TBID])
REFERENCES [dbo].[TibbiBirimler] ([TBID])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_TibbiBirimler]
GO
ALTER TABLE [dbo].[Hastaneler]  WITH CHECK ADD  CONSTRAINT [FK_Hastaneler_AltBolge] FOREIGN KEY([AltBolgeID])
REFERENCES [dbo].[AltBolge] ([AltBolgeID])
GO
ALTER TABLE [dbo].[Hastaneler] CHECK CONSTRAINT [FK_Hastaneler_AltBolge]
GO
ALTER TABLE [dbo].[HastaTahlil]  WITH CHECK ADD  CONSTRAINT [FK_HastaTahlil_Hasta] FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
ALTER TABLE [dbo].[HastaTahlil] CHECK CONSTRAINT [FK_HastaTahlil_Hasta]
GO
ALTER TABLE [dbo].[HastaTahlil]  WITH CHECK ADD  CONSTRAINT [FK_HastaTahlil_Tahliller] FOREIGN KEY([TahlilID])
REFERENCES [dbo].[Tahliller] ([TahlilID])
GO
ALTER TABLE [dbo].[HastaTahlil] CHECK CONSTRAINT [FK_HastaTahlil_Tahliller]
GO
ALTER TABLE [dbo].[Muayene]  WITH CHECK ADD  CONSTRAINT [FK_Muayene_Doktorlar] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Muayene] CHECK CONSTRAINT [FK_Muayene_Doktorlar]
GO
ALTER TABLE [dbo].[Muayene]  WITH CHECK ADD  CONSTRAINT [FK_Muayene_Hasta] FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
ALTER TABLE [dbo].[Muayene] CHECK CONSTRAINT [FK_Muayene_Hasta]
GO
ALTER TABLE [dbo].[Muayene]  WITH CHECK ADD  CONSTRAINT [FK_Muayene_MuayeneTur] FOREIGN KEY([MTURID])
REFERENCES [dbo].[MuayeneTur] ([MTURID])
GO
ALTER TABLE [dbo].[Muayene] CHECK CONSTRAINT [FK_Muayene_MuayeneTur]
GO
ALTER TABLE [dbo].[MuayeneTedavi]  WITH CHECK ADD  CONSTRAINT [FK_MuayeneTedavi_Muayene] FOREIGN KEY([MID])
REFERENCES [dbo].[Muayene] ([MID])
GO
ALTER TABLE [dbo].[MuayeneTedavi] CHECK CONSTRAINT [FK_MuayeneTedavi_Muayene]
GO
ALTER TABLE [dbo].[MuayeneTedavi]  WITH CHECK ADD  CONSTRAINT [FK_MuayeneTedavi_Tedavi] FOREIGN KEY([TedaviID])
REFERENCES [dbo].[Tedavi] ([TedaviID])
GO
ALTER TABLE [dbo].[MuayeneTedavi] CHECK CONSTRAINT [FK_MuayeneTedavi_Tedavi]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_Hastaneler] FOREIGN KEY([HastaneID])
REFERENCES [dbo].[Hastaneler] ([HastaneID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_Hastaneler]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_Unvan] FOREIGN KEY([UnvanID])
REFERENCES [dbo].[Unvan] ([UnvanID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_Unvan]
GO
