USE [master]
GO
/****** Object:  Database [ProjeDb]    Script Date: 19.08.2020 16:00:44 ******/
CREATE DATABASE [ProjeDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjeDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProjeDb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjeDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ProjeDb_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjeDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjeDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjeDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjeDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjeDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjeDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjeDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjeDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjeDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjeDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjeDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjeDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjeDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjeDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjeDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjeDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjeDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjeDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjeDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjeDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjeDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjeDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjeDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjeDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjeDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjeDb] SET  MULTI_USER 
GO
ALTER DATABASE [ProjeDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjeDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjeDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjeDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjeDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjeDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[DetailImagePath] [nvarchar](max) NULL,
	[BroadCastingStatus] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SurName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[ConfirmPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[ReadInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 19.08.2020 16:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[DetailImagePath] [nvarchar](max) NULL,
	[BroadCastingStatus] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200812160529_InitialCreate', N'3.1.6')
GO
SET IDENTITY_INSERT [dbo].[Announcements] ON 

GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (3, N'Atama Bekleyen Öğretmenlere Duyuru', N'Milli Eğitim Bakanlığı (MEB), corona virüsü salgını nedeniyle öğretmenlere Haziran ayında online yaptığı mesleki eğitimi şimdi 24-28 Ağustos''ta yüz yüze yapma kararı aldı. ', N'<p><span style="font-size:16px">Milli Eğitim Bakanlığı (MEB), corona vir&uuml;s&uuml; salgını nedeniyle &ouml;ğretmenlere Haziran ayında online yaptığı mesleki eğitimi şimdi 24-28 Ağustos&#39;ta y&uuml;z y&uuml;ze yapma kararı aldı. Bakanlığın bu kararı &uuml;zerine 1 milyon &ouml;ğretmen şehirler arası seyahat etmek zorunda kalacak. &Ouml;ğretmenler &quot;Gerekirse 15 g&uuml;n seminer yapalım. Ama vir&uuml;s salgını bu kadar artmış iken 1 milyon &ouml;ğretmen seminere alınacak. Y&uuml;z binlerce &ouml;ğretmen iller arası seyahat edecek. Sonra da 21 Eyl&uuml;l&#39;de derse girecekler. Vir&uuml;s yaymaktan korkuyoruz. &Ouml;ğrencilerin hayatı riske atılıyor&quot; dedi.</span></p>

<p><span style="font-size:16px">Okulların 31 Ağustos&rsquo;ta online ve 21 Eyl&uuml;l&rsquo;de seyreltilmiş eğitim modeline ge&ccedil;mesiyle birlikte &ouml;ğretmenlerin izin mesleki &ccedil;alışma takvimi de belli oldu.</span></p>

<p><span style="font-size:16px">Haziran ayında vir&uuml;s salgını nedeniyle online yapılan mesleki &ccedil;alışma programı kapsamındaki seminerlerin 24-28 Ağustos tarihleri arasında her t&uuml;r ve derecedeki &ouml;ğretmen ve y&ouml;neticinin katılımıyla g&ouml;rev yaptıkları okullarda y&uuml;z y&uuml;ze yapılması kararı alındı.</span></p>

<p><span style="font-size:16px"><strong>&ldquo;&Ouml;ĞRENCİLER RİSKE ATILIYOR&rdquo;</strong></span></p>

<p><span style="font-size:16px">&Ouml;ğretmenler sosyal medya &uuml;zerinden &ldquo;&Ouml;ğretmenler Birleşiyor&rdquo; adlı bir etiket oluşturarak seslerini duyurmaya &ccedil;alışıyor. &Ouml;ğretmenlere milletvekilleri ve eğitim sendikalarının y&ouml;neticilerinden de destek geldi.</span></p>

<p><span style="font-size:16px">Milli Eğitim Bakanı Ziya Sel&ccedil;uk&rsquo;a &ldquo;Hi&ccedil;bir &ccedil;ocuk &ouml;ğretmensiz kalmasın 21 Eyl&uuml;l&rsquo;de okulları hep beraber a&ccedil;abilmek i&ccedil;in bug&uuml;n &ouml;ğretmen arkadaşların seminerleri online olsun&rdquo; diye seslenerek 5 g&uuml;nl&uuml;k seminer i&ccedil;in &ouml;ğrencilerin hayatının riske atılmamasını istedi.</span></p>

<p><span style="font-size:16px"><strong>&ldquo;KORKUMUZ VİR&Uuml;S&Uuml; YAYMAK&rdquo;</strong></span></p>

<p><span style="font-size:16px">&ldquo;Vir&uuml;s var diye okullar a&ccedil;ılmıyor ama T&uuml;rkiye&rsquo;nin d&ouml;rt tarafına dağılmış 1 milyon &ouml;ğretmen angarya bir seminer i&ccedil;in yollara d&ouml;k&uuml;l&uuml;yor&rdquo; şeklinde tepki g&ouml;steren &ouml;ğretmenler ayrıca &ldquo;Toplumda &lsquo;&Ouml;ğretmenler 6 aydır yatarak para kazanıyor&rsquo; gibi bir algı yaratılıyor. Gerekirse 15 g&uuml;n seminer yapalım. Ama vir&uuml;s salgını bu kadar artmış iken 1 milyon &ouml;ğretmen seminere alınacak. Y&uuml;z binlerce &ouml;ğretmen iller arası seyahat edecek. Sonra da 21 Eyl&uuml;l&rsquo;de derse girecekler. Vir&uuml;s yaymaktan korkuyoruz. &Ouml;ğrencilerin hayatı riske atılıyor&rdquo; diyerek seslerini duyurmaya &ccedil;alışıyor.</span></p>

<p><span style="font-size:16px"><strong>&Ouml;ĞRETMENLER, SENDİKALAR VE SİYASİLER NE DEDİ?</strong></span></p>

<p><span style="font-size:16px"><strong>İYİ Parti Milletvekili İsmail Koncuk:</strong>&nbsp;Y&uuml;z y&uuml;ze eğitim 21 Eyl&uuml;l&#39;de, ancak &ouml;ğretmenler seminer i&ccedil;in okullara &ccedil;ağrılıyor. 1 milyon insanı &ccedil;ok zorunlu olmayan bir iş i&ccedil;in bir araya getirmek tam bir sa&ccedil;malık! Bu risk zaten y&uuml;z y&uuml;ze eğitimde alınacak gibi. Seminer i&ccedil;in bu risk g&ouml;ze alınmamalı.</span></p>

<p><span style="font-size:16px"><strong>CHP Ankara Milletvekili Yıldırım Kaya:</strong>&nbsp;Ziya Hocam vaka sayısı her ge&ccedil;en g&uuml;n artıyor. &Ouml;ğretmenlerimizin seminerinin de diğer etkinlikler gibi online olması m&uuml;mk&uuml;n&hellip;</span></p>

<p><span style="font-size:16px"><strong>Anadolu Eğitim Sen Genel Başkanı Mehmet Alper &Ouml;ğretici:</strong>&nbsp;Vaka sayıları 1000&rsquo;in &uuml;zerinde iken uzaktan da yapılabilecek beş g&uuml;nl&uuml;k mesleki &ccedil;alışmalar neden online olarak yapılmıyor? Haziran&rsquo;da yapılan online seminerler Ağustos ayında da yapılabilir.</span></p>

<p><span style="font-size:16px"><strong>T&uuml;rk Eğitim Sen Genel Sekreteri Musa Akkaş:</strong>&nbsp;Haziran ayında seminerler online yapılırken,bu g&uuml;nlerde vaka artışı varken ve t&uuml;m toplantılar online yapılırken Ağustos seminerleri neden y&uuml;z y&uuml;ze yapılır kiii&hellip; Seminer &ccedil;alışmaları online olmalıdır.</span></p>

<p><span style="font-size:16px"><strong>T&uuml;rk Eğitim Sen-T&uuml;rkiye Kamu Sen İstanbul İl Temsilcisi Remzi &Ouml;zmen:</strong>&nbsp;Hi&ccedil;bir &ouml;ğretmen arkadaşım g&ouml;revden ka&ccedil;maz. &Ccedil;alışan &uuml;reten, yol g&ouml;steren hak eden ve hak ettiğinin karşılığını alma m&uuml;cadelesi veren bir anlayışla &ouml;ğretmenler seminerleri ya uzaktan eğitim ya da bulundukları illerde yapsınlar.</span></p>
', N'b45960ff-a3ef-42f6-b602-a298077eb66f.jpg', CAST(N'2020-08-18 03:05:33.0770412' AS DateTime2), N'6936c78b-a5da-4ce5-ac3a-7fd078e70f55.jpg', N'Aktif', 7)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (4, N'Sözleşmeli sağlık personeli alınacak!', N' Eskişehir Osmangazi Üniversitesi 190 Sözleşmeli Personel alacağını duyurdu. ', N'<p><span style="font-size:16px"><strong>&Uuml;niversite tarafından yapılan ilan a&ccedil;ıklaması;</strong></span></p>

<p><span style="font-size:16px">&Uuml;niversitemiz Sağlık, Uygulama ve Araştırma Hastanesi Başhekimliğinde istihdam edilmek &uuml;zere, 5620 Sayılı Kanun ve 06.06.1978 tarih ve 7/15754 sayılı Bakanlar Kurulu Kararı ile y&uuml;r&uuml;rl&uuml;ğe konulan S&ouml;zleşmeli Personel &Ccedil;alıştırılmasına İlişkin Esaslar ile ek ve değişiklikleri ile 657 sayılı Devlet Memurları Kanunu&#39;nun 4. maddesinin (B) fıkrasına g&ouml;re 2018 KPSS (B) grubu puan sırasına konulmak kaydıyla Sağlık, Uygulama ve Araştırma Hastanesi Başhekimliğine s&ouml;zleşmeli personel alınacaktır.</span><br />
&nbsp;</p>

<p><span style="font-size:16px"><strong>Genel Şartlar:</strong><br />
1. T.C. vatandaşı olmak,<br />
2. Kamu haklarından mahrum bulunmamak,<br />
3. Değişik: 23/01/2008-5728/317md.) T&uuml;rk Ceza Kanunu&#39;nun 53 &uuml;nc&uuml; maddesinde belirtilen s&uuml;reler ge&ccedil;miş olsa bile; kasten işlenen bir su&ccedil;tan dolayı bir yıl veya daha fazla s&uuml;reyle hapis cezasına ya da affa uğramış olsa bile devletin g&uuml;venliğine karşı su&ccedil;lar, Anayasal d&uuml;zene ve bu d&uuml;zenin işleyişine karşı su&ccedil;lar, milli savunmaya karşı su&ccedil;lar, devlet sırlarına karşı su&ccedil;lar ve casusluk, zimmet, irtikap, r&uuml;şvet, hırsızlık, dolandırıcılık, sahtecilik, g&uuml;veni k&ouml;t&uuml;ye kullanma, hileli iflas, ihaleye fesat karıştırma, edimin ifasına fesat karıştırma, su&ccedil;tan kaynaklanan malvarlığı değerlerini aklama veya ka&ccedil;ak&ccedil;ılık su&ccedil;larından mahkum olmamak.<br />
4. Askerlik Durumu itibariyle;<br />
a) Askerlikle ilgisi bulunmamak,<br />
b) Askerlik &ccedil;ağına gelmemiş bulunmak.<br />
c) Askerlik &ccedil;ağına gelmiş ise muvazzaf askerlik hizmetini yapmış yahut ertelemiş veya yedek sınıfa ge&ccedil;irilmiş olmak,<br />
5. 657 sayılı Kanunu&#39;nun 53 &uuml;nc&uuml; maddesi h&uuml;k&uuml;mleri saklı kalmak kaydıyla g&ouml;revini devamlı yapmasına engel olabilecek akıl hastalığı bulunmamak.<br />
* Başvuru tarihi itibariyle 18 yaşını tamamlamış olmak.<br />
* N&ouml;bet usul&uuml; &ccedil;alışmaya engel bir durumunun bulunmaması gerekmektedir.<br />
* Herhangi bir Sosyal G&uuml;venlik Kurumundan emeklilik veya yaşlılık aylığı almıyor olmak.</span></p>

<p><span style="font-size:16px">657 Sayılı Devlet Memurları Kanunu&#39;nun 4/B maddesi gereğince, s&ouml;zleşmeli olarak istihdam edilenler hizmet s&ouml;zleşmesine aykırı hareket etmesi nedeniyle kurumlarınca s&ouml;zleşmelerinin feshedilmesi veya s&ouml;zleşme d&ouml;nemi i&ccedil;erisinde Bakanlar Kurulu kararı ile belirlenen istisnalar hari&ccedil; s&ouml;zleşmeyi tek taraflı feshetmeleri halinde, fesih tarihinden itibaren 1 (bir) yıl ge&ccedil;medik&ccedil;e kurumların s&ouml;zleşmeli personel pozisyonlarında istihdam edilemezler.</span></p>
', N'3c941099-7c60-4358-a0f7-be42605b3404.jpg', CAST(N'2020-08-18 03:11:14.2840401' AS DateTime2), N'd929a828-3e42-4c8c-a504-d2af8a1054ee.jpg', N'Aktif', 4)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (5, N'THY’den dış hat seferleriyle ilgili yeni duyuru', N'Koronavirüs (Covid-19) nedeniyle yurt dışı seferlerini askıya alan ve 11 Haziran''dan itibaren uçuşlara yeniden başlayan Türk Hava Yollarının (THY), Eylül ayı uçuş takvimi belli oldu.', N'<p><span style="font-size:16px"><strong>Koronavir&uuml;s</strong>&nbsp;salgını nedeniyle yurt dışı u&ccedil;uşlarını kademeli olarak arttıran T&uuml;rk Hava Yolları&rsquo;nın, eyl&uuml;l ayı u&ccedil;uş planlaması netleşti.&nbsp;<strong>THY</strong>, salgın nedeniyle 19 Temmuz&rsquo;da tekrardan askıya alınan İran u&ccedil;uşlarını 1 Eyl&uuml;l itibariyle Tahran, Şiraz, Tebriz ve Meşhed seferleri ile yeniden başlatacak.</span></p>

<p><span style="font-size:16px"><strong>THY&#39;nin internet sitesinde yapılan a&ccedil;ıklamada, şunlar kaydedildi:</strong></span></p>

<p><span style="font-size:16px">&quot;Ulusal ve uluslararası sağlık otoriteleri ile yaptığımız titiz &ccedil;alışmaların sonucunda daha sağlıklı ve g&uuml;venli standartlara sahip u&ccedil;uşlarla sevdiklerimize, keşiflerimize ve biriktirilecek anılarımıza tekrar kavuşuyoruz. Bu d&ouml;nemde plan yapmanın ne kadar zor olduğunu bildiğimiz i&ccedil;in sizlere esnek seyahat imkanları sunmaktan mutluluk duyuyoruz. 21 Mart 2020 - 31 Ağustos 2020 tarihleri arasındaki biletlemeleriniz i&ccedil;in sınırsız değişiklik yapabilirsiniz. Detaylı bilgi i&ccedil;in Esnek seyahat sayfamızı incelemeyi unutmayın. U&ccedil;uş takvimi Eyl&uuml;l ayı sonuna kadar uygulanacak u&ccedil;uşlarımızı g&ouml;stermektedir. Yeni seyahatleriniz i&ccedil;in u&ccedil;uş planımız g&uuml;ncellendik&ccedil;e bu sayfadan sizlerle paylaşacağız.&quot;</span></p>

<p><span style="font-size:16px">11 Haziran&#39;da yurt dışı u&ccedil;uşlarını kademeli olarak başlatan THY&#39;nin, 1 Eyl&uuml;l itibarıyla İran&#39;da Tahran, Tebriz, Şiraz ve Meşhed, Artvin Hopa, Kanada Vancouver, Madagaskar, Estonya&#39;da Riga ve Tallin, G&uuml;rcistan&#39;da Batum ve Tiflis, Vietnam&#39;da Honai ve Ho Chi Minh City, Suudi Arabistan&#39;da Dammam ve Riyad, Cezayir&#39;de Konstantin ve Vahran, Afganistan&#39;da Mezar-ı Şerif, Rusya&#39;da Krasnador, So&ccedil;i ve Kazan, Irak&#39;ta S&uuml;leymaniye, Hindistan&#39;da Mumbai ve Delhi, Bahreyn, &Uuml;rd&uuml;n&#39;de Amman, T&uuml;rkmenistan&#39;da Aşkaabat, Litvanya&#39;da Vilnius ve Moğolistan&#39;da Ulanbatur, Yunanistan Selanik, Fas&#39;ta Marakeş, Umman&#39;da Maskat, Nijerya&#39;da Abuja ve Lagos, G&uuml;ney Afrika&#39;da Cape Town, Johannesburg ve Durban, Abu Dabi&#39;ye u&ccedil;uşlarına başlamayı planladığı kaydedildi</span><br />
&nbsp;</p>

<p><span style="font-size:16px">&quot;Ulusal ve uluslararası sağlık otoriteleri ile yaptığımız titiz &ccedil;alışmaların sonucunda daha sağlıklı ve g&uuml;venli standartlara sahip u&ccedil;uşlarla sevdiklerimize, keşiflerimize ve biriktirilecek anılarımıza tekrar kavuşuyoruz. Bu d&ouml;nemde plan yapmanın ne kadar zor olduğunu bildiğimiz i&ccedil;in sizlere esnek seyahat imkanları sunmaktan mutluluk duyuyoruz. 21 Mart 2020 - 31 Ağustos 2020 tarihleri arasındaki biletlemeleriniz i&ccedil;in sınırsız değişiklik yapabilirsiniz. Detaylı bilgi i&ccedil;in Esnek seyahat sayfamızı incelemeyi unutmayın. U&ccedil;uş takvimi Eyl&uuml;l ayı sonuna kadar uygulanacak u&ccedil;uşlarımızı g&ouml;stermektedir. Yeni seyahatleriniz i&ccedil;in u&ccedil;uş planımız g&uuml;ncellendik&ccedil;e bu sayfadan sizlerle paylaşacağız.&quot;</span></p>

<p><span style="font-size:16px">11 Haziran&#39;da yurt dışı u&ccedil;uşlarını kademeli olarak başlatan THY&#39;nin, 1 Eyl&uuml;l itibarıyla İran&#39;da Tahran, Tebriz, Şiraz ve Meşhed, Artvin Hopa, Kanada Vancouver, Madagaskar, Estonya&#39;da Riga ve Tallin, G&uuml;rcistan&#39;da Batum ve Tiflis, Vietnam&#39;da Honai ve Ho Chi Minh City, Suudi Arabistan&#39;da Dammam ve Riyad, Cezayir&#39;de Konstantin ve Vahran, Afganistan&#39;da Mezar-ı Şerif, Rusya&#39;da Krasnador, So&ccedil;i ve Kazan, Irak&#39;ta S&uuml;leymaniye, Hindistan&#39;da Mumbai ve Delhi, Bahreyn, &Uuml;rd&uuml;n&#39;de Amman, T&uuml;rkmenistan&#39;da Aşkaabat, Litvanya&#39;da Vilnius ve Moğolistan&#39;da Ulanbatur, Yunanistan Selanik, Fas&#39;ta Marakeş, Umman&#39;da Maskat, Nijerya&#39;da Abuja ve Lagos, G&uuml;ney Afrika&#39;da Cape Town, Johannesburg ve Durban, Abu Dabi&#39;ye u&ccedil;uşlarına başlamayı planladığı kaydedildi</span></p>
', N'1729e47d-b2f2-4698-87b3-a8b502004521.jpg', CAST(N'2020-08-18 03:14:31.5269276' AS DateTime2), N'2b20f98c-e0bc-49a8-af16-bff9cb8c01a1.jpg', N'Aktif', 4)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (6, N'Bakanlık uyardı! Sahte hacamata dikkat', N'Sağlık Bakanlığı, çeşitli web siteleri ile sosyal medya üzerinden hacamat gibi geleneksel tıp alanında sahte eğitim ve sertifika verdiğini beyan eden kişi ve kurumlara karşı vatandaşların', N'<p><span style="font-size:16px"><a href="https://www.hurriyet.com.tr/haberleri/saglik-bakanligi" target="_blank">Sağlık Bakanlığı</a>, geleneksel ve tamamlayıcı tıp uygulamaları yapmak (fitoterapi, akupunktur, s&uuml;l&uuml;k,&nbsp;<a href="https://www.hurriyet.com.tr/haberleri/hacamat" target="_blank">hacamat</a>, mezoterapi, ozon uygulaması, hefleksoloji, hipnoterapi) isteyenlere eğitimden ge&ccedil;meleri şartı ile sertifika veriyor. Yaklaşık 5 yıl &ouml;nce yaptığı duyuru ile hekimlerin ve diş hekimlerinin de eğitim programlarına katılarak sertifika alabileceklerini a&ccedil;ıklayan bakanlık, yaptığı yeni bir duyuru ile &ouml;zellikle hacamat konusunda sahtek&acirc;rların ortaya &ccedil;ıktığını bildirdi.</span></p>

<p><span style="font-size:16px"><strong>SU&Ccedil; DUYURUSUNDA BULUNULDU</strong></span></p>

<p><span style="font-size:16px">Bakanlığın bu konuda yaptığı uyarı ş&ouml;yle:</span></p>

<p><span style="font-size:16px">&ldquo;Son zamanlarda &ccedil;eşitli web sitelerinde, Instagram veya Facebook gibi sosyal medya platformlarında geleneksel, tamamlayıcı ve fonksiyonel tıp uygulamaları alanında eğitim ve sertifika verdiğini beyan eden kişi ve kurumların reklamlarına rastlanmaktadır. Geleneksel ve tamamlayıcı tıp uygulamaları alanında bakanlığımızca eğitim verme konusunda yetkilendirilen eğitim merkezleri ile ilgili bilgiler Daire Başkanlığı&rsquo;mıza ait www.getatportal.gov.tr uzantılı web sitesinde &lsquo;Eğitim Merkezleri&rsquo; başlığı altında g&uuml;ncel olarak sunulmaktadır. Web sitemizde belirtilen eğitim merkezleri dışında alınan sertifikaların herhangi bir ge&ccedil;erliliği olmayıp sertifika sahibine uygulama yapma yetkisi vermemektedir.&rdquo;<br />
<br />
Bakanlık bu konuda bir inceleme başlatarak, sahte sertifika verdiğini duyuran web siteleri, kişi ve kurumlarla ilgili su&ccedil; duyurusunda da bulundu</span></p>
', N'db0838d3-9640-4ba0-bb87-4191a6e47ff2.jpg', CAST(N'2020-08-18 03:21:28.0051342' AS DateTime2), N'6a2255e9-4abb-4687-aae3-236f0e3a95be.jpg', N'Aktif', 4)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (7, N'Reçetesiz ilaç satımıyla ilgili yeni açıklama', N'Sağlık Bakanlığı Türkiye İlaç ve Tıbbi Cihaz Kurumu''nca (TİTCK) reçetesiz de satılabilecek ürünlere yönelik daha önce yayımlanan listenin', N'<p><span style="font-size:16px">TİTCK&#39;nin internet sitesinde yer alan duyuruda, kurumun bilimsel komisyonlarınca re&ccedil;etesiz de satılabilecek &uuml;r&uuml;nlere ilişkin etkin madde bazında yapılan değerlendirmelerin 21 Aralık 2017&#39;de kamuoyuyla paylaşıldığı anımsatıldı.</span></p>

<p><span style="font-size:16px">A&ccedil;ıklamada, &quot;Sonrasında tarafımıza ulaşan g&ouml;r&uuml;ş, tespit ve değerlendirmeler ışığında bu tartışmaların daha geniş platformlarda yapılmasına ve bilimsel zeminlerde s&uuml;rd&uuml;r&uuml;lmesine ihtiya&ccedil; olduğu ortaya &ccedil;ıkmıştır. Buna istinaden ilgili liste, &uuml;zerinde t&uuml;m taraflarca bir mutabakat sağlanana kadar g&ouml;r&uuml;şten kaldırılmıştır.&quot; ifadesi kullanıldı.</span></p>

<p><span style="font-size:16px">TİTCK&#39;nin internet sitesinde yer alan duyuruda, kurumun bilimsel komisyonlarınca re&ccedil;etesiz de satılabilecek &uuml;r&uuml;nlere ilişkin etkin madde bazında yapılan değerlendirmelerin 21 Aralık 2017&#39;de kamuoyuyla paylaşıldığı anımsatıldı.</span></p>

<p><span style="font-size:16px">A&ccedil;ıklamada, &quot;Sonrasında tarafımıza ulaşan g&ouml;r&uuml;ş, tespit ve değerlendirmeler ışığında bu tartışmaların daha geniş platformlarda yapılmasına ve bilimsel zeminlerde s&uuml;rd&uuml;r&uuml;lmesine ihtiya&ccedil; olduğu ortaya &ccedil;ıkmıştır. Buna istinaden ilgili liste, &uuml;zerinde t&uuml;m taraflarca bir mutabakat sağlanana kadar g&ouml;r&uuml;şten kaldırılmıştır.&quot; ifadesi kullanıldı.</span></p>
', N'593c9574-57fd-4d5e-b555-a772f5ef519d.jpg', CAST(N'2020-08-18 04:22:08.6346157' AS DateTime2), N'4ac66de5-4778-4515-b9e5-82beb3f4a42d.jpg', N'Aktif', 4)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (8, N'YDUS başvuruları başladı', N'Tıpta Yan Dal Uzmanlık Eğitimi Giriş Sınavı (2016-YDUS) başvuruları başladı.', N'Sağlık Bakanlığı T&uuml;rkiye İla&ccedil; ve Tıbbi Cihaz Kurumu&#39;nca (TİTCK) re&ccedil;etesiz de satılabilecek &uuml;r&uuml;nlere y&ouml;nelik daha &ouml;nce yayımlanan listenin, bu konuda t&uuml;m taraflarca mutabakat sağlanana kadar g&ouml;r&uuml;şten kaldırıldığı bildirildi.
<p>TİTCK&#39;nin internet sitesinde yer alan duyuruda, kurumun bilimsel komisyonlarınca re&ccedil;etesiz de satılabilecek &uuml;r&uuml;nlere ilişkin etkin madde bazında yapılan değerlendirmelerin 21 Aralık 2017&#39;de kamuoyuyla paylaşıldığı anımsatıldı.</p>

<p>A&ccedil;ıklamada, &quot;Sonrasında tarafımıza ulaşan g&ouml;r&uuml;ş, tespit ve değerlendirmeler ışığında bu tartışmaların daha geniş platformlarda yapılmasına ve bilimsel zeminlerde s&uuml;rd&uuml;r&uuml;lmesine ihtiya&ccedil; olduğu ortaya &ccedil;ıkmıştır. Buna istinaden ilgili liste, &uuml;zerinde t&uuml;m taraflarca bir mutabakat sağlanana kadar g&ouml;r&uuml;şten kaldırılmıştır.&quot; ifadesi kullanıldı.</p>

<p>TİTCK&#39;nin internet sitesinde yer alan duyuruda, kurumun bilimsel komisyonlarınca re&ccedil;etesiz de satılabilecek &uuml;r&uuml;nlere ilişkin etkin madde bazında yapılan değerlendirmelerin 21 Aralık 2017&#39;de kamuoyuyla paylaşıldığı anımsatıldı.</p>

<p>A&ccedil;ıklamada, &quot;Sonrasında tarafımıza ulaşan g&ouml;r&uuml;ş, tespit ve değerlendirmeler ışığında bu tartışmaların daha geniş platformlarda yapılmasına ve bilimsel zeminlerde s&uuml;rd&uuml;r&uuml;lmesine ihtiya&ccedil; olduğu ortaya &ccedil;ıkmıştır. Buna istinaden ilgili liste, &uuml;zerinde t&uuml;m taraflarca bir mutabakat sağlanana kadar g&ouml;r&uuml;şten kaldırılmıştır.&quot; ifadesi kullanıldı.</p>
', N'12f39b07-52ed-40f9-ae11-fb67fb830135.jpg', CAST(N'2020-08-18 04:25:36.9046637' AS DateTime2), N'2aa098d7-d372-42f2-a529-2f207328d535.jpg', N'Aktif', 7)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (9, N'Emir değil duyuru', N'Tekirdağ''da Cumhurbaşkanı Recep Tayyip Erdoğan''ın dünkü toplu açılış töreni öncesi tüm resmi kurumlara gönderilen yazıyla', N'<span style="font-size:16px">Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın d&uuml;n Tekirdağ&#39;da yaptığı toplu a&ccedil;ılış programı &ouml;ncesinde Tekirdağ Valiliği 4 Mayıs 2015 g&uuml;n&uuml; t&uuml;m resmi kurumlara g&ouml;nderdiği yazıyla katılım sağlanmasını istemişti. Resmi kurumlara g&ouml;nderilen yazılardan &Ccedil;orlu&#39;da t&uuml;m resmi ve &ouml;zel okul ve kurum m&uuml;d&uuml;rl&uuml;klerine İl&ccedil;e Milli Eğitim M&uuml;d&uuml;r&uuml; Mustafa G&uuml;&ccedil;l&uuml; imzalı &ouml;rneğinin basında yansımasının ardından a&ccedil;ıklama geldi.&nbsp;Tekirdağ Milli Eğitim M&uuml;d&uuml;r&uuml; Halis İşler, resmi kurumlara g&ouml;nderilen yazının &#39;emir&#39; değil duyuru niteliği taşıdığını iddia ederek ş&ouml;yle dedi:<br />
<br />
&quot;Sayın Cumhurbaşkanımız gelişi ile Milli Eğitim Bakanlığımızın ve İl Milli Eğitim M&uuml;d&uuml;rl&uuml;ğ&uuml;m&uuml;z&uuml;n 18 kuruluş da a&ccedil;ılış programına dahil edildi. Bu 18 kuruluşun a&ccedil;ılış bedelleri de maliyetleri de 52 trilyonluk bir bedeldir. Bunun i&ccedil;in de valiliğimiz b&uuml;t&uuml;n il&ccedil;elere &lsquo;bu şekilde resmi bir a&ccedil;ılış var m&uuml;sait olanlar katılabilir&#39; diye bir davet g&ouml;nderdi. İl&ccedil;e Milli Eğitim M&uuml;d&uuml;rl&uuml;ğ&uuml; de bu yazıyı okullara da g&ouml;ndermiş. Hi&ccedil;bir şekilde baskı veya zorlama ile a&ccedil;ılışa mecbur katılacaksınız dememiştir. Okul m&uuml;d&uuml;rl&uuml;klerine yazılan yazıda, dersi olmayanlar m&uuml;sait olanlar gelip bu programa katılabilir. Bizim 18 tane a&ccedil;ılışımız oldu. Milli Eğitim M&uuml;d&uuml;rl&uuml;ğ&uuml; olarak 18 &nbsp;a&ccedil;ılışın 52 trilyonluk olduğu bir yerde Milli Eğitim&#39;den de birilerinin olması gerekiyor. Bu yazıda ise herhangi bir zorlama olmamıştır, sadece duyuru niteliği taşımıştır.&quot;</span><br />
&nbsp;
<p><span style="font-size:16px"><strong>VALİLİK DE A&Ccedil;IKLAMA YAYINLADI</strong></span></p>

<p><span style="font-size:16px">Tekirdağ Valiliği&#39;nin resmi internet sitesine konulan basın a&ccedil;ıklamasında da yazıların davet i&ccedil;erdiği ileri s&uuml;r&uuml;ld&uuml;. Valilik a&ccedil;ıklamasında da ş&ouml;yle denildi:&nbsp;</span></p>

<p><span style="font-size:16px">&quot;Valiliğimizin 03.05.2015 tarihli yazısı ile kaymakamlıklar ve kamu kurum ve kuruluşlarına, sayın Cumhurbaşkanımızın katılımıyla ger&ccedil;ekleştirilecek olan &#39;toplu a&ccedil;ılış t&ouml;ren programı&#39; bildirilmiş ve ilgili kurum amirleri davet edilmiştir. Hizmete giren 49 yatırımın 18 adedinin Milli Eğitim yatırımı olması dolayısıyla &Ccedil;orlu İl&ccedil;e Milli Eğitim M&uuml;d&uuml;rl&uuml;ğ&uuml; de kurumuna bağlı birimlere duyuru yapmıştır.&quot;</span><br />
&nbsp;</p>

<p><span style="font-size:16px"><strong>YAZIDA EMİR GEREĞİ DENDİ</strong></span></p>

<p><span style="font-size:16px">Tekirdağ Valiliğinin t&uuml;m resmi kurumlara g&ouml;nderdiği yazının &Ccedil;orlu&#39;dan okulları g&ouml;nderilen &ouml;rneğinde ise &#39;valilik emir yazısı&#39; olduğuna dikkat &ccedil;ekilerek şu s&ouml;zlere yer verilmişti:</span></p>

<p><span style="font-size:16px">&quot;Tekirdağ Valiliği&#39;nin ilgili emirleri gereği, 05/05/2015 tarihi Salı g&uuml;n&uuml; saat 16.00&#39;da ilimizi ziyaret edecek olan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan&#39;ın yapacağı t&ouml;rene katılmak &uuml;zere, t&uuml;m resmi ve &ouml;zel okul/kurum m&uuml;d&uuml;rlerinin, dersi olmayan &ouml;ğretmenlerin ve diğer personelin, belirtilen saatte katılımının sağlanmasını, okul servis ara&ccedil;larından imkanlar dahilinde yararlanılmasını, servis sağlayamayan okul ve kurumlarımızın Tekirdağ&#39;da yapılacak t&ouml;rene katılabilmeleri i&ccedil;in, il&ccedil;emiz Kaymakamlık binasının &ouml;n&uuml;nden servis ara&ccedil;larının hareket edeceğinin bilinmesini ve en ge&ccedil; saat 14.00&#39;de b&uuml;t&uuml;n personelin Kaymakamlık &ouml;n&uuml;nde hazır bulunması hususunda gereğini rica ederim.&quot;</span></p>
', N'23f380e6-36d1-4b52-aade-ab0e897fe8c3.jpg', CAST(N'2020-08-18 15:20:50.9090316' AS DateTime2), N'6980a927-61d4-41e1-93aa-57bd7674dd1d.jpg', N'Aktif', 2)
GO
INSERT [dbo].[Announcements] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (10, N'Kızılay: "Suruç''ta kan ihtiyacı yok"', N'Şanlıurfa Suruç İlçesi''ndeki Amara Kültür Merkezi önünde patlama meydana geldi.', N'<p><span style="font-size:16px">Suru&ccedil;&#39;ta bug&uuml;n &ouml;ğle saatlerinde meydana gelen ve T&uuml;rkiye&#39;yi sarsan saldırının ardından b&ouml;lgede b&uuml;y&uuml;k hareketlilik yaşandı.</span></p>

<p><span style="font-size:16px">27 kişinin hayatını kaybettiği olay sonrası 100 civarında yaralı i&ccedil;in vatandaşlara, kan verme &ccedil;ağrısı yapıldı. G&ouml;rg&uuml; tanıklarından Kadir Erg&uuml;l, &quot;Kan ihtiyacımız var. Aşırı bir kan ihtiyacımız var. Suru&ccedil; halkına &ccedil;ağrı yapılıyor. Herkes kan vermeye &ccedil;ağırılıyor&quot; dedi.</span><br />
&nbsp;</p>

<p><span style="font-size:16px">Suru&ccedil;&#39;ta bug&uuml;n &ouml;ğle saatlerinde meydana gelen ve T&uuml;rkiye&#39;yi sarsan saldırının ardından b&ouml;lgede b&uuml;y&uuml;k hareketlilik yaşandı.27 kişinin hayatını kaybettiği olay sonrası 100 civarında yaralı i&ccedil;in vatandaşlara, kan verme &ccedil;ağrısı yapıldı. G&ouml;rg&uuml; tanıklarından Kadir Erg&uuml;l, &quot;Kan ihtiyacımız var. Aşırı bir kan ihtiyacımız var. Suru&ccedil; halkına &ccedil;ağrı yapılıyor. Herkes kan vermeye &ccedil;ağırılıyor&quot; dedi.</span></p>
', N'677d697e-ae82-4db5-a470-fd892bd9c8f1.jpg', CAST(N'2020-08-18 15:27:12.2708030' AS DateTime2), N'a0e02521-bd7c-4d40-a897-3a859dbb21a5.jpg', N'Aktif', 4)
GO
SET IDENTITY_INSERT [dbo].[Announcements] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

GO
INSERT [dbo].[AspNetRoles] ([Id], [NormalizedName], [ConcurrencyStamp], [Name]) VALUES (2, N'ADMIN', NULL, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (14, 2)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [Password], [ConfirmPassword]) VALUES (14, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFHXdb7vnz3QH6wR9lpOAATUVqOtpmMeyTPGBAcBB7ZzMNiYSj2IjcoDSkZTqBIxsQ==', N'R4WDVXPZUOFD7KDXPPN7JJGN7FRTDEOA', N'9e6d699d-fd5a-4df3-94ca-200493c44632', NULL, 0, 0, NULL, 1, 0, N'admin', N'admin', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Spor')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Siyaset')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Ekonomi')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Sağlık')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Eğitim')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Magazin')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (22, N'Gündem')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

GO
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Message], [Date], [ReadInfo]) VALUES (6, N'Firat Bayram', N'firat@gmail.com', N'Lorem Ipsum has been the industry''s standard dummy text ever since the...', CAST(N'2020-08-12 00:00:00.0000000' AS DateTime2), N'Yeni')
GO
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Message], [Date], [ReadInfo]) VALUES (9, N'İbrahim Bayram', N'deneme@gmail.com', N'Lorem Ipsum has been the industry''s standard dummy text ever since the.Lorem Ipsum has been the industry''s standard dummy text ever since theLorem Ipsum has been the industry''s standard dummy text ever since theLorem Ipsum has been the industry''s standard dummy text ever since theLorem Ipsum has been the industry''s standard dummy text ever since theLorem Ipsum has been the industry''s standard dummy text ever since the', CAST(N'2020-08-12 00:00:00.0000000' AS DateTime2), N'Yeni')
GO
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Message], [Date], [ReadInfo]) VALUES (13, N'İbrahim Aydın', N'asdsadasd', N'safklhdsjklkasjd', CAST(N'2020-08-13 00:00:00.0000000' AS DateTime2), N'Okundu')
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (11, N'Koronavirüste (corona virüs) son dakika gelişmesi', N'Kovid-19 nedeniyle ölenlerin sayısı 160 bini aştı. Şu ana kadar 2 milyon 333 bin 164 kişiye koronavirüs teşhisi kondu. 600 bin 296 kişi iyileşirken, 160 bin 799 kişi hayatını kaybetti.', N'<h3>RUSYA&#39;DA REKOR ARTIŞ</h3>

<p>Koronavir&uuml;s&#39;&uuml;n serinin y&uuml;ksek olduğu &uuml;lkelerden biri de Rusya. Olumsuz bir tablonun &ccedil;izildiği Rusya&#39;da en y&uuml;ksek pozitif vaka &nbsp;sayısı bug&uuml;n ger&ccedil;ekleşti.&nbsp;</p>

<p>&Uuml;lkede son 24 saatte 6 bin 60 yeni koronavir&uuml;s vakası daha tespit edildi. Rusya&#39;nın genelindeki &nbsp;toplam vaka sayısı ise 42 bin 853&rsquo;e y&uuml;kseldi. Konuya ilişkin Moskova h&uuml;k&uuml;meti a&ccedil;ıklama yaptı:</p>

<p><strong><em>&ldquo;Rusya&rsquo;da vaka sayısı 85 b&ouml;lgede 42 bin 853&rsquo;e y&uuml;kseldi. G&uuml;n i&ccedil;inde 48 hasta hayatını kaybetti. Bug&uuml;ne kadar &ouml;lenlerin sayısı 361&rdquo;</em></strong></p>

<h3><strong>&quot;<a href="https://www.haber7.com/etiket/salg%C4%B1n" target="_blank" title="SALGIN">SALGIN</a>LAR HAZİRANDA BİTER&quot;</strong></h3>

<p>Rusya&rsquo;daki Moskova Fizik ve Teknoloji Enstit&uuml;s&uuml; Genetik M&uuml;hendisliği Laboratuvarı Başkanı virolog Pavel Vol&ccedil;kov, mevcut karantina koşulları muhafaza edilmesi kaydıyla Rusya&rsquo;nın koronavir&uuml;s salgınını haziranda yenebileceğini s&ouml;yledi.</p>

<p>Russia Today&rsquo;e (RT) konuşan virolog Pavel Vol&ccedil;kov, olumlu senaryo doğrultusunda yaz başında yeni vaka sayısının sıfıra ineceğini ifade etti.</p>

<p>Vol&ccedil;kov,&nbsp;<em><strong>&ldquo;Bu bizim elimizde, hepimizin evde oturması &ouml;nemli&rdquo;</strong></em>&nbsp;dedi.</p>
<br />
&nbsp;
<h3>&Ccedil;İN D&Uuml;NYA &Uuml;LKELERİNİN HEDEFİNDE</h3>

<p>Covid-19 nedeniyle &Ccedil;in &uuml;zerindeki uluslararası baskı artarken Avustralya soruşturma a&ccedil;ılmasını istedi.&nbsp;<a href="https://www.haber7.com/etiket/abd" target="_blank" title="ABD">ABD</a>&nbsp;Başkanı Trump&#39;ın &#39;&Ccedil;in salgının sonu&ccedil;larıyla y&uuml;zleşmesi gerekir&#39; derken Avustralya h&uuml;k&uuml;meti de uluslararası bir soruşturma talep etti.</p>

<p>&Ccedil;in&#39;in şeffaflığı konusunda &ccedil;ok ciddi kaygılarının olduğunu s&ouml;yleyen Avustralya Dışişleri Bakanı Marise Payne,&nbsp;<em><strong>&quot;Koronavir&uuml;s salgınını ilgilendiren sorunlar uluslararası bağımsız bir soruşturmayı gerektiriyor.&quot;&nbsp;</strong></em>dedi.</p>

<p>&Ccedil;in &ouml;zellikle Wuhan&#39;da bulunan laboratuvar konusunda vir&uuml;s&uuml;n yayılımı nedeniyle d&uuml;r&uuml;st ve g&uuml;venilir bir politika &ccedil;izmediği i&ccedil;in İngiltere, Fransa, ABD gibi pek &ccedil;ok batılı devletin tepkileriyle karşılaşmış, hatta salgın nedeniyle oluşabilecek hasarın faturalanması i&ccedil;in &ccedil;alışmalar başlatılmıştı.</p>

<p><strong>KORONAVİR&Uuml;STE&nbsp;<a href="https://www.haber7.com/etiket/son+dakika" target="_blank" title="SON DAKİKA">SON DAKİKA</a>&nbsp;GELİŞMELER</strong></p>

<h3><u><em>G&uuml;n i&ccedil;indeki t&uuml;m son dakika koranavir&uuml;s (corona vir&uuml;s) gelişmeleri:&nbsp;</em></u></h3>

<p><strong>- İngiltere&#39;de Kovid-19 nedeniyle &ouml;lenlerin sayısı son 24 saatte 596 artarak 16 bin 60 oldu.</strong></p>

<p><strong>-&nbsp;<a href="https://www.haber7.com/etiket/ispanya" target="_blank" title="İspanya">İspanya</a>&#39;da Kovid-19&#39;dan &ouml;lenlerin sayısı son 24 saatte 410 artışla 20 bin 453&#39;e &ccedil;ıktı.</strong></p>

<p><strong>- İran&#39;da son 24 saatte Kovid-19 nedeniyle hayatını kaybedenlerin sayısı 87 artarak, 5 bin 118&#39;e y&uuml;kseldi.</strong></p>

<p><strong>-&nbsp;Bel&ccedil;ika&rsquo;da son 24 saatte koronavir&uuml;s nedeniyle 230 kişi yaşamını yitirdi. &Uuml;lkede toplam can kaybı 5 bin 683&rsquo;e &ccedil;ıktı.</strong></p>

<p><strong>-&nbsp;İsve&ccedil;&rsquo;te koronavir&uuml;s (Covid-19) nedeniyle son 24 saatte 29 kişi yaşamını yitirdi. &Uuml;lkede toplam &ouml;l&uuml; sayısı 1540&#39;a &ccedil;ıktı.</strong></p>

<p><strong>-&nbsp;ABD&#39;de Kovid-19 nedeniyle &ouml;lenlerin sayısı son 24 saatte 2 bin 9 artarak 39 bin 95&#39;e y&uuml;kseldi.</strong></p>

<p><strong>-Fas Sağlık Bakanlığından yapılan yazılı a&ccedil;ıklamada, COVID-19 nedeniyle bir kişinin daha hayatını kaybetmesiyle sayısının 138&#39;ye y&uuml;kseldiği ifade edildi.</strong></p>

<p><strong>-BAE Sağlık Bakanlığı 4 kişinin daha COVID-19 nedeniyle hayatını kaybettiğini ve toplam can kaybının 41&#39;e y&uuml;kseldiğini duyurdu.</strong></p>

<p><strong>-Umman Sağlık Bakanlığı da &uuml;lkedeki &ouml;l&uuml;mlerin sayısının 7&#39;ye y&uuml;kseldiğini belirtti. Bakanlıktan yapılan a&ccedil;ıklamada, 86 kişide daha vir&uuml;s tespit edildiği, toplam vaka sayısının 1266&#39;ya y&uuml;kseldiği, toplam 233 kişinin de sağlığına kavuştuğu ifade edildi.</strong></p>

<p><strong>-&nbsp;</strong><strong>Yeni tip koronavir&uuml;s salgınının &Ccedil;in&#39;den sı&ccedil;radığı &uuml;lke olan G&uuml;ney Kore&#39;de iki aydır ilk kez yeni vaka sayısı tek haneye indi. Seul y&ouml;netimi, bug&uuml;n sadece 8 yeni vaka olduğunu bildirdi.&nbsp;</strong><strong>G&uuml;ney Kore&nbsp;<a href="https://www.haber7.com/etiket/hastal%C4%B1k" target="_blank" title="Hastalık">Hastalık</a>&nbsp;Kontrol ve &Ouml;nleme Merkezleri, teyitli yeni 8 vakayla birlikte toplam vaka sayısının&nbsp;10 bin 661&#39;e &ccedil;ıktığını, 234 &ouml;l&uuml;m&uuml;n bu sayıya dahil olduğunu duyurdu.</strong></p>
', N'b080e170-44ad-42a9-8f39-071c61ca3809.jpg', CAST(N'2020-08-15 17:31:16.0434104' AS DateTime2), N'd032c776-a008-49a4-8701-8e26b6c51268.jpg', N'Pasif', 4)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (12, N'Sağlık Bakanı Açıkladı', N'Koronavirüs''ün serinin yüksek olduğu ülkelerden biri de Rusya. Olumsuz bir tablonun çizildiği Rusya''da en yüksek pozitif vaka  sayısı bugün gerçekleşti. ', N'<p><a href="https://www.haber7.com/etiket/son+dakika+haberi" target="_blank" title="Son dakika haberi">Son dakika haberi</a>: D&uuml;nya genelinde Kovid-19 nedeniyle &ouml;lenlerin sayısı 160 bini aştı.&nbsp;Şu ana kadar 2 milyon 333 bin 164 kişiye&nbsp;<a href="https://www.haber7.com/etiket/koronavir%C3%BCs" target="_blank" title="koronavirüs">koronavir&uuml;s</a>&nbsp;teşhisi kondu. 600 bin 296 kişi iyileşirken, 160 bin 799 kişi hayatını kaybetti.&nbsp;</p>

<h3>RUSYA&#39;DA REKOR ARTIŞ</h3>

<p>Koronavir&uuml;s&#39;&uuml;n serinin y&uuml;ksek olduğu &uuml;lkelerden biri de Rusya. Olumsuz bir tablonun &ccedil;izildiği Rusya&#39;da en y&uuml;ksek pozitif vaka &nbsp;sayısı bug&uuml;n ger&ccedil;ekleşti.&nbsp;</p>

<p>&Uuml;lkede son 24 saatte 6 bin 60 yeni koronavir&uuml;s vakası daha tespit edildi. Rusya&#39;nın genelindeki &nbsp;toplam vaka sayısı ise 42 bin 853&rsquo;e y&uuml;kseldi. Konuya ilişkin Moskova h&uuml;k&uuml;meti a&ccedil;ıklama yaptı:</p>

<p><strong><em>&ldquo;Rusya&rsquo;da vaka sayısı 85 b&ouml;lgede 42 bin 853&rsquo;e y&uuml;kseldi. G&uuml;n i&ccedil;inde 48 hasta hayatını kaybetti. Bug&uuml;ne kadar &ouml;lenlerin sayısı 361&rdquo;</em></strong></p>

<h3><strong>&quot;<a href="https://www.haber7.com/etiket/salg%C4%B1n" target="_blank" title="SALGIN">SALGIN</a>LAR HAZİRANDA BİTER&quot;</strong></h3>

<p>Rusya&rsquo;daki Moskova Fizik ve Teknoloji Enstit&uuml;s&uuml; Genetik M&uuml;hendisliği Laboratuvarı Başkanı virolog Pavel Vol&ccedil;kov, mevcut karantina koşulları muhafaza edilmesi kaydıyla Rusya&rsquo;nın koronavir&uuml;s salgınını haziranda yenebileceğini s&ouml;yledi.</p>

<p>Russia Today&rsquo;e (RT) konuşan virolog Pavel Vol&ccedil;kov, olumlu senaryo doğrultusunda yaz başında yeni vaka sayısının sıfıra ineceğini ifade etti.</p>

<p>Vol&ccedil;kov,&nbsp;<em><strong>&ldquo;Bu bizim elimizde, hepimizin evde oturması &ouml;nemli&rdquo;</strong></em>&nbsp;dedi.</p>
<br />
&nbsp;
<h3>&Ccedil;İN D&Uuml;NYA &Uuml;LKELERİNİN HEDEFİNDE</h3>

<p>Covid-19 nedeniyle &Ccedil;in &uuml;zerindeki uluslararası baskı artarken Avustralya soruşturma a&ccedil;ılmasını istedi.&nbsp;<a href="https://www.haber7.com/etiket/abd" target="_blank" title="ABD">ABD</a>&nbsp;Başkanı Trump&#39;ın &#39;&Ccedil;in salgının sonu&ccedil;larıyla y&uuml;zleşmesi gerekir&#39; derken Avustralya h&uuml;k&uuml;meti de uluslararası bir soruşturma talep etti.</p>

<p>&Ccedil;in&#39;in şeffaflığı konusunda &ccedil;ok ciddi kaygılarının olduğunu s&ouml;yleyen Avustralya Dışişleri Bakanı Marise Payne,&nbsp;<em><strong>&quot;Koronavir&uuml;s salgınını ilgilendiren sorunlar uluslararası bağımsız bir soruşturmayı gerektiriyor.&quot;&nbsp;</strong></em>dedi.</p>

<p>&Ccedil;in &ouml;zellikle Wuhan&#39;da bulunan laboratuvar konusunda vir&uuml;s&uuml;n yayılımı nedeniyle d&uuml;r&uuml;st ve g&uuml;venilir bir politika &ccedil;izmediği i&ccedil;in İngiltere, Fransa, ABD gibi pek &ccedil;ok batılı devletin tepkileriyle karşılaşmış, hatta salgın nedeniyle oluşabilecek hasarın faturalanması i&ccedil;in &ccedil;alışmalar başlatılmıştı.</p>

<p><strong>KORONAVİR&Uuml;STE&nbsp;<a href="https://www.haber7.com/etiket/son+dakika" target="_blank" title="SON DAKİKA">SON DAKİKA</a>&nbsp;GELİŞMELER</strong></p>

<h3><u><em>G&uuml;n i&ccedil;indeki t&uuml;m son dakika koranavir&uuml;s (corona vir&uuml;s) gelişmeleri:&nbsp;</em></u></h3>

<p><strong>- İngiltere&#39;de Kovid-19 nedeniyle &ouml;lenlerin sayısı son 24 saatte 596 artarak 16 bin 60 oldu.</strong></p>

<p><strong>-&nbsp;<a href="https://www.haber7.com/etiket/ispanya" target="_blank" title="İspanya">İspanya</a>&#39;da Kovid-19&#39;dan &ouml;lenlerin sayısı son 24 saatte 410 artışla 20 bin 453&#39;e &ccedil;ıktı.</strong></p>

<p><strong>- İran&#39;da son 24 saatte Kovid-19 nedeniyle hayatını kaybedenlerin sayısı 87 artarak, 5 bin 118&#39;e y&uuml;kseldi.</strong></p>

<p><strong>-&nbsp;Bel&ccedil;ika&rsquo;da son 24 saatte koronavir&uuml;s nedeniyle 230 kişi yaşamını yitirdi. &Uuml;lkede toplam can kaybı 5 bin 683&rsquo;e &ccedil;ıktı.</strong></p>

<p><strong>-&nbsp;İsve&ccedil;&rsquo;te koronavir&uuml;s (Covid-19) nedeniyle son 24 saatte 29 kişi yaşamını yitirdi. &Uuml;lkede toplam &ouml;l&uuml; sayısı 1540&#39;a &ccedil;ıktı.</strong></p>

<p><strong>-&nbsp;ABD&#39;de Kovid-19 nedeniyle &ouml;lenlerin sayısı son 24 saatte 2 bin 9 artarak 39 bin 95&#39;e y&uuml;kseldi.</strong></p>

<p><strong>-Fas Sağlık Bakanlığından yapılan yazılı a&ccedil;ıklamada, COVID-19 nedeniyle bir kişinin daha hayatını kaybetmesiyle sayısının 138&#39;ye y&uuml;kseldiği ifade edildi.</strong></p>

<p><strong>-BAE Sağlık Bakanlığı 4 kişinin daha COVID-19 nedeniyle hayatını kaybettiğini ve toplam can kaybının 41&#39;e y&uuml;kseldiğini duyurdu.</strong></p>

<p><strong>-Umman Sağlık Bakanlığı da &uuml;lkedeki &ouml;l&uuml;mlerin sayısının 7&#39;ye y&uuml;kseldiğini belirtti. Bakanlıktan yapılan a&ccedil;ıklamada, 86 kişide daha vir&uuml;s tespit edildiği, toplam vaka sayısının 1266&#39;ya y&uuml;kseldiği, toplam 233 kişinin de sağlığına kavuştuğu ifade edildi.</strong></p>

<p><strong>-&nbsp;</strong><strong>Yeni tip koronavir&uuml;s salgınının &Ccedil;in&#39;den sı&ccedil;radığı &uuml;lke olan G&uuml;ney Kore&#39;de iki aydır ilk kez yeni vaka sayısı tek haneye indi. Seul y&ouml;netimi, bug&uuml;n sadece 8 yeni vaka olduğunu bildirdi.&nbsp;</strong><strong>G&uuml;ney Kore&nbsp;<a href="https://www.haber7.com/etiket/hastal%C4%B1k" target="_blank" title="Hastalık">Hastalık</a>&nbsp;Kontrol ve &Ouml;nleme Merkezleri, teyitli yeni 8 vakayla birlikte toplam vaka sayısının&nbsp;10 bin 661&#39;e &ccedil;ıktığını, 234 &ouml;l&uuml;m&uuml;n bu sayıya dahil olduğunu duyurdu.</strong></p>
', N'ba16c95f-cb92-47b2-ad01-d5c2cd8ca0b4.jpg', CAST(N'2020-08-15 17:38:10.6579589' AS DateTime2), N'e46f9a08-53ab-4cd4-a65f-654f2c1219b0.jpg', N'Pasif', 4)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (14, N'Arda Turan Galatasaray''da', N'Galatasaray''a geri dönen Arda Turan, Haber.com ''a verdiği röportajda geri dönüş sürecini ve hedeflerini anlattı.', N'<h2>TRANSFERİ O ZAMAN KAPATTIM</h2>
<br />
Hoca ekranda &#39;Arda&#39;yı istiyorum, herkes 2. şansı hak eder&#39; dedikten sonra ben tamamen transfer konusunu kapattım, o g&uuml;nden bu g&uuml;ne kadar t&uuml;m teklifleri reddettim. Hoca benim i&ccedil;in b&ouml;yle bir şey diyorsa, ben hep onun yanında olurum. Ona &ccedil;ok teşekk&uuml;r ediyorum, hayatımdaki t&uuml;m duyguları bana hissettirdi ve bu transferde de ge&ccedil; olsa da yine star gibi hissetmemi sağladığı i&ccedil;in ona teşekk&uuml;r ederim. Biz eski Ali Sami Yenciyizdir, biz kazan dairesini biliriz. Burada seyirci olarak &ccedil;ok sevindik, inşallah futbolcu olarak da seviniriz. Galatasaray beni &ccedil;ağırırsa gelirim, olmazsa trib&uuml;n orada. Ben Galatasaraylıyım. Her Galatasaraylının duygusu nasılsa, benim de &ouml;yle.&quot;<br />
&nbsp;
<h2>O ZAMANKİ BAŞKAN UYGUN G&Ouml;RMEDİ</h2>
<br />
Barcelona&#39;da kendimi &ouml;nemli hissetmezsen ve oynamazsam, siz Ağustos sonunu bekleyin, sizi de maddi olarak rahatlatırım demiştim ama o zamanki başkan bunu b&ouml;yle uygun g&ouml;rmediler. Aslında ilk o zaman gelmek istemiştim. Barcelona da olsa, d&uuml;nyanın en b&uuml;y&uuml;k takımı da olsa, kendimi &ouml;nemli hissetmediğim yerde durmam. Para, pul &ouml;nemli değildir. &Ccedil;alıştığım t&uuml;m başkanlara ve y&ouml;neticilere bunu sorabilirsiniz. Ben Atletico Madrid&#39;in 10 numarası olarak, &ouml;nemli bir oyuncu olarak oraya gittim.<br />
&nbsp;
<h2>MESSI&#39;YLE &Ccedil;OK İYİYDİK</h2>
<br />
D&uuml;ş&uuml;n&uuml;lenin aksine Messi&rsquo;yle &ccedil;ok iyi bir ilişkim vardı. Beraber oynamayı da severdik, saha i&ccedil;inde de belli olacağı &uuml;zere. Ayrılık kararı, tamamiyle benim. Valverde dahil hi&ccedil; kimse bana, &lsquo;Arda, buradan ayrıl.&rsquo; demedi. Messi, Suarez, Neymar&rsquo;dan sonra en iyi istatistiği yaptığımda, Valverde takımın başına gelip, hazırlık ma&ccedil;ları dahil beni doğru d&uuml;zg&uuml;n oynatmayınca, ben orada konuyu kapattım.<br />
&nbsp;
<h2>İSPATLAMA İHTİYACI HİSSETTİM</h2>
<br />
Bir anda kendimi, tekrardan &uuml;lkeye d&ouml;nerek ispatlama ihtiyacı hissettim. Karar doğru mu, yanlış mı tartışılır. Annemin rahatsızlığı, burada olma isteğim bunu itti. Başakşehir&#39;de hi&ccedil;bir sıkıntı g&ouml;rmedim ama kariyerim i&ccedil;in baktığımda doğru karar vermedim, hata yaptım.
<h2><br />
ARKADAŞ VE AİLE ELEŞTİRİLERİ YANLIŞ</h2>
<br />
Arkadaşlarımla ilgili zaman zaman eleştiriler de aldım. Atletico Madrid&rsquo;e, Barcelona&rsquo;ya giderken de, Galatasaray&rsquo;a kaptan olurken de bu arkadaşlarım yanımdalardı. Bu algı işinden vazge&ccedil;elim. Hayatımda duymadığım şeyler. Twitter-Instagram&rsquo;da bir şey s&ouml;yleniyor. &lsquo;Bu da b&ouml;yle değildir ya, inanmıyorlardır.&rsquo; diyorsun. Sonra bir bakıyorsun, onu ger&ccedil;ek sanıyorlar. Bayrampaşa&rsquo;yı &ccedil;ok seviyorum. Benim ailem hala orada yaşıyorlar. Bayrampaşa&rsquo;yı, &ouml;z&uuml;m&uuml; kaybetmiyorum ama ben bir d&uuml;nya vatandaşıyım. Arkadaşlarım ve ailemle ilgili eleştirileri kabul etmiyorum &ccedil;&uuml;nk&uuml; ben bu yolda onlarla y&uuml;r&uuml;d&uuml;m ve onlarla mutluyum. Mutlu olmamın kime ne zararı olabilir? İnsanlar istedi diye bazı şeyleri değiştirmem.
<h2>&Ouml;Z&Uuml;R DİLEMEKTEN GOCUNMAM</h2>
<br />
Fatih hocadan bir &ouml;z&uuml;r dileyeceksem veya elini &ouml;peceksem, bundan gocunmam, hatta gurur duyarım. Fatih hoca bir şeye kırıldıysa, &uuml;z&uuml;ld&uuml;yse, en doğru ortam, onun g&ouml;nl&uuml;n&uuml; alabilecek yer, orasıdır diye d&uuml;ş&uuml;nd&uuml;m. Evde de oturup konuşuyoruz ama orası, ilk buluşma i&ccedil;in doğru yer diye hissettim ve &ccedil;ok etkilendim. Sporculukla ilgili bir hata yapmadım. Eğer hatayı da affedebilecek biri varsa, o da Fatih hocadır. &lsquo;Biz seni affettik, affediyoruz.&rsquo; diyorlar. Kimseye bir şey yapmadım ki. Beni, Fatih hoca affeder.<br />
&nbsp;
<h2>FATİH HOCA FUTBOLCUSUNU TANIR</h2>
<br />
Milli Takım&rsquo;da k&ouml;t&uuml; oynadığım ma&ccedil; sayısı &ccedil;ok azdır. Kosova ma&ccedil;ında &ccedil;ok k&ouml;t&uuml; oynamıştım. Fatih hoca ma&ccedil;tan sonra, &lsquo;Seni ilk defa bu kadar k&ouml;t&uuml; g&ouml;rd&uuml;m.&rsquo; demişti. Devre arasına girdik. Formayı &ccedil;ıkardım, pazubandım s&uuml;rekli d&uuml;ş&uuml;yordu, onunla ilgileniyordum. Kendi kendime s&uuml;rekli konuşuyordum, &lsquo;1 tane adam ge&ccedil;emedin.&rsquo; diye. Fatih hoca geldi sonra. &lsquo;Ne oldu?&rsquo; dedi. &lsquo;Rezalet oynuyorum, hi&ccedil;bir şey yapamıyorum, pas atamıyorum, adam ge&ccedil;emiyorum hocam.&rsquo; dedim. &lsquo;Ge&ccedil; onları, şimdi yaparsın işine bak, hi&ccedil; &ouml;nemli değil.&rsquo; dedi. Normalde Fatih hoca sert uyarılarda bulunabilir. B&ouml;yle dedikten 5-10 dakika sonra &ccedil;ıkıp &ccedil;ok g&uuml;zel bir asist yaptım. Hemen oyuna m&uuml;dahale edebildim. Anlatmak istediğim şey, sahanın i&ccedil;inde &ouml;zel hissetmek, bu. Bazı Hagi ma&ccedil;larını izleyin, inanamazsınız. Top kaybediyor, sahada yok. Sonra &ccedil;ıkıp 35 metreden vuruyor... Fatih hocaylayken bazen b&ouml;yle hissediyorsunuz. Fatih hoca, futbolcusunu tanır. Belki senden bağırarak performans alır, başkasının başını okşayarak performansını alır. İnsana dokunmakla alakalı
<h2><br />
BAR&Ccedil;A TRANSFERİ YORUMLARI CAHİLLİK</h2>
<br />
Bug&uuml;ne kadar Galatasaray formasıyla ne yaptıysam, yine aynısını yapmaya &ccedil;alışacağım. En iyisini vermeye &ccedil;alışacağım. Gol atıp, asist yapıp, liderlik yapmaya &ccedil;alışacağım. Her dakika Galatasaray forması i&ccedil;in m&uuml;cadele edeceğim. Barcelona&rsquo;ya transfer oluş şeklimle ilgili &ccedil;ıkan spek&uuml;lasyonlar, tamamen spor cahilliği. Bu konuyla alakalı fazla bir şey konuşmama gerek yok. Bunları s&ouml;yleyebilenler i&ccedil;in &uuml;z&uuml;l&uuml;r&uuml;m ben.
<h2>ZOR G&Uuml;NLERE DENK GELDİM</h2>
<br />
&quot;Ben, Galatasaray&rsquo;ın zor d&ouml;nemlerine denk geldim kadro olarak. 30 yaş &uuml;st&uuml; daha iyi bilir. Biz, Galatasaray&rsquo;da oynarken karşımızda Alex&rsquo;ler, Tuncay&rsquo;lar, &ccedil;ok g&uuml;&ccedil;l&uuml; Fenerbah&ccedil;e takımları vardı. Stadını yaptırmıştı Fenerbah&ccedil;e. Maddi olarak &ccedil;ok &ouml;ndeydi. Hem b&uuml;t&ccedil;e olarak hem de oynucu kadrosu olarak daha gerideydik. 2005-06 şampiyonluğu &ccedil;ok &ouml;nemlidir, 2008 şampiyonluğu ondan daha &ouml;nemlidir.&rdquo;
<h2>ATLETICO&#39;DA STRES YAPMAZDIM</h2>
<br />
Sonra futboldan keyif almayı &ouml;ğrendim. Atletico Madrid d&ouml;nemi hi&ccedil; stres yaptığımı hatırlamıyorum. Sadece, Bayer Leverkusen penaltılarında &ccedil;ok heyecanlanmıştım. Onları daha kolay ge&ccedil;eriz diye d&uuml;ş&uuml;nm&uuml;şt&uuml;m, &ccedil;ok zorladılar bizi. Camp Nou&rsquo;da şampiyon olduğumuz g&uuml;n, sakatlanıp oyundan &ccedil;ıkmıştım. Nefes alamıyordum, Diego Costa da sakatlanıp &ccedil;ıkmıştı. Yanımda oturuyordu. 100 bin kişinin i&ccedil;inde, 40 kişinin şampiyonluk &ccedil;ığlığını duyuyorsun. Bence, Leicester&rsquo;ın şampiyonluğundan da daha &ouml;nemli. Tarihteki en &ouml;nemli lig şampiyonluğu olabilir &ccedil;&uuml;nk&uuml; bir tarafta Messi var, bir tarafta Ronaldo var. Puan kaybetmediler, sinir oluyorsun...
<h2>VERİLİRSE LİDERLİK YAPACAĞIM</h2>
<br />
Elbette verilirse takıma liderilk yapacağım ama ben oynamaya geldim. Uzun yıllar futbol oynayacağım. Bırakmaya gelmedim, oynamak istiyorum. Artık; T&uuml;rkiye&rsquo;deki başarılardansa, Avrupa&rsquo;daki başarıların bizim i&ccedil;in daha kıymetli olacağını d&uuml;ş&uuml;n&uuml;yorum. Avrupa Ligi de bu sene bunun i&ccedil;in iyi bir fırsat olabilir.
<h2>HEDEF; LİG, AVRUPA VE KUPA</h2>
<br />
Kaliteli oyuncularımız var. Feghouli&rsquo;nin, ligin en iyi oyuncusu olduğunu d&uuml;ş&uuml;n&uuml;yorum. Bu sene i&ccedil;in hedefimiz; lig şampiyonluğu, Avrupa Ligi şampiyonluğu ve T&uuml;rkiye Kupası.', N'446560ca-7eae-40db-98b3-0d5c4f786389.png', CAST(N'2020-08-15 21:19:31.3066071' AS DateTime2), N'bf5b7c78-2be1-4887-b923-5e39c48dbf5a.jpg', N'Pasif', 1)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (15, N'Falcao transfer kararını verdi! Galatasaray...', N'Radamel Falcao''nun yol ayrımına geldiği ve kısa süre içinde Kolombiyalı starın transfer görüşmesi yapmak için Dubai''ye gideceği belirtilmişti.', N'<h3><a href="https://www.sabah.com.tr/haberleri/galatasaray" rel="tag" style="font-size: 13px;" target="_blank">Galatasaray</a><span style="font-size:13px">&#39;ın sezon başında Monaco&#39;dan bedelsiz kadrosuna kattığı&nbsp;</span><a href="https://www.sabah.com.tr/haberleri/radamel-falcao" rel="tag" style="font-size: 13px;" target="_blank">Radamel Falcao</a><span style="font-size:13px">&#39;nun yol ayrımına geldiği ve kısa s&uuml;re i&ccedil;inde Kolombiyalı starın&nbsp;</span><a href="https://www.sabah.com.tr/haberleri/transfer" rel="tag" style="font-size: 13px;" target="_blank">transfer</a><span style="font-size:13px">&nbsp;g&ouml;r&uuml;şmesi yapmak i&ccedil;in Dubai&#39;ye gideceği belirtilmişti.Yaşanan bu gelişmelerin ardından perde arkasında yaşananlar ortaya &ccedil;ıktı.</span></h3>
<br />
Şu anda sakatlığı nedeniyle tedavi s&uuml;recinde olan Falcao,&nbsp;<a href="https://www.sabah.com.tr/haberleri/al-wahda" rel="tag" target="_blank">Al Wahda</a>&#39;nın&nbsp;<a href="https://www.sabah.com.tr/haberleri/transfer" rel="tag" target="_blank">transfer</a>&nbsp;teklifini ciddi anlamda d&uuml;ş&uuml;n&uuml;yor ve kariyerinin son transferini iyi bir &uuml;cretle yapmak istiyor.&Ouml;ta yandan&nbsp;<a href="https://www.sabah.com.tr/haberleri/al-wahda" rel="tag" target="_blank">Al Wahda</a>&nbsp;y&ouml;neticilerinin de, Falcao transferi i&ccedil;in Galatasaraylı idarecilerle bir dizi g&ouml;r&uuml;şme ger&ccedil;ekleştirdiği belirtildi.<br />
<br />
<strong>GALATASARAY TEMKİNLİ YAKLAŞIYOR</strong><br />
&Ouml;te yandan Galatasaraylı y&ouml;neticilerin bu transfere şu anlık mesafeli yaklaştığı ve oyuncunun 3 yıllık kontratının bulunduğunu, Kolombiyalı yıldızın bedelsiz ayrılığına izin vermeyecekleri s&ouml;ylenildiği kaydedildi.<br />
<br />
<strong>FALCAO G.SARAY&#39;I BEKLİYOR</strong><br />
&Ouml;te yandan şu anda sakatlığı bulunan Falcao&#39;nun da, Galatasaraylı yetkililerin vereceği cevabı beklediği ifade edildi.', N'579434a2-798b-4020-b56c-5c3434807e85.jpg', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'8bd41345-6171-41b5-b9d6-8224420ba387.jpg', N'Pasif', 1)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (16, N'Fatih Öztürk: "Türkiye''nin en önemli kulübündeyim"', N'Galatasaray''ın Kasımpaşa ile sözleşmesini feshetmesi sonrasında kadrosuna kattığı Fatih Öztürk, 2 yıllık kontratın altına imzasını attı', N'<p><span style="font-size:16px">Galatasaray&#39;ın Kasımpaşa ile s&ouml;zleşmesini feshetmesi sonrasında kadrosuna kattığı<strong>&nbsp;Fatih &Ouml;zt&uuml;rk</strong>, 2 yıllık kontratın altına imzasını attıktan sonra a&ccedil;ıklamalarda bulundu.</span></p>

<p><span style="font-size:16px">&Ccedil;ok mutlu olduğunu belirten 33 yaşındaki kaleci, &quot;&Ccedil;ok farklı duygular i&ccedil;indeyim.&nbsp;<strong>Burası T&uuml;rkiye&#39;nin en &ouml;nemli kul&uuml;b&uuml;, burası T&uuml;rkiye&#39;nin futbol anlamında &ccedil;atısı. Herkesin olmak istediği yerdeyim.</strong>&nbsp;Sabah uyandığımda şampiyon gibi uyanıp, şampiyon gibi &ccedil;alışıp taraftarları mutlu etmeye &ccedil;alışacağım. Yıllar &ouml;nce T&uuml;rkiye Kupası&#39;nda Galatasaray&#39;a karşı oynamıştım ilk ma&ccedil;ımı. Buranın farklı bir ambiyansı var benim i&ccedil;in, ayrı hislerim oldu hep. Galatasaray camiası i&ccedil;in penaltılar kurtarmaya, onlar i&ccedil;in kurtarış yapmaya &ccedil;alışacağım. Bu stat benim i&ccedil;in hep &ouml;zel olmuştur, inşallah bu formayla bu performansı sergilemeye devam edeceğim.&quot; dedi.</span></p>
', N'44c2eedf-5144-4acc-8dfa-d9f6186e264e.jpg', CAST(N'2020-08-15 21:52:10.2323658' AS DateTime2), N'9cffcbd0-266a-44cc-8084-e0210606e949.jpg', N'Pasif', 1)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (17, N'Bugün altın fiyatları kaç lira? Gram altın, çeyrek altın ve cumhuriyet altını ne kadar?', N'Gram altın fiyatı hafta kapanışının ardından yeniden 460 lira seviyesinin altına geriledi.', N'<h2>Gram altın fiyatı hafta kapanışının ardından yeniden 460 lira seviyesinin altına geriledi. Ons altındaki d&uuml;ş&uuml;şle birlikte sert bir gerileme yaşayan altın fiyatları 15 Ağustos 2020 Cumartesi g&uuml;n&uuml; de dengelenme seviyelerine yakın bir konumda seyrediyor. Peki, bug&uuml;n tam altın ve &ccedil;eyrek altın ne kadar?</h2>
<br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial">Altın fiyatları 15 Ağustos 2020 Cumartesi g&uuml;n&uuml; ons altındaki d&uuml;ş&uuml;şle birlikte bir kez daha gerileme yaşadı. Altının ons fiyatının y&uuml;zde 0,44&rsquo;l&uuml;k gerileme yaşaması sonrasında gram altın 459,80 lira seviyesine indi. Ge&ccedil;tiğimiz g&uuml;nlerde yaşanan sert d&uuml;ş&uuml;ş sonrası 460 lira seviyesinin &uuml;zerini zorlayan altının gram fiyatı hafta sonu bu seviyenin altında yer alıyor.</span></span></span><br />
<br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial"><strong>&Ccedil;EYREK ALTIN NE KADAR?</strong></span></span></span><br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial">Yatırımcısının her d&ouml;nem g&ouml;zdesi olan &ccedil;eyrek altın ise bug&uuml;n 749 TL&rsquo;den alınırken 767 TL&rsquo;den satışa sunuluyor.</span></span></span><br />
<br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial"><strong>TAM ALTIN NE KADAR?</strong></span></span></span><br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial">Y&uuml;ksek miktarda alım yapanların ya da takı ama&ccedil;lı alacakların tercihlerinden olan tam altın ise bug&uuml;n 2 bin 996 liradan alınıp 3 bin 68 liradan satışa sunuluyor.</span></span></span><br />
<br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial"><strong>CUMHURİYET ALTINI NE KADAR?</strong></span></span></span><br />
<span style="font-size:18px"><span style="color:#333333"><span style="font-family:cnn-sans,Helvetica,Arial">Diğer altın t&uuml;rlerine oranla alış ve satışta daha az kaybettirdiği i&ccedil;in tercih edilen cumhuriyet altınının bug&uuml;nk&uuml; alış fiyatı 2 bin 986 lira olarak belirlenirken satış fiyatı ise 3 bin 47 lirada yer alıyor.</span></span></span><br />
&nbsp;', N'15273c03-a83f-4e68-9ef9-ba5455bc4e98.jpg', CAST(N'2020-08-17 00:53:46.6155151' AS DateTime2), N'd4677bcf-2a8a-4219-ba92-cc14a6a823d4.jpg', N'Pasif', 3)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (18, N'Dolar ne kadar, kaç TL? 16 Ağustos güncel dolar TL kuru', N'Dolar kuru 16 Ağustos Pazar günü ekonomi gündemini takip edenler ve yatırımcılar tarafından en çok merak edilip araştırılanlar arasında yer alıyor. ', N'<h2>Dolar kuru 16 Ağustos Pazar g&uuml;n&uuml; ekonomi g&uuml;ndemini takip edenler ve yatırımcılar tarafından en &ccedil;ok merak edilip araştırılanlar arasında yer alıyor. Bilindiği &uuml;zere dolar kuru piyasalar kapalı olduğu i&ccedil;in ge&ccedil;tiğimiz Cuma g&uuml;n ki kapanış değerleri &uuml;zerinden işlem g&ouml;r&uuml;yor. İşte, 16 Ağustos euro TL, dolar TL ve sterlin TL kuru...</h2>
<br />
<span style="font-size:16px">16 Ağustos dolar kuru piyasalar kapalı olduğu i&ccedil;in bir &ouml;nceki Cuma g&uuml;n&uuml;n kapanış değerleri &uuml;zerinden işlem g&ouml;r&uuml;yor. Ge&ccedil;tiğimiz haftayakaladığı y&uuml;kselişle birlikte 7 lira barajını aşan dolar kuru daha sonra bu seviyenin &uuml;zerindeki konumunu sabitlemişti.</span><br />
&nbsp;
<p><span style="font-size:16px">Bug&uuml;n Bigpara&rsquo;dan alınan son dakika d&ouml;viz kurları verilerine g&ouml;re 16 Ağustos 2020 Pazar g&uuml;n&uuml; dolar 7,36 seviyelerinden işlem g&ouml;r&uuml;yor.</span></p>

<p><span style="font-size:16px">Dolar kurunun 7,36 TL olduğu aynı dakikalarda Euro kuru ise 8,71 TL&rsquo;de yer alıyor. Kurlar arasnıda en y&uuml;ksek değere sahip olan para birimleri arasında bulunan İngiliz Sterlini ise bug&uuml;n 9,66 TL&rsquo;den işlem g&ouml;r&uuml;yor.</span></p>

<ul>
	<li><span style="font-size:16px">İngiliz Sterlini 9,64 TL</span></li>
	<li><span style="font-size:16px">Amerikan Doları 7,36 TL</span></li>
	<li><span style="font-size:16px">Euro &nbsp;8,71 TL</span></li>
	<li><span style="font-size:16px">İsvi&ccedil;re Frangı 8,08 TL</span></li>
	<li><span style="font-size:16px">Japon Yeni 0,07 TL</span></li>
	<li><span style="font-size:16px">Suudi Arabistan&nbsp;Riyali 1,95 TL</span></li>
	<li><span style="font-size:16px">Norve&ccedil; Kronu 0,82 TL</span></li>
	<li><span style="font-size:16px">Danimarka Kronu 1,16 TL</span></li>
	<li><span style="font-size:16px">Avustralya Doları 5,25 TL</span></li>
	<li><span style="font-size:16px">Kanada Doları 5,54 TL</span></li>
	<li><span style="font-size:16px">İsve&ccedil; Kronu 0,84 TL</span></li>
</ul>
', N'fa904b77-265e-4663-8364-ad2c617afc44.jpg', CAST(N'2020-08-17 00:57:41.6251221' AS DateTime2), N'd1697cde-509f-4582-ac86-a75dbbd05731.jpg', N'Pasif', 3)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (19, N'Tüketiciye KDV indirimleri uyarısı', N'Tüketici Başvuru Merkezi Onursal Başkanı Aydın Ağaoğlu, tüketicilerin pek çok hizmet kolunda getirilen katma değer vergisi (KDV) indirimlerinin takipçisi olması gerektiğini bildirdi.', N'<span style="font-size:16px">Ağaoğlu, AA muhabirine, 1 Ağustos itibarıyla uygulamaya konulan bazı hizmet kolları ve giriş &uuml;cretlerindeki KDV indirimlerinin 15 g&uuml;nl&uuml;k uygulama sonu&ccedil;larını değerlendirdi.&nbsp;</span><br />
&nbsp;
<p><span style="font-size:16px">S&ouml;z konusu indirimleri uygulamayan pek &ccedil;ok hizmet kolu olduğuna dair şikayetler aldıklarını belirten Ağaoğlu, &ouml;zellikle doğrudan nihai t&uuml;keticiye hizmet sunan sekt&ouml;rlerde bu sıkıntının yaşandığını s&ouml;yledi.</span></p>

<p><span style="font-size:16px">Ağaoğlu, s&ouml;z konusu vergi d&uuml;zenlemesinin tamamen t&uuml;keticilere yansıtılması gereken bir indirim olduğuna işaret ederek, &quot;T&uuml;keticinin Korunması Hakkında Kanun&#39;da a&ccedil;ık h&uuml;k&uuml;m var. Satışa sunulan her t&uuml;rl&uuml; &uuml;r&uuml;n ve hizmetle ilgili fiyat etiketi ve listesi bulunmalı. Yani berberin, kuru temizlemecinin, tamir, bakım ve onarım işleri yapanların da fiyat listesinin olması lazım. Bunu kanun emrediyor. Kanuna g&ouml;re&nbsp;bir mağazada etiket g&ouml;rmediğiniz zaman şikayet ederseniz ceza kesilir. Bu cezayı belediye zabıtaları yanında ticaret il m&uuml;d&uuml;rl&uuml;kleri de uygulayabilir. Etiket bulundurmama cezası kesiliyor.&quot; dedi.</span></p>

<p><span style="font-size:16px"><strong>&quot;FİYAT LİSTESİ UYGULAMASI YOK&quot;</strong></span></p>

<p><span style="font-size:16px">&Uuml;lkede fiyat&nbsp;listesi uygulamasının yerleşmemesi nedeniyle t&uuml;keticinin KDV indirimlerinin yansıtılıp yansıtılmadığını fark edemediğine dikkati &ccedil;eken Ağaoğlu, ş&ouml;yle konuştu:</span><br />
<br />
&nbsp;</p>

<p><span style="font-size:16px">&quot;Eğer t&uuml;ketici kısa s&uuml;re &ouml;nce aynı hizmeti aldıysa fiyatta indirim olup olmadığını fark edebilir. Eğer, KDV indiriminden &ouml;nceki fiyatla şimdiki fiyatın aynı olduğunu tespit ederse şikayet ederek, haksız fiyat artışı uyguladığı i&ccedil;in o firmaya yaptırım uygulanmasını sağlayabilir. Benzer bir şey benim de başıma geldi, kuru temizlemecide&nbsp;fiyat listesini g&ouml;rmek istedim ve aldığım fişteki KDV oranına baktım.&nbsp;Herkes başkasından bekleyince kimse takip&ccedil;isi olmuyor.&quot;</span></p>

<p><span style="font-size:16px">Ağaoğlu, t&uuml;keticilere &ccedil;ağrıda bulunarak, &quot;T&uuml;keticiler dikkatli davranıp KDV indirimlerinin yansıyıp yansımadığının takip&ccedil;isi olmalı. Vatandaşlar, hizmet aldıkları mevcut ve bir &ouml;nceki tarifeyi talep ederek fiyat karşılaştırması yapsın. Bilin&ccedil;li t&uuml;ketici olmak bunu gerektirir. KDV indiriminin fiyatlara yansıyıp yansımadığının anlaşılması i&ccedil;in eski fiyat listesi de g&ouml;r&uuml;lmeli. T&uuml;rkiye&#39;de fiyat listesi kuralına uyulmaması nedeniyle t&uuml;ketici &ccedil;oğu zaman karşılaştırma yapamıyor.&quot; dedi.</span></p>

<p><span style="font-size:16px"><strong>VERGİ İNDİRİMLERİ UYGULAMADA</strong></span></p>

<p><span style="font-size:16px">Cumhurbaşkanı Kararı ile belirlenen sekt&ouml;r ve iş kollarında tanımlı mal ve hizmetlerin sunulmasında uygulanan KDV oranları, yıl sonuna kadar ge&ccedil;erli olmak &uuml;zere y&uuml;zde 18&#39;den y&uuml;zde 8&#39;e indirilmişti. Bu sekt&ouml;r ve iş kolları arasında, seminer, konser, fuar ve lunapark giriş &uuml;cretleri, d&uuml;ğ&uuml;n ve nikah salonlarında verilen organizasyon hizmetleri, berberlik ve kuaf&ouml;rl&uuml;k hizmetleri, terzilik,&nbsp;ayakkabı onarımı&nbsp;hizmetleri, kuru temizleme hizmetleri ile halı ve kilim yıkama hizmetleri yer alıyor. Tamir, bakım ve onarım hizmetleri yanında&nbsp;genel orana tabi yeme-i&ccedil;me hizmetleri (alkoll&uuml; i&ccedil;eceklere isabet eden kısmı hari&ccedil;), yolcu taşımacılığı hizmetleri, genel orana tabi s&uuml;s bitkileri ile &ccedil;i&ccedil;ek teslimleri de KDV indiriminden faydalanılacak alanlar.</span></p>

<p><span style="font-size:16px">Konaklama hizmeti, yeme-i&ccedil;me sekt&ouml;r&uuml;nde verilen hizmetler ile sinema, tiyatro, bale ve m&uuml;ze giriş &uuml;creti gibi k&uuml;lt&uuml;rel faaliyetlerin y&uuml;zde 8 olan KDV oranları da yıl sonuna kadar y&uuml;zde 1&#39;e indirilmişti.&nbsp;</span></p>
', N'6b297995-2493-46b6-b836-de9f1d56b659.jpg', CAST(N'2020-08-17 01:11:16.5754301' AS DateTime2), N'f7830755-4643-47e5-a9c9-90774916b8fe.jpg', N'Pasif', 3)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (20, N'Son dakika haberi... Vaka sayısı ve can kaybı kaç oldu? 16 Ağustos koronavirüs tablosu', N'Son dakika haberine göre, Sağlık Bakanı Fahrettin Koca, Türkiye''nin koronavirüs tablosunu açıkladı.', N'<h2>T&uuml;rkiye&#39;de son 24 saatte 1192 kişiye Kovid-19 tanısı konuldu, 19 kişi hayatını kaybetti, toplam vaka sayısı 249 bin 309, can kaybı 5 bin 974 oldu. Son 24 saatte 997 kişinin daha iyileşmesiyle Kovid-19 tedavisi tamamlananların sayısı 230 bin 969 oldu.</h2>

<p><span style="font-size:16px">Sağlık Bakanlığının internet sitesinde yer alan, Bakan Fahrettin Koca&#39;nın da Twitter&#39;dan paylaştığı &quot;T&uuml;rkiye G&uuml;nl&uuml;k Koronavir&uuml;s Tablosu&quot;nun g&uuml;ncel verilerine g&ouml;re, bug&uuml;n 65 bin 956 test yapıldı, 1192 kişide Kovid-19 tespit edildi.</span></p>

<p><span style="font-size:16px">Son 24 saatte 19 hasta vefat etti, 997 kişi iyileşti. Kovid-19 tedavisi tamamlananların sayısı 230 bin 969 oldu.</span></p>

<p><span style="font-size:16px">Toplam test sayısı 5 milyon 725 bin 242, vaka sayısı 249 bin 309, vefat sayısı 5 bin 974 olarak kayıtlara ge&ccedil;ti.</span></p>

<p><span style="font-size:16px">Ağır hasta sayısı 679, hastalarda zat&uuml;rre oranı ise y&uuml;zde 7,6 oldu.</span></p>

<p><span style="font-size:16px">Sağlık Bakanı Koca, son verilere ilişkin Twitter hesabından yaptığı paylaşımda, &quot;Yeni tanı sayımız d&uuml;nk&uuml;nden daha az. Şu ana kadarki toplam vaka sayımızdan 12 bin 366 kişi halen aktif hasta. Yani vir&uuml;s&uuml; yayma potansiyeline sahip. Bunlar ve temaslıları izolasyonda. Dikkat eder, kendimizi dışarıdaki&nbsp;riskten korursak daha hızlı başarırız.&quot; ifadesini kullandı.</span></p>
', N'2f5b7836-73e6-409b-9496-14696f5613b1.jpg', CAST(N'2020-08-17 01:25:30.7169489' AS DateTime2), N'116e2e82-a2c3-43d6-b35f-7e7a82cec344.jfif', N'Pasif', 4)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (21, N'Ünlü oyuncu Mel Gibson''ın adından esinlenerek ürettiği ballara isim veren girişimci, başını belaya soktu', N'Şilili bir girişimci, ünlü oyuncu Mel Gibson''ın adını ürettiği ballara verince başı belaya girdi. ', N'<h2>Şilili bir girişimci, &uuml;nl&uuml; oyuncu Mel Gibson&#39;ın adını &uuml;rettiği ballara verince başı belaya girdi. Mel Gibson&#39;ın avukatları, akt&ouml;r&uuml;n adının ve g&ouml;r&uuml;nt&uuml;s&uuml;n&uuml;n yetki alınmadan kullanılmasının derhal durdurulmasını istedi.</h2>
&nbsp;

<p><span style="font-size:16px">Şilili girişimci Yohanna Agurto, &uuml;nl&uuml; akt&ouml;r&nbsp;<a href="https://www.haberler.com/mel-gibson/" title="Mel Gibson Haberleri, Mel Gibson Haberi, Mel Gibson Haber"><strong>Mel Gibson</strong></a>&#39;un adından yola &ccedil;ıkarak &uuml;rettiği bala İspanyolca&#39;da &quot;Miel&quot; anlamına gelen &quot;Miel Gibson&quot; ismi verdi. &quot;Miel Gibson&quot; ballarının &uuml;zerinde aynı zamanda, &uuml;nl&uuml; oyuncu Mel Gibson&#39;un Braveheart filminden alınmış bir resmi de bulunuyor.</span></p>

<h3><span style="font-size:16px">AKT&Ouml;R&Uuml;N AVUKATLARI, İSMİN KULLANIMININ DURDURULMASINI İSTEDİ</span></h3>

<p><span style="font-size:16px">Agurto,&nbsp;<a href="https://www.haberler.com/twitter/" title="Twitter Haberleri, Twitter Haberi, Twitter Haber"><strong>Twitter</strong></a>&nbsp;hesabından yaptığı a&ccedil;ıklamada &quot;Mel&#39;in avukatlarından tehditler alana dek, her şey yolunda gidiyordu&quot; dedi. Gibson&#39;un avukatları, akt&ouml;r&uuml;n adının ve g&ouml;r&uuml;nt&uuml;s&uuml;n&uuml;n yetki alınmadan kullanılmasının derhal durdurulmasını istedi.</span></p>

<h3><span style="font-size:16px">MEL GIBSON&#39;A TWITTER &Uuml;ZERİNDEN YAZDI</span></h3>

<p><span style="font-size:16px">Reuters&nbsp;<a href="https://www.haberler.com/" title="Haberler - Haber, Son Dakika Haber - Güncel Son Haberler"><strong>Haber</strong></a>&nbsp;Ajansı&#39;na g&ouml;re avukatlar, koronavir&uuml;s salgını y&uuml;z&uuml;nden işsiz kaldıktan sonra bal satmaya başlayan Agurto&#39;nun, &uuml;r&uuml;n&uuml; piyasadan &ccedil;ekmemesi halinde, dava a&ccedil;ma tehdidinde bulundu. Şirket, Twitter &uuml;zerinden Gibson&#39;dan fotoğrafının kullanılmasına izin vermesini talep etti ve &quot;Balımız sadece cesur y&uuml;rekler i&ccedil;in&quot; ifadesi kullanıldı.</span><br />
<br />
&nbsp;</p>

<h3><span style="font-size:16px">MEL GIBSON SESSİZ KALDI</span></h3>

<p><span style="font-size:16px">Miel Gibson&#39;ın talebi binlerce kez retweetlenip beğenilirken Gibson&#39;ın kendisi hen&uuml;z bir tepki vermedi. Ancak Agurto, sosyal medyadan aldığı destekle m&uuml;cadeleden vazge&ccedil;memeye kararlı olduğunu belirtti ve &quot;Benim y&uuml;reğim cesur, şimdi daha da cesur, &ccedil;&uuml;nk&uuml; g&uuml;&ccedil;l&uuml; bir topluluk olduğumuzu biliyorum&quot; dedi.</span></p>
', N'a1597a4d-e298-423b-80fa-c2e10670f204.jpg', CAST(N'2020-08-17 01:35:15.2473548' AS DateTime2), N'06d6ea04-1197-418f-9bba-02a8959def80.jpg', N'Pasif', 8)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (22, N'Nusret''in taşına ilgi çok ama almak isteyen yok! Şimdi de altınla kaplatıp fiyatı da iki katına çıkardı', N'Geçen yıl Mykonos''ta kullandığı taşına gösterilen ilgi nedeniyle camekan içine aldı ', N'<p><span style="font-size:16px">Tuz serpme hareketiyle fenomen haline gelen&nbsp;<a href="https://www.haberler.com/nusret-gokce/" title="Nusret Gökçe Haberleri, Nusret Gökçe Haberi, Nusret Gökçe Haber"><strong>Nusret G&ouml;k&ccedil;e</strong></a>, ge&ccedil;en sene Mykonos&#39;ta&nbsp;<a href="https://www.haberler.com/spor/" title=" Spor, Spor Haberleri, Spor Haber"><strong>spor</strong></a>&nbsp;yaptığı 10 kiloluk taşı, hayranlarından b&uuml;y&uuml;k ilgi g&ouml;r&uuml;nce&nbsp;<a href="https://www.haberler.com/istanbul/" title="İstanbul Haberleri, İstanbul Haberi, İstanbul Haber"><strong>İstanbul</strong></a>&#39;a getirmişti. Taşı, restoranına yaptırdığı bir camekan i&ccedil;inde saklayan ve 1 milyon dolar fiyat bi&ccedil;en Nusret, alıcı &ccedil;ıkmayınca bu kez de taşı altınla kaplatıp fiyatı 2 katına &ccedil;ıkardı.</span></p>

<h3><span style="font-size:16px">2 MİLYON DOLAR İSTİYOR</span></h3>

<p><span style="font-size:16px">Instagram hesabından altınla boyadığı taşla &ccedil;ekilen fotoğrafını paylaşan Nusret, a&ccedil;ıklama kısmında taşın fiyatının 2 milyon dolara y&uuml;kseldiğini belirtti.</span></p>

<h3><span style="font-size:16px">TAKİP&Ccedil;İLERİ ALTIN FİYATLARINA ATIFTA BULUNDU</span></h3>

<p><span style="font-size:16px">Sosyete kasabı Nusret&#39;in taşı altınla kaplatıp satışa &ccedil;ıkarması &quot;Vatandaş &ccedil;eyrek altın alamazken o taşa o parayım kimse vermez&quot; yorumlarını da beraberinde getirdi.</span></p>
', N'9fd4a970-5e56-464d-b3ed-630a68e363a6.jpg', CAST(N'2020-08-17 01:45:30.6866937' AS DateTime2), N'9ec87f0c-7832-4c2e-933a-c725d65e8ccc.jpg', N'Pasif', 8)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (23, N'Onur Ünlü''den ilginç proje! Kurduğu internet sitesinden "hayatını satıyor"', N'Senarist ve yönetmen Onur Ünlü, kurduğu "hayatimisatıyorum.com" adlı internet sitesinde kendisine ait eşyaları satmaya başladı. ', N'<h2>Senarist ve y&ouml;netmen Onur &Uuml;nl&uuml;, kurduğu &quot;hayatimisatıyorum.com&quot; adlı internet sitesinde kendisine ait eşyaları satmaya başladı. &Uuml;nl&uuml;&#39;n&uuml;n bu ilgin&ccedil; projesi sosyal medyada b&uuml;y&uuml;k ilgi g&ouml;r&uuml;rken, satışa sunulan eşyalar arasında Altın Portakal &ouml;d&uuml;l&uuml;n&uuml;n olması dikkat &ccedil;ekti.</h2>

<p><span style="font-size:16px">Leyla ile Mecnun dizisi ile tanınan senarist ve&nbsp;<a href="https://www.haberler.com/yonetmen/" title="yönetmen Haberleri, yönetmen Haberi, yönetmen Haber"><strong>y&ouml;netmen</strong></a>&nbsp;<a href="https://www.haberler.com/onur-unlu/" title="Onur Ünlü Haberleri, Onur Ünlü Haberi, Onur Ünlü Haber"><strong>Onur &Uuml;nl&uuml;</strong></a>, kurduğu internet sitesinde kendisine ait eşyaları satmaya başladı. Eşyalarını &#39;hayatimisatıyorum.com&#39; isimli internet sitesinden satışa sunan &Uuml;nl&uuml;, &ccedil;ektiği film ve dizilerde kullandığı objeler ile kişisel eşyalarını a&ccedil;ık artırmaya koydu. İlgin&ccedil; proje, sosyal medyada da b&uuml;y&uuml;k ilgi g&ouml;rd&uuml;. &Uuml;nl&uuml;, kendisinden yaş&ccedil;a k&uuml;&ccedil;&uuml;k g&uuml;zel oyuncu Hazar Erg&uuml;&ccedil;l&uuml; ile yaşadığı ilişkiyle de ge&ccedil;tiğimiz g&uuml;nlerde g&uuml;ndeme gelmişti.</span></p>

<h3><span style="font-size:16px">&quot;T&Uuml;M MADDİ VE MANEVİ DEĞERLERİN SATIŞIDIR&quot;</span></h3>

<p><span style="font-size:16px">Altın Portakal &ouml;d&uuml;ll&uuml; y&ouml;netmen ve senarist Onur &Uuml;nl&uuml;, &quot;hayatimisatiyorum.com&quot; isimli internet sitesinde kendisine ait eşyaları satmaya başladı. Onur &Uuml;nl&uuml;, sitenin hakkında kısmında yaptığı a&ccedil;ıklamada &quot;Hayatımı satıyorum nedir?&quot; sorusuna &quot;Onur &Uuml;nl&uuml;&#39;n&uuml;n yaşamı, &ouml;l&uuml;m&uuml; ve sonrası da dahil olmak &uuml;zere hayatına dair t&uuml;m maddi manevi değerlerin satışıdır&quot; ifadelerine yer verdi.</span><br />
&nbsp;</p>

<h3><span style="font-size:16px">&Ouml;D&Uuml;L DE SATIYOR S&Uuml;RPRİZ KUTU DA...</span></h3>

<p><span style="font-size:16px">&Uuml;nl&uuml;, internet sitesinde, Altın Portakal &ouml;d&uuml;l&uuml;n&uuml;, &#39;Celal Tan ve Ailesinin Aşırı Acıklı Hikayesi&#39; filminde kullanılan klaket ve &#39;Kırık Kalpler Bankası&#39; filminin ilk ve tek orijinal afişinin yanı sıra, &#39;Onur &Uuml;nl&uuml;&#39;ye ait nesnelerle dolu s&uuml;rpriz kutu&#39; ismiyle bir adet kutu ile &uuml;zerinde &#39;Sa&ccedil;ma zamanla anlam kazanır&#39; yazan bardak gibi bir&ccedil;ok &uuml;r&uuml;n&uuml; satışa koydu. Sitedeki bazı &uuml;r&uuml;nler a&ccedil;ık artırmayla, bazıları ise sabit fiyatla alıcısını bekliyor.</span></p>

<h3><span style="font-size:16px">&quot;BELKİ DE ONUR &Uuml;NL&Uuml; KOMPLE SİZİN OLUR&quot;</span></h3>

<p><span style="font-size:16px">Sitenin ana sayfasında ise, &quot;Onur &Uuml;nl&uuml;&#39;n&uuml;n nesi var nesi yok satın almak istemez misiniz? İster sabit fiyatlı &uuml;r&uuml;nlere parayı tak diye yapıştırın! İsterseniz a&ccedil;ık artırmaya girip, en iyi fiyatı verin ve &uuml;r&uuml;n&uuml; kapın! Belki de Onur &Uuml;nl&uuml; komple sizin olur, kim bilir?&quot; yazısı yer aldı. Onur &Uuml;nl&uuml;&#39;n&uuml;n kurduğu internet sitesi sosyal medyada da ilgi &ccedil;ekti.</span><br />
&nbsp;</p>

<h3><span style="font-size:16px">ONUR &Uuml;NL&Uuml; KİMDİR?</span></h3>

<p><span style="font-size:16px">Leyla ile Mecnun, G&uuml;neşin Oğlu, Beş Şehir, Şubat, Sen Aydınlatırsın Geceyi, Celal Tan ve Ailesinin Aşırı Acıklı Hikayesi, Ben de &Ouml;zledim, İtirazım var, Beş Kardeş, Kırık Kalpler Bankası, Aşkın G&ouml;ren G&ouml;zlere İhtiyacı Yok gibi birbirinden &uuml;nl&uuml; ve sevilen yapımların y&ouml;netmenliğini ve senaristliğini yaptı. Ayrıca Ah Muhsin &Uuml;nl&uuml; mahlasıyla şiirler yazıp, şiirlerini Gidiyorum Bu isimli kitapta topladı.</span></p>
', N'9537a859-b59e-4d6a-8b62-793abb6c9caf.jpg', CAST(N'2020-08-17 02:03:14.3710849' AS DateTime2), N'64a92295-c39b-44ec-bfc3-cfe5a09531d0.jpg', N'Pasif', 8)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (24, N'Cezasını Çekmeli', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana gelen', N'<p><span style="font-size:16px">Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</span></p>

<p><span style="font-size:16px"><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></span></p>

<p><span style="font-size:16px">Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:</span><br />
<br />
&nbsp;</p>

<p><span style="font-size:16px">&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</span></p>

<p><span style="font-size:16px"><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></span></p>

<p><span style="font-size:16px">&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</span></p>

<p><span style="font-size:16px">&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</span></p>
', N'754d555c-b9ba-452f-bfac-918ab7f8ce4a.jfif', CAST(N'2020-08-17 02:09:08.4195919' AS DateTime2), N'cec3ed70-7f38-4c15-84e5-e3dfee173ea4.jpg', N'Pasif', 2)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (25, N'SORUN DEĞİL ONU DA ÇÖZERİZ...', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana gelen', N'&nbsp;
<p>Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</p>
', N'55507f09-9ac2-462e-9598-f6ecfce69b73.jfif', CAST(N'2020-08-17 02:21:51.5415390' AS DateTime2), N'6645ed16-4fe2-44e1-b9cb-6f7ad43c62c6.webp', N'Pasif', 2)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (26, N'TOKAT GİBİ YANIT!!!', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana gelen', N'<span style="font-size:16px">Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</span>
<p><span style="font-size:16px"><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></span></p>

<p><span style="font-size:16px">Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:</span><br />
<br />
&nbsp;</p>

<p><span style="font-size:16px">&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</span></p>

<p><span style="font-size:16px"><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></span></p>

<p><span style="font-size:16px">&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</span></p>

<p><span style="font-size:16px">&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</span></p>
', N'7bd73f01-942f-4fcd-b775-386567456775.jpg', CAST(N'2020-08-17 02:24:45.4193497' AS DateTime2), N'6266d440-3442-45f3-872a-74dd969e81be.jpg', N'Pasif', 2)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (27, N'Okullar Hangi Tarihte Açılıyor ?', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana gelen', N'<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.
<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</p>
', N'8c05ea44-6cac-4ca0-97f8-957aaa548306.jpg', CAST(N'2020-08-17 02:27:41.7433181' AS DateTime2), N'5d08cabe-63f1-43a6-a938-ff0e1956247c.jpg', N'Pasif', 7)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (28, N'YÖK Açıkladı', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana gelen', N'Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.
<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</p>
', N'6fdddc57-05ff-422d-9e32-8744ebd158ff.webp', CAST(N'2020-08-17 02:30:18.6109353' AS DateTime2), N'dab6b1a7-ca9c-4b43-bf3e-65f3ccd837dc.webp', N'Pasif', 7)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (29, N'BAKAN AÇIKLADI', N'Çevre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999''da meydana', N'Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.
<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</p>
', N'bb8054c3-3fa0-4b93-adac-36f2109d5957.jpg', CAST(N'2020-08-17 02:32:31.5955123' AS DateTime2), N'86e5fff8-195e-4ed9-862c-745dbbb70a30.jpg', N'Pasif', 7)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (30, N'SAKİN ŞEHİR', N'Bakan Kurum, 17 Ağustos 1999 depreminin yıl dönümü dolayısıyla yayımladığı mesajı.', N'Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.
<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;<br />
<br />
&Ccedil;evre ve Şehircilik Bakanı Murat Kurum, 17 Ağustos 1999&#39;da meydana gelen Marmara Depremi&#39;nin yıl d&ouml;n&uuml;m&uuml;nde yayımladı<br />
Bakan Kurum, 17 Ağustos 1999 depreminin yıl d&ouml;n&uuml;m&uuml; dolayısıyla yayımladığı mesajında, millet olarak&nbsp;<a href="https://www.milliyet.com.tr/haberler/deprem" target="_blank">deprem</a>&nbsp;nedeniyle &ccedil;ok acılar yaşandığını, son 100 yılda b&uuml;y&uuml;kl&uuml;ğ&uuml; 6&#39;nın &uuml;zerinde olan 60&#39;a yakın depremde 80 bin kişinin hayatını kaybettiğini bildirdi. &Uuml;lke topraklarının y&uuml;zde 66&#39;sının deprem riski altında olduğunu belirten Bakan Kurum, &quot;Ve maalesef n&uuml;fusumuzun y&uuml;zde 71&#39;i bu alanlarda yaşıyor. Yaklaşık 60 milyon insanımız deprem tehdidiyle karşı karşıya&quot; dedi.</p>

<p><strong>&#39;5 YILLIK EYLEM PLANINI BELİRLEDİK&#39;</strong></p>

<p>Bakan Kurum, Cumhurbaşkanı Recep Tayyip Erdoğan&#39;ın 2012 yılında &#39;Bedeli ne olursa olsun&#39; diyerek seferberlik anlayışı i&ccedil;inde başlattığı kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;alışmaları kapsamında, bug&uuml;ne kadar 1 milyon 410 bin bağımsız birimde ikamet eden 6 milyon vatandaşın, can ve mal g&uuml;venliğini teminat altına alacak deprem d&ouml;n&uuml;ş&uuml;m faaliyetlerini ger&ccedil;ekleştirdiklerini belirtti. Kurum, şunları kaydetti:<br />
<br />
&nbsp;</p>

<p>&quot;Ge&ccedil;tiğimiz Eyl&uuml;l ayında kamuoyuyla paylaştığımız &#39;Kentsel D&ouml;n&uuml;ş&uuml;m Eylem Planı&#39;mızla bakanlığımız &ouml;nc&uuml;l&uuml;ğ&uuml;nde, yerel idareler, ilgili kuruluşlar, &ouml;zel sekt&ouml;r ve vatandaşlarımızın katılımı ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hızlandırdık. 81 ilimizden gelen verilerle &uuml;lkemizin riskli yapı envanterini ortaya koyduk. Elde ettiğimiz sonu&ccedil;larla da kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n, deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml;n 5 yıllık eylem planını belirledik. &#39;T&uuml;rkiye&#39;nin Her Yerinde Kentsel D&ouml;n&uuml;ş&uuml;m&#39; hedefiyle &ccedil;alışmalarımıza hız verdik. Yerinde, g&ouml;n&uuml;ll&uuml; ve hızlı d&ouml;n&uuml;ş&uuml;m ilkeleri &ccedil;er&ccedil;evesinde şehirlerimizi riskli yapılardan ve &ccedil;arpık kentleşmeden kurtarıyoruz. Eskiyen evleri, riskli yapıları yeniliyor; &ccedil;evreye duyarlı, kimlikli, &ouml;zg&uuml;n, sağlam, g&uuml;venli yapılara sahip, k&uuml;lt&uuml;rel değerlerini yaşatan şehirler inşa ediyoruz.&quot;</p>

<p><strong>&#39;ACİL D&Ouml;N&Uuml;ŞT&Uuml;R&Uuml;LMESİ GEREKEN KONUT SAYISI İSE 1.5 MİLYON&#39;</strong></p>

<p>&quot;Bug&uuml;n &uuml;lkemizde d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı 6.7 milyondur&quot; diyen Bakan Kurum, a&ccedil;ıklamasında şunları kaydetti:</p>

<p>&quot;Acil d&ouml;n&uuml;şt&uuml;r&uuml;lmesi gereken konut sayısı ise 1.5 milyondur. Bu 1.5 milyon konutun da &ouml;n&uuml;m&uuml;zdeki 5 yıl i&ccedil;erisinde 300 bini İstanbul&#39;da olmak &uuml;zere d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; tamamlayacağız. Kentsel d&ouml;n&uuml;ş&uuml;m, ter&ouml;rle m&uuml;cadele kadar &ouml;nemlidir. Bu anlamda devlet, yerel y&ouml;netimler ve vatandaşlar olarak el ele vermeliyiz, seferber olmalıyız. Biz bundan sonra hi&ccedil;bir depremde, hi&ccedil;bir doğal afette vatandaşlarımızın can kaybı yaşamasını, annelerimizin ağlamasını, hi&ccedil;bir evladımızın &ouml;ks&uuml;z, yetim kalmasını istemiyoruz. Buradan 17 Ağustos&#39;un yıld&ouml;n&uuml;m&uuml;nde vatandaşlarımıza bir &ccedil;ağrıda bulunmak istiyorum. Bizlere, belediyelerimize m&uuml;racaat edip evlerinizin risk tespitlerini yaptırın devlet millet işbirliği ile deprem d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; hep birlikte ger&ccedil;ekleştirelim. Bunu &ccedil;ocuklarımız i&ccedil;in, yavrularımızın geleceği i&ccedil;in bir an &ouml;nce yaptıralım.&quot;</p>
', N'19d0c48b-1e31-4cfd-9191-b7ae25cd791c.jpg', CAST(N'2020-08-17 02:38:56.7011169' AS DateTime2), N'cdac2470-7810-4553-a383-342d5e1438fe.jpg', N'Aktif', 22)
GO
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Description], [ImagePath], [Date], [DetailImagePath], [BroadCastingStatus], [CategoryId]) VALUES (32, N'Bakan Koca son durumu paylaştı', N'Gelen son dakika haberine göre; Sağlık Bakanı Fahrettin Koca, ''Türkiye Günlük Koronavirüs Tablosu''nu paylaştı.', N'<span style="font-size:16px">Sağlık Bakanı Fahrettin Koca&#39;nın Twitter hesabından paylaştığı tabloya g&ouml;re; son 24 saatte 82 bin 318 test yapıldı, 1263 kişide daha koronavir&uuml;s tespit edildi. Vir&uuml;s nedeniyle 20 kişi hayatını kaybederken, 942 kişi de iyileşti. Bug&uuml;nk&uuml; verilerle, toplam test sayısı 5 milyon 882 bin 406, toplam hasta sayısı 251 bin 805, toplam vefat sayısı 6 bin 16, hastalarda zat&uuml;rre oranı y&uuml;zde 7,5, ağır hasta sayısı 703, toplam iyileşen hasta sayısı 232 bin 913 oldu.&nbsp;</span><br />
&nbsp;
<p><span style="font-size:16px"><strong>BAKAN KOCA&#39;DAN UYARI</strong></span></p>

<p><span style="font-size:16px">Bakan Koca verilere ilişkin, &quot;Bu tabloda her g&uuml;n a&ccedil;ıklanan koronavir&uuml;s test sonu&ccedil;ları, ortalama 10 g&uuml;n &ouml;nceki bulaşmaları g&ouml;steriyor. Sonu&ccedil;lara g&ouml;re, ortalama 10 g&uuml;n &ouml;nce, vir&uuml;s, tedbirlere uyulmayan ortamlarda 1263 kişiye daha bulaştı. Kararlı olursak, vir&uuml;se bu g&uuml;c&uuml; tanımayabiliriz&quot; değerlendirmesinde bulundu.<br />
Koronavir&uuml;s&#39;&uuml;n serinin y&uuml;ksek olduğu &uuml;lkelerden biri de Rusya. Olumsuz bir tablonun &ccedil;izildiği Rusya&#39;da en y&uuml;ksek pozitif vaka sayısı bug&uuml;n ger&ccedil;ekleşti.<br />
<span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff"><a href="https://www.haber7.com/etiket/son+dakika+haberi" style="box-sizing:border-box; color:black; text-decoration:none; touch-action:manipulation; transition:all 0.3s ease 0s" target="_blank" title="Son dakika haberi">Son dakika haberi</a>: D&uuml;nya genelinde Kovid-19 nedeniyle &ouml;lenlerin sayısı 160 bini aştı.&nbsp;Şu ana kadar 2 milyon 333 bin 164 kişiye&nbsp;<a href="https://www.haber7.com/etiket/koronavir%C3%BCs" style="box-sizing:border-box; color:black; text-decoration:none; touch-action:manipulation; transition:all 0.3s ease 0s" target="_blank" title="koronavirüs">koronavir&uuml;s</a>&nbsp;teşhisi kondu. 600 bin 296 kişi iyileşirken, 160 bin 799 kişi hayatını kaybetti.&nbsp;</span></span></span></span></p>

<h3 style="text-align:left"><span style="font-size:16px"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="color:#212529"><span style="background-color:#ffffff">RUSYA&#39;DA REKOR ARTIŞ</span></span></span></span></h3>
<span style="font-size:16px"><span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff">Koronavir&uuml;s&#39;&uuml;n serinin y&uuml;ksek olduğu &uuml;lkelerden biri de Rusya. Olumsuz bir tablonun &ccedil;izildiği Rusya&#39;da en y&uuml;ksek pozitif vaka &nbsp;sayısı bug&uuml;n ger&ccedil;ekleşti.&nbsp;</span></span></span><br />
<span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff">&Uuml;lkede son 24 saatte 6 bin 60 yeni koronavir&uuml;s vakası daha tespit edildi. Rusya&#39;nın genelindeki &nbsp;toplam vaka sayısı ise 42 bin 853&rsquo;e y&uuml;kseldi. Konuya ilişkin Moskova h&uuml;k&uuml;meti a&ccedil;ıklama yaptı:</span></span></span><br />
<span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff"><strong><em>&ldquo;Rusya&rsquo;da vaka sayısı 85 b&ouml;lgede 42 bin 853&rsquo;e y&uuml;kseldi. G&uuml;n i&ccedil;inde 48 hasta hayatını kaybetti. Bug&uuml;ne kadar &ouml;lenlerin sayısı 361&rdquo;</em></strong></span></span></span></span>

<h3 style="text-align:left"><span style="font-size:16px"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="color:#212529"><span style="background-color:#ffffff"><strong>&quot;<a href="https://www.haber7.com/etiket/salg%C4%B1n" style="box-sizing:border-box; color:black; text-decoration:none; touch-action:manipulation; transition:all 0.3s ease 0s" target="_blank" title="SALGIN">SALGIN</a>LAR HAZİRANDA BİTER&quot;</strong></span></span></span></span></h3>

<p><span style="font-size:16px"><span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff">Rusya&rsquo;daki Moskova Fizik ve Teknoloji Enstit&uuml;s&uuml; Genetik M&uuml;hendisliği Laboratuvarı Başkanı virolog Pavel Vol&ccedil;kov, mevcut karantina koşulları muhafaza edilmesi kaydıyla Rusya&rsquo;nın koronavir&uuml;s salgınını haziranda yenebileceğini s&ouml;yledi.</span></span></span><br />
<span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff">Russia Today&rsquo;e (RT) konuşan virolog Pavel Vol&ccedil;kov, olumlu senaryo doğrultusunda yaz başında yeni vaka sayısının sıfıra ineceğini ifade etti.</span></span></span><br />
<span style="color:#212529"><span style="font-family:&quot;Open Sans&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#ffffff">Vol&ccedil;kov,&nbsp;<em><strong>&ldquo;Bu bizim elimizde, hepimizin evde oturması &ouml;nemli&rdquo;</strong></em>&nbsp;dedi.</span></span></span></span></p>
', N'c98826d3-cd84-490e-8059-c29a9151a8cf.jpg', CAST(N'2020-08-18 22:39:56.3803604' AS DateTime2), N'd87a517d-ed3a-45d6-9418-bcf2966bb431.jfif', N'Aktif', 4)
GO
SET IDENTITY_INSERT [dbo].[News] OFF
GO
/****** Object:  Index [IX_Announcements_CategoryId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_CategoryId] ON [dbo].[Announcements]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19.08.2020 16:00:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 19.08.2020 16:00:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_CategoryId]    Script Date: 19.08.2020 16:00:44 ******/
CREATE NONCLUSTERED INDEX [IX_News_CategoryId] ON [dbo].[News]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_Categories_CategoryId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [ProjeDb] SET  READ_WRITE 
GO
