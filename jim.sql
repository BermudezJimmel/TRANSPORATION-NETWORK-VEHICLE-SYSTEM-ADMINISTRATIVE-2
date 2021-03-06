USE [master]
GO
/****** Object:  Database [Administrative]    Script Date: 3/25/2018 2:45:25 PM ******/
CREATE DATABASE [Administrative]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Administrative', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Administrative.mdf' , SIZE = 21504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Administrative_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Administrative_log.ldf' , SIZE = 7616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Administrative] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Administrative].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Administrative] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Administrative] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Administrative] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Administrative] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Administrative] SET ARITHABORT OFF 
GO
ALTER DATABASE [Administrative] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Administrative] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Administrative] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Administrative] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Administrative] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Administrative] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Administrative] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Administrative] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Administrative] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Administrative] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Administrative] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Administrative] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Administrative] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Administrative] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Administrative] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Administrative] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Administrative] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Administrative] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Administrative] SET  MULTI_USER 
GO
ALTER DATABASE [Administrative] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Administrative] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Administrative] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Administrative] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Administrative] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Administrative]
GO
/****** Object:  Schema [grabServer]    Script Date: 3/25/2018 2:45:28 PM ******/
CREATE SCHEMA [grabServer]
GO
/****** Object:  Table [dbo].[AdminDMArchieved]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminDMArchieved](
	[DMArchievedno] [int] IDENTITY(1918200000,1) NOT NULL,
	[DMDocumentId] [int] NULL,
	[DMDocumentName] [varchar](50) NULL,
	[DMDocumentType] [varchar](50) NULL,
	[DMDocument] [varchar](50) NULL,
	[DMStatus] [varchar](50) NULL CONSTRAINT [DF_AdminDMArchieved_DMStatus]  DEFAULT ('Archieved'),
	[DMDate] [date] NULL,
 CONSTRAINT [PK_AdminDMArchieved] PRIMARY KEY CLUSTERED 
(
	[DMArchievedno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminDMDeploymentDT]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminDMDeploymentDT](
	[DMDTDeploymentno] [int] NOT NULL,
	[DMApprovedno] [int] NULL,
	[DMEmployeeId] [int] NULL,
	[DMDepartment] [varchar](50) NULL,
	[DMDocumentName] [varchar](50) NULL,
	[DMDocument] [varchar](max) NULL,
	[DMStatus] [varchar](50) NULL,
	[DMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminDMDeploymentDT] PRIMARY KEY CLUSTERED 
(
	[DMDTDeploymentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminDMDeploymentLM]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminDMDeploymentLM](
	[DMDeploymentno] [int] IDENTITY(1918210000,1) NOT NULL,
	[DMAttachno] [int] NULL,
	[DMDepartment] [varchar](50) NULL,
	[DMDocumentName] [varchar](50) NULL,
	[DMDocument] [varchar](500) NULL,
	[DMPriority] [varchar](50) NULL,
	[DMStatus] [varchar](50) NULL,
	[DMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminDMDeployment] PRIMARY KEY CLUSTERED 
(
	[DMDeploymentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminFREventAsset]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminFREventAsset](
	[EAno] [int] IDENTITY(360000,1) NOT NULL,
	[Eventno] [int] NULL,
	[Assetno] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_AdminFREventAsset] PRIMARY KEY CLUSTERED 
(
	[EAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdminFREvents]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminFREvents](
	[FREventno] [int] IDENTITY(1918400000,1) NOT NULL,
	[FREventName] [varchar](50) NULL,
	[FRFacilityID] [int] NULL,
	[FRStartDate] [date] NULL,
	[FRStatus] [varchar](50) NULL CONSTRAINT [DF_AdminFREvents_FRStatus]  DEFAULT ('Ongoing'),
 CONSTRAINT [PK_AdminFREvents] PRIMARY KEY CLUSTERED 
(
	[FREventno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminFRFacility]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminFRFacility](
	[FRRfno] [int] IDENTITY(28000,1) NOT NULL,
	[FRFacilityId] [int] NULL,
	[FRDate] [date] NULL,
 CONSTRAINT [PK_AdminFRFacility] PRIMARY KEY CLUSTERED 
(
	[FRRfno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdminFRRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminFRRequest](
	[FRRequestno] [int] IDENTITY(1918410000,1) NOT NULL,
	[FRDepartment] [varchar](50) NULL,
	[FRIdno] [int] NULL,
	[FRLname] [varchar](50) NULL,
	[FRFname] [varchar](50) NULL,
	[FRMi] [varchar](50) NULL,
	[FRType] [varchar](50) NULL,
	[FRPurpose] [varchar](500) NULL,
	[FRStatus] [varchar](50) NULL CONSTRAINT [DF_AdminFRRequest_FRStatus]  DEFAULT ('Pending'),
	[FRDate] [date] NULL,
 CONSTRAINT [PK_AdminFRRequest] PRIMARY KEY CLUSTERED 
(
	[FRRequestno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminFRReservation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminFRReservation](
	[FRReservationno] [int] IDENTITY(1918420000,1) NOT NULL,
	[FRRequestno] [int] NULL,
	[FRFacilityId] [int] NULL,
	[FRFacilityName] [varchar](50) NULL,
	[FRCapacity] [varchar](50) NULL,
	[FREventName] [varchar](50) NULL,
	[FRStartDate] [varchar](50) NULL,
	[FRStartTime] [varchar](50) NULL,
	[FREndDate] [varchar](50) NULL,
	[FREndTime] [varchar](50) NULL,
	[FRNote] [varchar](50) NULL,
	[FRStatus] [varchar](50) NULL CONSTRAINT [DF_AdminFRReservation_FRStatus]  DEFAULT ('Reserved'),
	[FRDate] [date] NULL,
 CONSTRAINT [PK_AdminFRReservation] PRIMARY KEY CLUSTERED 
(
	[FRReservationno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMAdministrativeCase]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMAdministrativeCase](
	[LMAdmincaseno] [int] IDENTITY(1918100000,1) NOT NULL,
	[LMFileno] [int] NULL,
	[LMViolateRule] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMNote] [varchar](50) NULL,
	[LMDate] [date] NULL,
 CONSTRAINT [PK_AdminLMAdministrativeCase] PRIMARY KEY CLUSTERED 
(
	[LMAdmincaseno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMAdminPunishment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMAdminPunishment](
	[LMAdminPunishmentno] [int] IDENTITY(1918070000,1) NOT NULL,
	[LMAdmincaseno] [int] NULL,
	[LMPunishment] [varchar](50) NULL,
	[LMDate] [date] NULL,
 CONSTRAINT [PK_AdminLMAdminPunishment] PRIMARY KEY CLUSTERED 
(
	[LMAdminPunishmentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMAttachDocu]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMAttachDocu](
	[LMAttachno] [int] IDENTITY(620000,1) NOT NULL,
	[LMRequestno] [int] NULL,
	[LMDepartment] [varchar](50) NULL,
	[LMDocumentName] [varchar](50) NULL,
	[LMDocument] [varchar](500) NULL,
	[LMQuantity] [varchar](50) NULL,
	[LMPriority] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMDate] [date] NULL,
 CONSTRAINT [PK_AdminLMDocuments] PRIMARY KEY CLUSTERED 
(
	[LMAttachno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCivilCase]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCivilCase](
	[LMCivilcaseno] [int] IDENTITY(1918110000,1) NOT NULL,
	[LMFileno] [varchar](50) NULL,
	[LMTypeofcase] [varchar](50) NULL,
	[LMLawyer] [varchar](50) NULL,
	[LMCourthouse] [varchar](50) NULL,
	[LMNote] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCivilCase] PRIMARY KEY CLUSTERED 
(
	[LMCivilcaseno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCivilPunishment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCivilPunishment](
	[LMCivilPunishmentno] [int] IDENTITY(1918090000,1) NOT NULL,
	[LMCivilCaseno] [varchar](50) NULL,
	[LMPunishment] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCivilPunishment] PRIMARY KEY CLUSTERED 
(
	[LMCivilPunishmentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCivilUpdate]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCivilUpdate](
	[LMUpdateno] [int] IDENTITY(1918060000,1) NOT NULL,
	[LMCivilcaseno] [varchar](50) NULL,
	[LMCourthouse] [varchar](50) NULL,
	[LMNote] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCivilUpdate] PRIMARY KEY CLUSTERED 
(
	[LMUpdateno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMComplainant]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMComplainant](
	[LMComplainantno] [int] IDENTITY(1918020000,1) NOT NULL,
	[LMId] [varchar](50) NULL,
	[LMCLname] [varchar](50) NULL,
	[LMCFname] [varchar](50) NULL,
	[LMCMi] [varchar](50) NULL,
	[LMType] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMComplainant] PRIMARY KEY CLUSTERED 
(
	[LMComplainantno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMComplaints]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMComplaints](
	[LMComplainno] [int] IDENTITY(1918010000,1) NOT NULL,
	[LMComplainantId] [varchar](50) NULL,
	[LMCType] [varchar](50) NULL,
	[LMCLname] [varchar](50) NULL,
	[LMCFname] [varchar](50) NULL,
	[LMCMi] [varchar](50) NULL,
	[LMRType] [varchar](50) NULL,
	[LMRespondentId] [varchar](50) NULL,
	[LMRLname] [varchar](50) NULL,
	[LMRFname] [varchar](50) NULL,
	[LMRMi] [varchar](50) NULL,
	[LMComplain] [varchar](max) NULL,
	[LMStatus] [varchar](50) NULL CONSTRAINT [DF_AdminLMComplaints_LMStatus]  DEFAULT ('File'),
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMComplaints] PRIMARY KEY CLUSTERED 
(
	[LMComplainno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCriminalCase]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCriminalCase](
	[LMCriminalcaseno] [int] IDENTITY(1918120000,1) NOT NULL,
	[LMFileno] [varchar](50) NULL,
	[LMTypeofcase] [varchar](50) NULL,
	[LMLawyer] [varchar](50) NULL,
	[LMCourthouse] [varchar](50) NULL,
	[LMNote] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCriminalCase] PRIMARY KEY CLUSTERED 
(
	[LMCriminalcaseno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCriminalPunishment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCriminalPunishment](
	[LMCrimPunishmentno] [int] IDENTITY(1918080000,1) NOT NULL,
	[LMCriminalcaseno] [varchar](50) NULL,
	[LMPunishment] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCriminalPunishment] PRIMARY KEY CLUSTERED 
(
	[LMCrimPunishmentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMCriminalUpdate]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMCriminalUpdate](
	[LMUpdateno] [int] IDENTITY(1918050000,1) NOT NULL,
	[LMCriminalcaseno] [varchar](50) NULL,
	[LMCourtHouse] [varchar](50) NULL,
	[LMNote] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL,
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMCriminalUpdate] PRIMARY KEY CLUSTERED 
(
	[LMUpdateno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMDocument]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMDocument](
	[LMDocumentId] [int] IDENTITY(49000,1) NOT NULL,
	[LMDocumentType] [varchar](50) NULL,
	[LMDocumentName] [varchar](500) NULL,
	[LMPath] [varchar](500) NULL,
	[LMStatus] [varchar](50) NULL CONSTRAINT [DF_AdminLMDocument_LMStatus]  DEFAULT ('Active'),
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMDocument] PRIMARY KEY CLUSTERED 
(
	[LMDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMDocuRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMDocuRequest](
	[LMRequestno] [int] IDENTITY(1918590000,1) NOT NULL,
	[LMId] [varchar](50) NULL,
	[LMLname] [varchar](50) NULL,
	[LMFname] [varchar](50) NULL,
	[LMMi] [varchar](50) NULL,
	[LMDepartment] [varchar](50) NULL,
	[LMTypeofdocu] [varchar](max) NULL,
	[LMPurpose] [varchar](50) NULL,
	[LMQuantity] [varchar](50) NULL,
	[LMPriority] [varchar](50) NULL,
	[LMStatus] [varchar](50) NULL CONSTRAINT [DF_AdminLMDocuRequest_LMStatus]  DEFAULT ('Regular'),
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMDocuRequest] PRIMARY KEY CLUSTERED 
(
	[LMRequestno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMFile]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMFile](
	[LMFileno] [int] IDENTITY(1918040000,1) NOT NULL,
	[LMComplainno] [varchar](50) NULL,
	[LMComplainantno] [varchar](50) NULL,
	[LMRespondentno] [varchar](50) NULL,
	[LMTypeofCase] [varchar](50) NULL,
	[LMBasis] [varchar](500) NULL,
	[LMStatus] [varchar](50) NULL CONSTRAINT [DF_AdminLMFile_LMStatus]  DEFAULT ('Open Case'),
	[LMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMFile] PRIMARY KEY CLUSTERED 
(
	[LMFileno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMLaw]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMLaw](
	[Lawno] [int] IDENTITY(770000,1) NOT NULL,
	[Section] [varchar](500) NULL,
	[Article] [varchar](500) NULL,
	[Description] [varchar](500) NULL,
	[Type] [varchar](500) NULL,
 CONSTRAINT [PK_AdminLMLaw] PRIMARY KEY CLUSTERED 
(
	[Lawno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMRespondent]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMRespondent](
	[LMRespondentno] [int] IDENTITY(1918030000,1) NOT NULL,
	[LMId] [varchar](50) NULL,
	[LMRLname] [varchar](50) NULL,
	[LMRFname] [varchar](50) NULL,
	[LMRMi] [varchar](50) NULL,
	[LMType] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMRespondent] PRIMARY KEY CLUSTERED 
(
	[LMRespondentno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLMRule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLMRule](
	[Ruleno] [int] IDENTITY(760000,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLMRule] PRIMARY KEY CLUSTERED 
(
	[Ruleno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminVMBlocklist]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminVMBlocklist](
	[VMBlocklistno] [int] IDENTITY(1918710000,1) NOT NULL,
	[VMVisitorId] [varchar](50) NULL,
	[VMLname] [varchar](50) NULL,
	[VMFname] [varchar](50) NULL,
	[VMMi] [varchar](50) NULL,
	[VMDescription] [varchar](50) NULL,
	[VMPicture] [varchar](50) NULL,
	[VMStatus] [varchar](50) NULL,
	[VMDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminVMBlocklist] PRIMARY KEY CLUSTERED 
(
	[VMBlocklistno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminVMRegistration]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminVMRegistration](
	[VMVisitorId] [int] IDENTITY(1918720000,1) NOT NULL,
	[VMLname] [varchar](50) NULL,
	[VMFname] [varchar](50) NULL,
	[VMMi] [varchar](50) NULL,
	[VMAddress] [varchar](50) NULL,
	[VMTelCp] [varchar](50) NULL,
	[VMEmail] [varchar](50) NULL,
	[VMDateBirth] [varchar](50) NULL,
	[VMStatus] [varchar](50) NULL,
	[VMDate] [varchar](50) NULL,
	[VMPicture] [varchar](50) NULL,
 CONSTRAINT [PK_AdminVMRegistration] PRIMARY KEY CLUSTERED 
(
	[VMVisitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminVMVisitation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminVMVisitation](
	[VMVisitationno] [int] IDENTITY(1918730000,1) NOT NULL,
	[VMVisitorId] [varchar](50) NULL,
	[VMEvent] [varchar](50) NULL,
	[VMPurpose] [varchar](50) NULL,
	[VMAreaToVisit] [varchar](50) NULL,
	[VMCheckIn] [varchar](50) NULL,
	[VMCheckOut] [varchar](50) NULL,
	[VMPicture] [varchar](50) NULL,
	[VMStatus] [varchar](50) NULL,
	[VMINDate] [varchar](50) NULL,
	[VMOUTDate] [varchar](50) NULL,
 CONSTRAINT [PK_AdminVMVisitation] PRIMARY KEY CLUSTERED 
(
	[VMVisitationno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminVMVisitEvent]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminVMVisitEvent](
	[VMVisitEventno] [int] IDENTITY(1918750000,1) NOT NULL,
	[VMEventno] [varchar](50) NULL,
	[VMFacilityName] [varchar](50) NULL,
	[VMLname] [varchar](50) NULL,
	[VMFname] [varchar](50) NULL,
	[VMMi] [varchar](50) NULL,
	[VMGender] [varchar](50) NULL,
	[VMEventName] [varchar](50) NULL,
	[VMType] [varchar](50) NULL,
	[VMTimeIn] [varchar](50) NULL,
	[VMTimeOut] [varchar](50) NULL,
	[VMDateIn] [varchar](50) NULL,
	[VMDateOut] [varchar](50) NULL,
 CONSTRAINT [PK_AdminVMVisitEvent] PRIMARY KEY CLUSTERED 
(
	[VMVisitEventno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ccredit_mali]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ccredit_mali](
	[PCRPaymentID] [int] NOT NULL,
	[PCRTypeID] [int] NULL,
	[PCRBookinNo] [int] NULL,
	[PCRCostumerID] [int] NULL,
	[PCRPer_Km] [int] NULL,
	[PCRRollandOther] [varchar](50) NULL,
	[PCRPointDiscount] [int] NULL,
	[PCRTotal] [int] NULL,
	[PCRDate_Time] [varchar](50) NULL,
	[PCRBankName] [varchar](50) NULL,
	[PCRContactNo] [decimal](18, 0) NULL,
	[PCR_DateTime] [varchar](50) NULL,
 CONSTRAINT [PK_Core2P_Ccredit1] PRIMARY KEY CLUSTERED 
(
	[PCRPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[collection_collect_bank]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[collection_collect_bank](
	[Collect_transaction_no] [int] NOT NULL,
	[Collect_bank_name] [varchar](50) NULL,
	[Collect_bank_account] [int] NULL,
	[Collect_Totalamount] [int] NULL,
	[Collect_Description] [nchar](50) NULL,
	[Collect_Type] [nchar](50) NULL,
	[Collect_Date] [date] NULL,
 CONSTRAINT [PK_collection_collect_bank] PRIMARY KEY CLUSTERED 
(
	[Collect_transaction_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1CMFeedback]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1CMFeedback](
	[CMCustomerID] [int] NOT NULL,
	[CMContactNo] [int] NULL,
	[CMFeedback] [int] NULL,
	[CMTypes] [varchar](50) NULL,
 CONSTRAINT [PK_Core1CMFeedback] PRIMARY KEY CLUSTERED 
(
	[CMCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1CMHistory]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core1CMHistory](
	[CMCustomersPoint] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core1CMRegistration]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1CMRegistration](
	[CMCustomerID] [int] IDENTITY(1001,10000) NOT NULL,
	[CMFirstname] [varchar](50) NULL,
	[CMLastname] [varchar](50) NULL,
	[CMMiddlename] [varchar](50) NULL,
	[CMBirthdate] [varchar](50) NULL,
	[CMGender] [varchar](50) NULL,
	[CMEmail] [varchar](50) NULL,
	[CMContactNo] [varchar](50) NULL,
	[CMUsername] [varchar](50) NULL,
	[CMPassword] [varchar](50) NULL,
	[CMPoints] [int] NULL,
	[CMPicture] [image] NULL,
 CONSTRAINT [PK_Core1CMRegistration] PRIMARY KEY CLUSTERED 
(
	[CMCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1CMReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1CMReports](
	[CMCustomerID] [int] NOT NULL,
	[CMRegisteredNo] [int] NULL,
	[CMFirstname] [varchar](50) NULL,
	[CMMiddleName] [varchar](50) NOT NULL,
	[CMBirthDate] [varchar](50) NULL,
 CONSTRAINT [PK_Core1CMReports] PRIMARY KEY CLUSTERED 
(
	[CMCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1DIPAccount]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1DIPAccount](
	[DIPDriversID] [int] NULL,
	[DIPUsername] [varchar](50) NULL,
	[DIPPassword] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1DIPDriversInfo]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1DIPDriversInfo](
	[DIPDriversInfoID] [int] IDENTITY(1180000,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[BirthofDate] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[DriversLicense] [varchar](50) NULL,
	[DriversType] [varchar](50) NULL,
	[OperatorID] [varchar](50) NULL,
	[VehicleModel] [varchar](50) NULL,
	[PlateNo] [varchar](50) NULL,
	[OperatorName] [varchar](50) NULL,
	[DIPUsername] [varchar](50) NULL,
	[DIPPassword] [varchar](50) NULL,
	[Picture] [image] NULL,
	[Ratings] [varchar](50) NULL,
 CONSTRAINT [PK_Core1DIPDriversInfo] PRIMARY KEY CLUSTERED 
(
	[DIPDriversInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1DIPRegistration]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1DIPRegistration](
	[DIPDriversID] [int] IDENTITY(31001,1) NOT NULL,
	[DIPLastname] [varchar](50) NULL,
	[DIPFirstname] [varchar](50) NULL,
	[DIPMiddlename] [varchar](50) NULL,
	[DIPAddress] [varchar](50) NULL,
	[DIPBirthdate] [varchar](50) NULL,
	[DIPGender] [varchar](50) NULL,
	[DIPEmail] [varchar](50) NULL,
	[DIPContactNo] [varchar](50) NULL,
	[DIPDriversLicense] [varchar](50) NULL,
	[DIPPicture] [image] NULL,
 CONSTRAINT [PK_Core1DIPRegistration] PRIMARY KEY CLUSTERED 
(
	[DIPDriversID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1DIPReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1DIPReports](
	[DIPRegistrationNo] [int] NOT NULL,
	[DIPDate] [date] NULL,
	[DIPTime] [time](7) NULL,
	[DIPFirstname] [varchar](50) NULL,
	[DIPMiddlename] [varchar](50) NULL,
	[DIPLastname] [varchar](50) NULL,
 CONSTRAINT [PK_Core1DIPReports] PRIMARY KEY CLUSTERED 
(
	[DIPRegistrationNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1DIPViewing]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1DIPViewing](
	[DIPORNo] [int] NULL,
	[DIPDriversID] [int] NULL,
	[DIPFeedback] [varchar](50) NULL,
	[DIPRatings] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1FLmFuelCard]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1FLmFuelCard](
	[FLmFuelCardID] [int] IDENTITY(1,1323211) NOT NULL,
	[FLMLastName] [varchar](50) NULL,
	[FLMFirstName] [varchar](50) NULL,
	[FLMMiddleName] [varchar](50) NULL,
	[FLmFuelCompany] [varchar](50) NULL,
	[FLMExpireDate] [varchar](50) NULL,
 CONSTRAINT [PK_Core1FLmFuelCard] PRIMARY KEY CLUSTERED 
(
	[FLmFuelCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1FLmMonitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core1FLmMonitoring](
	[FLmFuelCard] [int] NULL,
	[FLmDriversID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core1FLmReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core1FLmReports](
	[FLmRegisterNo] [int] NOT NULL,
	[FLmDate] [date] NULL,
	[FLmTime] [time](7) NULL,
	[FLmFuelCard] [int] NULL,
 CONSTRAINT [PK_Core1FLmReports] PRIMARY KEY CLUSTERED 
(
	[FLmRegisterNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core1FmMonitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core1FmMonitoring](
	[FFmVehicleRegisteredNo] [int] NULL,
	[FFmVehicleID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core1FmReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1FmReports](
	[FFmVehicleID] [int] NULL,
	[FFmVehicleCondition] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1TDMMonitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core1TDMMonitoring](
	[TDMVehicleID] [int] NULL,
	[TDMVehicleModel] [varchar](50) NULL,
	[TDMPlateNo] [varchar](50) NULL,
	[TDMDriversID] [numeric](18, 0) IDENTITY(1180000,1) NOT NULL,
	[TDMDriversName] [nchar](50) NULL,
	[TDMDropoffLocation] [varchar](50) NULL,
	[TDMPickUpLocation] [varchar](50) NULL,
	[TDMPickUPTime] [varchar](50) NULL,
	[TDMDropOffTime] [varchar](50) NULL,
	[TDMStatus] [varchar](50) NULL,
	[TDMAvailability] [varchar](50) NULL,
	[TDMDispatch] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core1TDMReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core1TDMReports](
	[TDMVehicleID] [int] NULL,
	[TDMDriversID] [int] NULL,
	[TDMDate] [date] NULL,
	[TDMPickupTime] [time](7) NULL,
	[TDMDropoffTime] [time](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2B_BookingInfo]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2B_BookingInfo](
	[BIBookingNo] [int] IDENTITY(180100000,1) NOT NULL,
	[BIServiceType] [varchar](20) NULL,
	[BIClassType] [varchar](20) NULL,
	[CMCustomerID] [int] NULL,
	[BIDriverID] [int] NULL,
	[BIPickupLocation] [varchar](100) NULL,
	[BIPickupDate] [varchar](50) NULL,
	[BIPickupTime] [varchar](50) NULL,
	[BIDropoffLocation] [varchar](100) NULL,
	[BIPaymentType] [varchar](50) NULL,
	[BIFixedFare] [numeric](18, 0) NULL,
	[BIDate] [date] NULL,
	[BITime] [time](7) NULL,
	[BIBookingType] [varchar](50) NULL,
	[BIStatus] [varchar](50) NULL,
	[BITolls_Other] [varchar](50) NULL,
 CONSTRAINT [PK_CORE2B_BookingInfo] PRIMARY KEY CLUSTERED 
(
	[BIBookingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2B_BookingReport]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2B_BookingReport](
	[BRReportID] [int] NOT NULL,
	[BRORNo] [int] NULL,
	[BRBookingNo] [int] NULL,
	[BRStatusID] [int] NULL,
	[BRDate] [date] NULL,
	[BRTime] [time](7) NULL,
 CONSTRAINT [PK_CORE2B_TransactionHistory] PRIMARY KEY CLUSTERED 
(
	[BRReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2B_BookingType]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2B_BookingType](
	[BTBookingTypeID] [int] NULL,
	[BTBookingType] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2B_OfficialReciept]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2B_OfficialReciept](
	[ORNo] [int] NOT NULL,
	[ORPaymentTypeID] [int] NULL,
	[ORBookingNo] [int] NULL,
	[ORFixedFare] [numeric](18, 0) NULL,
	[ORPointDiscount] [numeric](18, 0) NULL,
	[ORTollsAndOthers] [numeric](18, 0) NULL,
	[ORTotal] [numeric](18, 0) NULL,
	[ORDate] [date] NULL,
	[ORTime] [time](7) NULL,
 CONSTRAINT [PK_CORE2B_OfficialReciept] PRIMARY KEY CLUSTERED 
(
	[ORNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2B_StatusType]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2B_StatusType](
	[STStatusTypeID] [int] NULL,
	[STStatusType] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2P_CashPayment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2P_CashPayment](
	[CPaymentTypeID] [int] NULL,
	[CORNo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2P_CreditPayment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2P_CreditPayment](
	[CRPaymentTypeID] [int] NOT NULL,
	[CRORNo] [int] NULL,
	[CRBankName] [varchar](50) NULL,
	[CRCardNo] [int] NULL,
 CONSTRAINT [PK_CORE2P_CreditPayment_1] PRIMARY KEY CLUSTERED 
(
	[CRPaymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2P_LoadPayment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2P_LoadPayment](
	[LLoadID] [int] NOT NULL,
	[LPaymentTypeID] [int] NULL,
	[LORNo] [int] NULL,
	[LNetworkProvider] [varchar](50) NULL,
	[LPhoneNo] [int] NULL,
 CONSTRAINT [PK_CORE2P_LoadPayment] PRIMARY KEY CLUSTERED 
(
	[LLoadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2P_PaymentHistory]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORE2P_PaymentHistory](
	[PHPaymentTypeID] [int] NULL,
	[PHORNo] [int] NULL,
	[PHDate] [date] NULL,
	[PHTime] [time](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CORE2P_PaymentType]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2P_PaymentType](
	[PTPaymentTypeID] [int] NOT NULL,
	[PTPaymentType] [varchar](20) NULL,
 CONSTRAINT [PK_CORE2P_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PTPaymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2S_SummaryReport]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2S_SummaryReport](
	[SRSummaryReportNo] [int] NOT NULL,
	[SRReportID] [int] NULL,
	[SRReportName] [varchar](50) NULL,
	[SRReportDate] [date] NULL,
 CONSTRAINT [PK_CORE2S_SummaryReport] PRIMARY KEY CLUSTERED 
(
	[SRSummaryReportNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2SM_CorporateType]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2SM_CorporateType](
	[CTCorporateTypeID] [int] NOT NULL,
	[CTTypeName] [varchar](20) NULL,
 CONSTRAINT [PK_CORE2SM_CorporateType] PRIMARY KEY CLUSTERED 
(
	[CTCorporateTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2SM_OperatorsInfo]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2SM_OperatorsInfo](
	[OIOperatorID] [int] IDENTITY(1112018000,1) NOT NULL,
	[OILname] [varchar](20) NULL,
	[OIFname] [varchar](20) NULL,
	[OIMI] [varchar](1) NULL,
	[OIMobilePhone] [nchar](12) NULL,
	[OIEmailAddress] [varchar](50) NULL,
	[OIGender] [varchar](6) NULL,
	[OIDOB] [varchar](50) NULL,
	[OICorporate] [varchar](50) NULL,
	[OIType] [varchar](50) NOT NULL,
	[OICorporateLocation] [varchar](50) NULL,
	[OICompanyName] [varchar](50) NULL,
	[OIRegistrationDate] [varchar](20) NULL,
	[OIPicture] [image] NULL,
 CONSTRAINT [PK_CORE2SM_OperatorsInfo] PRIMARY KEY CLUSTERED 
(
	[OIOperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2SM_RegistrationReport]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2SM_RegistrationReport](
	[RRegistrationNo] [int] NOT NULL,
	[R_OperatorID] [int] NULL,
	[R_VehicleID] [int] NULL,
	[R_DriverID] [int] NULL,
	[R_CorporateTypeID] [varchar](20) NULL,
	[R_RegistrationDate] [date] NULL,
 CONSTRAINT [PK_CORE2SRM_RegistrationReport] PRIMARY KEY CLUSTERED 
(
	[RRegistrationNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2SM_ServiceClass]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2SM_ServiceClass](
	[SCServiceClassID] [int] NOT NULL,
	[SCClassName] [varchar](20) NULL,
 CONSTRAINT [PK_CORE2SM_ServiceClass] PRIMARY KEY CLUSTERED 
(
	[SCServiceClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CORE2SM_VehicleInfo]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CORE2SM_VehicleInfo](
	[VIVehicleID] [int] IDENTITY(1332018000,1) NOT NULL,
	[VIServiceTypeID] [varchar](20) NULL,
	[VIServiceClass] [varchar](20) NULL,
	[VIVehicleModel] [varchar](20) NULL,
	[VIModelYear] [varchar](50) NULL,
	[VIVehicleColor] [varchar](50) NULL,
	[VIPlateNo] [varchar](50) NULL,
	[VIOperatorID] [int] NULL,
 CONSTRAINT [PK_CORE2SM_VehicleInfo_1] PRIMARY KEY CLUSTERED 
(
	[VIVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINap_payables]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINap_payables](
	[Ap_AccountID] [int] IDENTITY(1001001,1) NOT NULL,
	[Ap_Description] [varchar](50) NULL,
	[Ap_Amount] [int] NULL,
	[Ap_Date_of_pay] [date] NULL,
	[PPONO] [int] NULL,
	[Ap_Interest] [nchar](10) NULL,
 CONSTRAINT [PK_ap_payables] PRIMARY KEY CLUSTERED 
(
	[Ap_AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINap_Receivables]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINap_Receivables](
	[Ap_TransactionID] [int] NOT NULL,
	[Ap_AccountID] [varchar](50) NULL,
	[Ap_Description] [varchar](50) NULL,
	[Ap_Amount] [int] NULL,
	[Ap_Date] [date] NULL,
 CONSTRAINT [PK_Ap_Receivables] PRIMARY KEY CLUSTERED 
(
	[Ap_TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINBM_request1]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINBM_request1](
	[BM_Request_ID] [int] NULL,
	[BM_DeptName] [varchar](50) NULL,
	[BM_Amount] [int] NULL,
	[BM_Date] [date] NULL,
	[BM_Desription] [varchar](50) NULL,
	[BM_Status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINbudget_budget]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINbudget_budget](
	[BM_AccountID] [int] IDENTITY(1001001,1) NOT NULL,
	[BM_Amount] [int] NULL,
	[BM_Description] [varchar](50) NULL,
	[BM_Date] [date] NULL,
 CONSTRAINT [PK_FINBM_BUDGET1] PRIMARY KEY CLUSTERED 
(
	[BM_AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINcol_collection]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINcol_collection](
	[Collect_collectionID] [int] IDENTITY(10010001,1) NOT NULL,
	[Collect_Amount] [int] NULL,
	[Collect_Date] [date] NULL,
	[Collect_Description] [varchar](50) NULL,
	[Collect_Report] [varchar](50) NULL,
	[Collect_Department] [varchar](50) NULL,
 CONSTRAINT [PK_collect_collection1] PRIMARY KEY CLUSTERED 
(
	[Collect_collectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINcol_monitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINcol_monitoring](
	[Collect_Monitoring_ID] [int] IDENTITY(1001,1) NOT NULL,
	[Collect_PAymentID] [int] NULL,
	[Collect_TotalAmount] [int] NULL,
	[Collect_Sales] [varchar](50) NULL,
	[Collect_Date_From] [date] NULL,
	[Collect__Date_to] [date] NULL,
	[Collect_Department] [varchar](50) NULL,
 CONSTRAINT [PK_FINcol_monitoring] PRIMARY KEY CLUSTERED 
(
	[Collect_Monitoring_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINcollect_bank]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINcollect_bank](
	[Collect_Transaction_No] [int] IDENTITY(1001001,1) NOT NULL,
	[Collect_BankName] [varchar](50) NULL,
	[Collect_BankAccount] [int] NULL,
	[Collect_Amount] [int] NULL,
	[Collect_Date] [date] NULL,
	[Collect_Description] [varchar](50) NOT NULL,
	[Collect_Type] [varchar](50) NULL,
 CONSTRAINT [PK_FINcollect_bank] PRIMARY KEY CLUSTERED 
(
	[Collect_Transaction_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINdbm_deployment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINdbm_deployment](
	[D_Approval_no] [int] IDENTITY(1001001,1) NOT NULL,
	[D_Rquest_ID] [int] NULL,
	[D_Department] [varchar](50) NULL,
	[D_Amount] [int] NULL,
	[D_Date] [date] NULL,
	[D_Description] [varchar](50) NULL,
	[D_Status] [varchar](50) NULL,
	[D_Remarks] [varchar](50) NULL,
 CONSTRAINT [PK_FINdbm_deployment] PRIMARY KEY CLUSTERED 
(
	[D_Approval_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINGL_AdjustingEntry]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINGL_AdjustingEntry](
	[GL_RecordNo] [varchar](50) NULL,
	[GL_AccountID] [varchar](50) NULL,
	[GL_OpenBalance] [varchar](50) NULL,
	[GL_EndBalance] [varchar](50) NULL,
	[GL_CurrencyofAccount] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINgl_Business_Transaction]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINgl_Business_Transaction](
	[GL_account_NO] [int] IDENTITY(1001001,1) NOT NULL,
	[GL_Date] [date] NULL,
	[GL_Description] [varchar](50) NULL,
	[GL_Amount] [int] NULL,
 CONSTRAINT [PK_FINgl_Business_Transaction] PRIMARY KEY CLUSTERED 
(
	[GL_account_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINGL_charts_of_account]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINGL_charts_of_account](
	[GL_AccountID] [int] NULL,
	[GL_AccountTitle] [varchar](50) NULL,
	[GL_AccountType] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINGL_ClosingEntry]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINGL_ClosingEntry](
	[Reports] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINGL_financialStatement]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINGL_financialStatement](
	[RecordnO] [nchar](10) NULL,
	[AccountID] [nchar](10) NULL,
	[Statement_of_Account] [nchar](10) NULL,
	[Balance_Sheet] [nchar](10) NULL,
	[Trial_Balance] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FINgl_income_Statement]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINgl_income_Statement](
	[GL_Account_No] [int] IDENTITY(1001001,1) NOT NULL,
	[GL_Account_Name] [varchar](50) NULL,
	[GL_Debit] [int] NULL,
	[GL_Credit] [int] NULL,
 CONSTRAINT [PK_FINgl_income_Statement] PRIMARY KEY CLUSTERED 
(
	[GL_Account_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINgl_Trial_Balance]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINgl_Trial_Balance](
	[GL_Year] [date] NULL,
	[GL_Account_No] [int] IDENTITY(1001001,1) NOT NULL,
	[GL_Debit] [int] NULL,
	[GL_Account_Name] [varchar](50) NULL,
	[GL_Month] [date] NULL,
	[GL_Credit] [int] NULL,
 CONSTRAINT [PK_FINgl_Trial_Balance] PRIMARY KEY CLUSTERED 
(
	[GL_Account_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINjournal_Entry]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINjournal_Entry](
	[GL_Account_No] [int] IDENTITY(1001001,1) NOT NULL,
	[GL_account_Name] [varchar](50) NULL,
	[GL_Description] [varchar](50) NULL,
	[GL_Amount] [int] NULL,
	[GL_Debit] [int] NULL,
	[GL_Credit] [int] NULL,
	[GL_Account_Type] [varchar](50) NULL,
	[GL_Date] [date] NULL,
 CONSTRAINT [PK_FINjournal_Entry] PRIMARY KEY CLUSTERED 
(
	[GL_Account_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINMBUDGET_MONITORING]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINMBUDGET_MONITORING](
	[BUDGET_Request_No] [int] IDENTITY(1001001,1) NOT NULL,
	[BUDGET_RequestID] [int] NULL,
	[BUDGET_Department] [varchar](50) NULL,
	[BUDGET_Amount] [int] NULL,
	[BUDGET_Remarks] [varchar](50) NULL,
	[BUDGET_Date] [date] NULL,
	[BUDGET_Description] [varchar](50) NULL,
	[BUDGET_Status] [varchar](50) NULL,
 CONSTRAINT [PK_BUDGET_REQUEST2] PRIMARY KEY CLUSTERED 
(
	[BUDGET_Request_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrabLogin]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrabLogin](
	[id] [int] IDENTITY(101001,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[user_level] [varchar](50) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APApplicantSchedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APApplicantSchedule](
	[APExamSchedID] [int] NOT NULL,
	[APDate] [date] NULL,
	[APTimeStart] [varchar](10) NULL,
	[APTimeEnd] [varchar](10) NULL,
 CONSTRAINT [PK_HR1APApplicantSchedule] PRIMARY KEY CLUSTERED 
(
	[APExamSchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APArchiving]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APArchiving](
	[APCellphoneNo] [nvarchar](50) NOT NULL,
	[APTypeAMessage] [varchar](50) NULL,
 CONSTRAINT [PK_HR1APArchiving] PRIMARY KEY CLUSTERED 
(
	[APCellphoneNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APExam]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APExam](
	[APExamNo] [int] NOT NULL,
	[APJobPosition] [varchar](20) NULL,
	[APNoofItems] [int] NULL,
	[APResult] [varchar](10) NULL,
 CONSTRAINT [PK_HR1APExam] PRIMARY KEY CLUSTERED 
(
	[APExamNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APExaminee]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR1APExaminee](
	[APExamineeNo] [int] NOT NULL,
	[APExamSchedID] [int] NULL,
	[RecApplicantNo] [int] NULL,
 CONSTRAINT [PK_HR1APExaminees] PRIMARY KEY CLUSTERED 
(
	[APExamineeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR1APInterviewResult]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APInterviewResult](
	[APResultCode] [int] NOT NULL,
	[APResults] [varchar](50) NULL,
 CONSTRAINT [PK_HR1APInterviewResult] PRIMARY KEY CLUSTERED 
(
	[APResultCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APInterviewSchedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APInterviewSchedule](
	[APInterviewSchedID] [int] NOT NULL,
	[APExamineeNo] [int] NULL,
	[APDate] [date] NULL,
	[APTime] [time](7) NULL,
	[APTypesofInterview] [varchar](50) NULL,
 CONSTRAINT [PK_HR1APInterviewSchedule] PRIMARY KEY CLUSTERED 
(
	[APInterviewSchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APJobOffer]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APJobOffer](
	[APResultCode] [int] NULL,
	[APApplicableJob] [varchar](50) NULL,
	[APApproval] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APRequirements]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APRequirements](
	[APExamineeNo] [int] NOT NULL,
	[APDesiredPosition] [varchar](50) NULL,
	[APTypesofRequirements] [varchar](50) NULL,
 CONSTRAINT [PK_HR1APRequirements] PRIMARY KEY CLUSTERED 
(
	[APExamineeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1APSchedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1APSchedule](
	[APInterviewSchedID] [int] NOT NULL,
	[APInterviewTitle] [varchar](10) NULL,
	[APDate] [date] NULL,
	[APTime] [varchar](10) NULL,
	[APTypesofInterview] [varchar](10) NULL,
 CONSTRAINT [PK_HR1APSchedule] PRIMARY KEY CLUSTERED 
(
	[APInterviewSchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1NHDeployment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1NHDeployment](
	[NHEmpID] [int] NULL,
	[NHEmployeeName] [varchar](25) NULL,
	[NHStatus] [varchar](20) NULL,
	[NHDepartment] [varchar](30) NULL,
	[NHPosition] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1NHEmployeeTbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1NHEmployeeTbl](
	[EmpId] [int] NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_HR1NHEmployeeTbl] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1NHOrientation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1NHOrientation](
	[NHOrientID] [varchar](10) NULL,
	[NHEmployeeName] [varchar](25) NULL,
	[NHTime] [varchar](10) NULL,
	[NHDate] [date] NULL,
	[NHVenue] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1PMEvaluation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1PMEvaluation](
	[PMEvaluationID] [int] NOT NULL,
	[PMEmployee] [varchar](30) NULL,
	[PMPerformanceRating] [varchar](3) NULL,
	[PMSelfEvaluation] [varchar](50) NULL,
	[PMCoWorkerEvaluation] [varchar](50) NULL,
	[PMSuperiorEvaluation] [varchar](50) NULL,
	[PMTotalAverage] [varchar](3) NULL,
	[PMDepartment] [varchar](20) NULL,
	[PMDate] [date] NULL,
 CONSTRAINT [PK_HR1PMEvaluation] PRIMARY KEY CLUSTERED 
(
	[PMEvaluationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileBasicInfo]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileBasicInfo](
	[RecProfileNo] [int] NOT NULL,
	[RecLastname] [varchar](20) NULL,
	[RecFirstName] [varchar](20) NULL,
	[RecMiddlename] [varchar](20) NULL,
	[RecBirthdate] [date] NULL,
	[RecGender] [varchar](10) NULL,
	[RecContactNo] [nvarchar](50) NULL,
	[RecEmail] [varchar](30) NULL,
	[RecAddress] [varchar](50) NULL,
	[RecStatus] [varchar](20) NULL,
	[RecReligion] [varchar](20) NULL,
	[RecPicture] [image] NULL,
 CONSTRAINT [PK_HR1RecApplicantProfileBasicInfo] PRIMARY KEY CLUSTERED 
(
	[RecProfileNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileCharacterReference]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileCharacterReference](
	[RecProfileNo] [int] NULL,
	[RecName] [varchar](25) NULL,
	[RecContactNo] [nvarchar](50) NULL,
	[RecRelation] [varchar](20) NULL,
	[RecAddress] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileEducationalBackground]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileEducationalBackground](
	[RecProfileNo] [int] NULL,
	[RecLevel] [varchar](10) NULL,
	[RecSchool] [varchar](25) NULL,
	[RecYearGraduate] [int] NULL,
	[RecSchoolAddress] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileFamilyMember]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileFamilyMember](
	[RecProfileNo] [int] NULL,
	[RecFathersName] [varchar](25) NULL,
	[RecOccupation] [varchar](25) NULL,
	[RecContactNo] [nvarchar](50) NULL,
	[RecAddress] [varchar](50) NULL,
	[RecMothersName] [varchar](25) NULL,
	[RecOccupation1] [varchar](25) NULL,
	[RecContactNo1] [nvarchar](50) NULL,
	[RecAddress1] [varchar](50) NULL,
	[RecChildName] [varchar](20) NULL,
	[RecAge] [int] NULL,
	[RecGender] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileSpouse]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileSpouse](
	[RecProfileNo] [int] NULL,
	[RecName] [varchar](25) NULL,
	[RecAge] [int] NULL,
	[RecBirthdate] [date] NULL,
	[RecYearsMarried] [varchar](20) NULL,
	[RecOccupation] [varchar](20) NULL,
	[RecAddress] [varchar](50) NULL,
	[RecNoofchild] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantProfileWorkExperience]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantProfileWorkExperience](
	[RecProfileNo] [int] NULL,
	[RecCompanyName] [varchar](25) NULL,
	[RecPosition] [varchar](20) NULL,
	[RecDateHired] [date] NULL,
	[RecDateLeave] [date] NULL,
	[RecReasonofLeave] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecApplicantRegistration]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecApplicantRegistration](
	[RecApplicantNo] [int] NOT NULL,
	[RecProfileID] [int] NULL,
	[RecName] [varchar](50) NULL,
	[RecDateApply] [date] NULL,
	[RecTimeApply] [varchar](10) NULL,
	[RecPositionDesired] [varchar](50) NULL,
 CONSTRAINT [PK_HR1RecApplicantRegistration] PRIMARY KEY CLUSTERED 
(
	[RecApplicantNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecExaminer]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecExaminer](
	[RecExaminerID] [int] NOT NULL,
	[RecExaminerName] [varchar](30) NULL,
	[RecDateofExam] [date] NULL,
	[RecTimeStarted] [varchar](10) NULL,
	[RecTimeEnded] [varchar](10) NULL,
	[RecPlaceLocated] [varchar](30) NULL,
 CONSTRAINT [PK_HR1RecExaminer] PRIMARY KEY CLUSTERED 
(
	[RecExaminerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecInterviewer]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecInterviewer](
	[RecInterviewerID] [int] NOT NULL,
	[RecInterviewerName] [varchar](20) NULL,
	[RecDateInterviewed] [date] NULL,
	[RecTimeInterviewed] [varchar](10) NULL,
	[RecLocation] [varchar](30) NULL,
 CONSTRAINT [PK_HR1RecManagementofApplication] PRIMARY KEY CLUSTERED 
(
	[RecInterviewerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecJobPosting]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1RecJobPosting](
	[RecOnlinePosting] [varchar](50) NULL,
	[RecManual] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR1RecJobVacancy]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR1RecJobVacancy](
	[CHCJob ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR1SRAwards]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR1SRAwards](
	[SRAwardID] [int] NULL,
	[SRAwardee] [varchar](50) NULL,
	[SRPerformanceAwards] [varchar](50) NULL,
	[SRAttendanceAwards] [varchar](50) NULL,
	[SRRetirementAwards] [varchar](50) NULL,
	[SRTeamRecognitionAwards] [varchar](50) NULL,
	[SRStatus] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_CM_CompetencyEvaluation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_CM_CompetencyEvaluation](
	[CM_EvaluationID] [int] NULL,
	[CM_Grading] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_CM_CompetencyProfile]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_CM_CompetencyProfile](
	[CM_CPID] [int] NULL,
	[CM_Knowledge] [varchar](50) NULL,
	[CM_Experience] [varchar](50) NULL,
	[CM_PersonalQualities] [varchar](50) NULL,
	[CM_Behaviors] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_CM_JobQualification]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_CM_JobQualification](
	[CM_JobID] [int] NULL,
	[CM_Degree] [varchar](50) NULL,
	[CM_ClassStarted] [varchar](50) NULL,
	[CM_YearofPass] [varchar](50) NULL,
	[CM_Description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_CM_LearningManagement']    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_CM_LearningManagement'](
	[empID] [int] NULL,
	[LM_LearningResultID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_CM_SuggestforPromotion]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_CM_SuggestforPromotion](
	[CM_SuggestionID] [int] NULL,
	[empID] [int] NULL,
	[DepartmentID] [int] NULL,
	[Position] [varchar](50) NULL,
	[CM_Date] [date] NULL,
	[CM_Time] [time](7) NULL,
	[PerformanceID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_CM_TrainingManagement]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_CM_TrainingManagement](
	[CM_TrainingID] [int] NULL,
	[EmpID] [int] NULL,
	[CM_TrainingResult] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_ESS_LearningRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_ESS_LearningRequest](
	[ESS_LearningID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_ESS_Leave]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_ESS_Leave](
	[ESS_LeaveID] [int] IDENTITY(1,1) NOT NULL,
	[ESS_EmpID] [int] NULL,
	[ESS_DateStart] [date] NULL,
	[ESS_DateEnd] [date] NULL,
	[ESS_Reason] [varchar](max) NULL,
	[ESS_Status] [varchar](50) NULL,
	[ESS_LeaveType] [varchar](50) NULL,
	[ESS_NoOfDays] [varchar](50) NULL,
	[ESS_DateofRequest] [varchar](50) NULL,
 CONSTRAINT [PK_HR2_ESS_Leave] PRIMARY KEY CLUSTERED 
(
	[ESS_LeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_ESS_Schedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_ESS_Schedule](
	[ESS_SchedID] [int] NULL,
	[ESS_DateStart] [date] NULL,
	[ESS_DateEnd] [date] NULL,
	[ESS_TimeIn] [time](7) NULL,
	[ESS_TimeOut] [time](7) NULL,
	[ESS_Reason] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_ESS_TrainingRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_ESS_TrainingRequest](
	[TM_RequestID] [int] NULL,
	[TM_TrainingNo] [varchar](50) NULL,
	[TM_ModuleType] [varchar](50) NULL,
	[TM_NoofTrainees] [int] NULL,
	[TM_DateofRequest] [date] NULL,
	[TM_Duration] [varchar](50) NULL,
	[TM_DateStart] [varchar](50) NULL,
	[TM_DateEnd] [varchar](50) NULL,
	[TM_FacilityName] [varchar](50) NULL,
	[TM_Budget] [varchar](50) NULL,
	[TM_Objectives] [varchar](50) NULL,
	[TM_RequestStatus] [varchar](50) NULL,
	[TM_List] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_ESS-Emp]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_ESS-Emp](
	[ESS_ESSID] [int] NULL,
	[empID] [int] NULL,
	[DepartmentID] [int] NULL,
	[FullName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_LM_Exam]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_LM_Exam](
	[LM_ExamID] [int] IDENTITY(10500001,1) NOT NULL,
	[LM_JobPosition] [varchar](50) NULL,
	[LM_ExamTitle] [varchar](50) NULL,
	[LM_NoofItems] [varchar](50) NULL,
	[LM_File] [varchar](50) NULL,
 CONSTRAINT [PK_HR2_LM_Exam] PRIMARY KEY CLUSTERED 
(
	[LM_ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_LM_ExamResult]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_LM_ExamResult](
	[LM_LearnResultID] [int] NULL,
	[empID] [int] NULL,
	[LM_Result] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_LM_LearningModule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_LM_LearningModule](
	[LM_LearningID] [int] IDENTITY(10060001,1) NOT NULL,
	[LM_EmpID] [int] NULL,
	[LM_ModuleType] [varchar](50) NULL,
	[LM_Description] [varchar](50) NULL,
 CONSTRAINT [PK_HR2_LM_LearningModule] PRIMARY KEY CLUSTERED 
(
	[LM_LearningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_LM_LearnSchedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_LM_LearnSchedule](
	[LM_SchedID] [int] IDENTITY(10700001,1) NOT NULL,
	[LM_DateStart] [date] NULL,
	[LM_DateEnd] [date] NULL,
	[LM_StartTime] [time](7) NULL,
	[LM_EndTime] [time](7) NULL,
 CONSTRAINT [PK_HR2_LM_LearnSchedule] PRIMARY KEY CLUSTERED 
(
	[LM_SchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_LM-LearnResult]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_LM-LearnResult](
	[ExamineeNo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_SP_EmpResult]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_SP_EmpResult](
	[SP_empID] [int] NULL,
	[Date] [date] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[SuccessionCriteria] [varchar](50) NULL,
	[SuccessGrade] [varchar](50) NULL,
	[Result] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_SP_Orgarationalchart]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_SP_Orgarationalchart](
	[empID] [int] NULL,
	[JobDuties] [varchar](50) NULL,
	[CM_CPID] [int] NULL,
	[Position] [varchar](50) NULL,
	[Rating] [varchar](50) NULL,
	[EmpImg] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_TM_Reports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_TM_Reports](
	[TM_ReportID] [int] IDENTITY(10080001,1) NOT NULL,
	[TM_TraineeID] [int] NULL,
	[TM_RequestID] [int] NULL,
	[TM_ModuleID] [int] NULL,
	[TM_TrainSchedID] [int] NULL,
	[TM_Result] [int] NULL,
 CONSTRAINT [PK_HR2_TM_Reports] PRIMARY KEY CLUSTERED 
(
	[TM_ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_TM_TrainingModule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_TM_TrainingModule](
	[imgID] [int] IDENTITY(1,1) NOT NULL,
	[img] [image] NULL,
 CONSTRAINT [PK_HR2_TM_TrainingModule] PRIMARY KEY CLUSTERED 
(
	[imgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_TM_TrainingRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_TM_TrainingRequest](
	[TM_RequestID] [int] IDENTITY(10010001,1) NOT NULL,
	[TM_TrainingNo] [int] NULL,
	[TM_Title] [varchar](50) NULL,
	[TM_ModuleType] [varchar](50) NULL,
	[TM_NoofTrainees] [int] NULL,
	[TM_List] [varchar](50) NULL,
	[TM_DateofRequest] [date] NULL,
	[TM_Department] [varchar](50) NULL,
	[TM_TimeStart] [varchar](50) NULL,
	[TM_Duration] [varchar](50) NULL,
	[TM_DateStart] [varchar](50) NULL,
	[TM_DateEnd] [varchar](50) NULL,
	[TM_FacilityName] [varchar](50) NULL,
	[TM_Budget] [int] NULL,
	[TM_RequestStatus] [varchar](50) NULL,
 CONSTRAINT [PK_HR2_TM_TrainingRequest] PRIMARY KEY CLUSTERED 
(
	[TM_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR2_TM_TrainingResult]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR2_TM_TrainingResult](
	[TM_TrainSchedID] [int] IDENTITY(10300001,1) NOT NULL,
	[TM_FacilityID] [int] NULL,
	[TM_DateStart] [date] NULL,
	[TM_DateEnd] [date] NULL,
 CONSTRAINT [PK_HR2_TM_TrainingSchedule] PRIMARY KEY CLUSTERED 
(
	[TM_TrainSchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR2_TM_TrainingSchedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR2_TM_TrainingSchedule](
	[TM_ResultID] [int] IDENTITY(100101,1) NOT NULL,
	[TM_TrainNo] [int] NULL,
	[TM_Title] [varchar](50) NULL,
	[TM_NoofTrainees] [varchar](50) NULL,
	[TM_TimeStart] [varchar](50) NULL,
	[TM_Duration] [varchar](50) NULL,
	[TM_List] [varchar](50) NULL,
 CONSTRAINT [PK_HR2_TM_TrainingSchedule_1] PRIMARY KEY CLUSTERED 
(
	[TM_ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3CClaim]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3CClaim](
	[CRClaimID] [int] IDENTITY(10001,1) NOT NULL,
	[CREmpID] [int] NULL,
	[CRAwardID] [int] NULL,
	[CRClaimStatus] [varchar](50) NULL,
	[CRClaimType] [varchar](50) NULL,
	[CRDateSubmitted] [varchar](50) NULL,
 CONSTRAINT [PK_HR3CREmployeeClaim] PRIMARY KEY CLUSTERED 
(
	[CRClaimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3CRReimbursementRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3CRReimbursementRequest](
	[CRReimbursementID] [int] IDENTITY(100001,1) NOT NULL,
	[CRClaimID] [int] NULL,
	[CREmpID] [int] NULL,
	[CRAmount] [int] NULL,
	[CRExpenseDate] [varchar](50) NULL,
	[CRDateSumitted] [varchar](50) NULL,
	[CROfficialReceipt] [image] NULL,
	[CRReimbursementStatus] [varchar](50) NULL,
 CONSTRAINT [PK_HR3CRReimbursementRequest1] PRIMARY KEY CLUSTERED 
(
	[CRReimbursementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3LMLeaveRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3LMLeaveRequest](
	[ID] [int] IDENTITY(10090,10) NOT NULL,
	[Leave_Type] [varchar](50) NULL,
	[DateOfRequest] [varchar](50) NULL,
	[TimeOfRequest] [varchar](50) NULL,
	[Reason] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[DateStart] [varchar](50) NULL,
	[DateEnd] [varchar](50) NULL,
 CONSTRAINT [PK_HR3LMLeaveRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3SAS_Schedule]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3SAS_Schedule](
	[SASScheduleID] [varchar](50) NULL,
	[SASScheduleDay] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3SAS_ShiftType]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3SAS_ShiftType](
	[SASShiftID] [varchar](50) NULL,
	[SASTimeIn] [varchar](50) NULL,
	[SASTimeOut] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3SSShiftandSchedule1]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3SSShiftandSchedule1](
	[SSSchedID] [int] IDENTITY(101,1) NOT NULL,
	[EmpId] [int] NULL,
	[SSShiftName] [varchar](50) NULL,
	[SSDateStart] [varchar](50) NULL,
	[SSDateEnd] [varchar](50) NULL,
	[SSStartTime] [varchar](50) NULL,
	[SSEndTime] [varchar](50) NULL,
	[EssLoginTime] [varchar](50) NULL,
	[EssLogOUT] [varchar](50) NULL,
	[SSScheduleType] [varchar](50) NULL,
	[SSSday] [varchar](50) NULL,
 CONSTRAINT [PK_HR3SSShiftandSchedule1] PRIMARY KEY CLUSTERED 
(
	[SSSchedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3TAAttendance]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR3TAAttendance](
	[TAAttendanceID] [int] IDENTITY(1001,1) NOT NULL,
	[TAEmpID] [int] NULL,
	[TASchedID] [int] NULL,
	[TADate] [date] NULL,
	[TAOvertime] [varchar](50) NULL,
	[TAUndertime] [varchar](50) NULL,
	[TABreaktimein] [varchar](50) NULL,
	[TABreaktimeout] [varchar](50) NULL,
 CONSTRAINT [PK_HR3TAAttendance] PRIMARY KEY CLUSTERED 
(
	[TAAttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR3TSMAttendanceRecord]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR3TSMAttendanceRecord](
	[TSMAttendaceRecID] [int] IDENTITY(10001,1) NOT NULL,
	[TSMEmpID] [int] NULL,
	[TSMTotalUndertime] [int] NULL,
	[TSMTotalAbsent] [int] NULL,
	[TSMTotalOvertime] [int] NULL,
	[TSMTotalPresent] [int] NULL,
	[TSMTotalLate] [int] NULL,
	[TSMTotalHoliday] [int] NULL,
	[TSMTotalLeave] [int] NULL,
 CONSTRAINT [PK_HR3TSMAttendanceRecord] PRIMARY KEY CLUSTERED 
(
	[TSMAttendaceRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR4CHCApproval]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4CHCApproval](
	[ApprovalID] [numeric](18, 0) IDENTITY(2100,1) NOT NULL,
	[Department] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_HR4CHCApproval] PRIMARY KEY CLUSTERED 
(
	[ApprovalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR4CHCEmployee_Record]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4CHCEmployee_Record](
	[CHCEmp_ID] [nvarchar](50) NOT NULL,
	[Job_ID] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Firstname] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contactno] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[image] [image] NULL,
	[position] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
 CONSTRAINT [PK_HR4CHCEmployee_Record] PRIMARY KEY CLUSTERED 
(
	[CHCEmp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR4CHCPostEmployment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4CHCPostEmployment](
	[CHCEmp_ID] [nvarchar](50) NOT NULL,
	[Lastname] [varchar](50) NULL,
	[Firstname] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Contactno] [nchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_HR4CHCPostEmployment] PRIMARY KEY CLUSTERED 
(
	[CHCEmp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR4CHCPreEmployment]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4CHCPreEmployment](
	[Job_ID] [numeric](18, 0) IDENTITY(10001,1) NOT NULL,
	[Jobtitle] [varchar](50) NULL,
	[no_qualified] [int] NULL,
	[Jobdescription] [varchar](50) NULL,
	[JobQualification] [varchar](50) NULL,
 CONSTRAINT [PK_HR4CHCPreEmployment] PRIMARY KEY CLUSTERED 
(
	[Job_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR4CPAJob_Evaluation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR4CPAJob_Evaluation](
	[CPA_JobID] [numeric](18, 0) NULL,
	[Basicpay] [int] NULL,
	[LeavePay] [int] NULL,
	[Overtime] [int] NULL,
	[Undertime] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR4HRA_Overview]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR4HRA_Overview](
	[HRA_Overview_ID] [numeric](18, 0) NOT NULL,
	[CHC_Job_ID] [numeric](18, 0) NOT NULL,
	[CHC_Emp_ID] [numeric](18, 0) NULL,
	[CHC_Ter_ID] [numeric](18, 0) NULL,
	[CHC_Res_ID] [numeric](18, 0) NULL,
	[Ret_ID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_HR4HRA_Overview] PRIMARY KEY CLUSTERED 
(
	[HRA_Overview_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HR4PR_Deductions]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4PR_Deductions](
	[PR_Deduct_ID] [numeric](18, 0) NOT NULL,
	[PR_Ben_ID] [numeric](18, 0) NULL,
	[PRPayID] [numeric](18, 0) NULL,
	[SSS] [int] NULL,
	[PhilHealth] [int] NULL,
	[Pagibig] [int] NULL,
	[Tax] [int] NULL,
	[Payslip] [varchar](50) NULL,
 CONSTRAINT [PK_HR4PR_Deductions] PRIMARY KEY CLUSTERED 
(
	[PR_Deduct_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR4PR_Wages]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR4PR_Wages](
	[PR_Pay_ID] [numeric](18, 0) NOT NULL,
	[PR_Timesheet_ID] [numeric](18, 0) NULL,
	[PR_Employee_Rec] [varchar](max) NULL,
	[PR_Comp_ID] [numeric](18, 0) NULL,
	[PRGross] [varchar](max) NULL,
	[PRNet] [varchar](max) NULL,
 CONSTRAINT [PK_HR4PR_Wages] PRIMARY KEY CLUSTERED 
(
	[PR_Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_AssetsK]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_AssetsK](
	[AssetNo] [int] IDENTITY(1,1) NOT NULL,
	[AssName] [varchar](50) NOT NULL,
	[Asset_Type] [varchar](50) NOT NULL,
	[AMStatus] [varchar](50) NOT NULL,
	[AMPrice] [int] NOT NULL,
	[AMLifespan] [int] NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_AssetsK] PRIMARY KEY CLUSTERED 
(
	[AssetNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_Building]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Building](
	[AMBuildingID] [int] IDENTITY(1000001,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AMLocation] [varchar](50) NOT NULL,
	[AMSquareMeter] [varchar](50) NOT NULL,
	[AMYearEstablished] [date] NOT NULL,
	[AMPicture] [image] NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_Building_1] PRIMARY KEY CLUSTERED 
(
	[AMBuildingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_EquipmentK]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_EquipmentK](
	[AMEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AMInboundNo] [int] NOT NULL,
	[AMQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_EquipmentK] PRIMARY KEY CLUSTERED 
(
	[AMEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log1AssetMgt_Facility]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Facility](
	[AMFacilityID] [int] IDENTITY(100001,1) NOT NULL,
	[AssetNo] [int] NULL,
	[AMAddress] [varchar](50) NULL,
	[AMCapacity] [varchar](50) NULL,
	[AMStatus] [varchar](50) NULL,
	[AMPicture] [image] NULL,
 CONSTRAINT [PK_Log1AssetMgt_FacilityR] PRIMARY KEY CLUSTERED 
(
	[AMFacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_Land]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Land](
	[AMLandID] [int] IDENTITY(101,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AMSquaremeter] [int] NOT NULL,
	[AMDateOwned] [date] NOT NULL,
	[AMPicture] [image] NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_Land] PRIMARY KEY CLUSTERED 
(
	[AMLandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log1AssetMgt_Liquidation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Liquidation](
	[AMValueID] [int] IDENTITY(101,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AssName] [varchar](50) NOT NULL,
	[AMPrice] [decimal](18, 2) NOT NULL,
	[AMEstimate] [int] NOT NULL,
	[AMLifespan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_Liquidation] PRIMARY KEY CLUSTERED 
(
	[AMValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_Maintenance]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Maintenance](
	[AMMaintenanceID] [int] IDENTITY(1001,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AssName] [varchar](50) NOT NULL,
	[AMDateRepair] [date] NOT NULL,
	[AMReport] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_Maintenance_1] PRIMARY KEY CLUSTERED 
(
	[AMMaintenanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_MaterialLast]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_MaterialLast](
	[AMMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[AMInboundNo] [int] NOT NULL,
	[AMQuantity] [int] NOT NULL,
	[AMType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_MaterialLast] PRIMARY KEY CLUSTERED 
(
	[AMMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_Outbound]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Outbound](
	[AMReleaseID] [int] NOT NULL,
	[AMAssetNo] [int] NULL,
	[AMDate] [date] NULL,
	[AMDescription] [varchar](100) NULL,
	[AMQuantity] [int] NULL,
	[AMAucID] [int] NULL,
 CONSTRAINT [PK_Log1AssetMgt_Outbound] PRIMARY KEY CLUSTERED 
(
	[AMReleaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1AssetMgt_Vehicle]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1AssetMgt_Vehicle](
	[AMVehicleID] [int] IDENTITY(1000001,1) NOT NULL,
	[AMTypeofVehicle] [varchar](50) NOT NULL,
	[AssetNo] [varchar](50) NOT NULL,
	[AMRegistrationDate] [date] NOT NULL,
	[AMRegistrationExpDate] [date] NOT NULL,
	[AMCapacityofPassenger] [int] NOT NULL,
	[AMPrice] [decimal](18, 2) NOT NULL,
	[AMLifespan] [int] NOT NULL,
	[AMPicture] [image] NOT NULL,
 CONSTRAINT [PK_Log1AssetMgt_Vehicle_1] PRIMARY KEY CLUSTERED 
(
	[AMVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Procurement_Bidding]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Procurement_Bidding](
	[PProductID] [int] IDENTITY(1001,1) NOT NULL,
	[PBid_Id] [int] NOT NULL,
	[PProductPrice] [int] NOT NULL,
	[PDescription] [varchar](100) NOT NULL,
	[WHItemName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1Procurement_Bidding] PRIMARY KEY CLUSTERED 
(
	[PProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Log1Procurement_Bidding] SET (LOCK_ESCALATION = AUTO)
GO
/****** Object:  Table [dbo].[Log1Procurement_PurchaseOrder]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Procurement_PurchaseOrder](
	[PPONo] [int] NULL,
	[PRequestNo] [int] NULL,
	[PSupplierID] [int] NULL,
	[PQuantity] [int] NULL,
	[PUnitPrice] [decimal](18, 0) NULL,
	[PStatus] [varchar](50) NULL,
	[PDateofPo] [date] NULL,
	[PDeliveryDate] [date] NULL,
	[PTotalPrice] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Procurement_Winners]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log1Procurement_Winners](
	[PWinnersID] [int] IDENTITY(1001,1) NOT NULL,
	[PProductID] [int] NOT NULL,
 CONSTRAINT [PK_Log1Procurement_Winners] PRIMARY KEY CLUSTERED 
(
	[PWinnersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log1ProjectMgt_Monitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1ProjectMgt_Monitoring](
	[PMTaskID] [int] NOT NULL,
	[PMProjectID] [int] NULL,
	[PMDateStarted] [date] NULL,
	[PMDateEded] [date] NULL,
	[PMRemarks] [varchar](100) NULL,
	[PMDuration] [varchar](100) NULL,
	[PMTask] [varchar](50) NULL,
	[PMDateofMonitoring] [varchar](50) NULL,
 CONSTRAINT [PK_Log1ProjectMgt_Monitoring] PRIMARY KEY CLUSTERED 
(
	[PMTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1ProjectMgt_Planning]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1ProjectMgt_Planning](
	[PMProjectID] [int] IDENTITY(101,1) NOT NULL,
	[PMProjectName] [varchar](50) NOT NULL,
	[PMLocation] [varchar](50) NOT NULL,
	[PMContractor] [varchar](50) NOT NULL,
	[PMScope] [varchar](200) NOT NULL,
	[PMObjective] [varchar](200) NOT NULL,
	[PMStartDate] [date] NOT NULL,
	[PMEndDate] [date] NOT NULL,
	[PMAllocationID] [int] NOT NULL,
	[PMDocumentNo] [int] NOT NULL,
	[PMStatus] [varchar](50) NULL,
 CONSTRAINT [PK_Log1ProjectMgt_Planning] PRIMARY KEY CLUSTERED 
(
	[PMProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1ProjectMgt_Reports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1ProjectMgt_Reports](
	[PMReportID] [int] NOT NULL,
	[PMDescription] [varchar](100) NULL,
 CONSTRAINT [PK_Log1ProjectMgt_Reports] PRIMARY KEY CLUSTERED 
(
	[PMReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1ProjectMgt_Resources]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1ProjectMgt_Resources](
	[PMAssetID] [int] NULL,
	[PMDescription] [varchar](100) NULL,
	[PMQuantity] [int] NULL,
	[PMDate] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_InboundInventory]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_InboundInventory](
	[WHInventoryID] [int] IDENTITY(101,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[WHItemLocation] [varchar](50) NOT NULL,
	[WHStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_InboundInventory] PRIMARY KEY CLUSTERED 
(
	[WHInventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_Item_Registration1]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_Item_Registration1](
	[WHItemCode] [int] IDENTITY(1001,1) NOT NULL,
	[WHInboundNo] [int] NOT NULL,
	[WHQuantity] [int] NOT NULL,
	[WHCategory] [varchar](50) NOT NULL,
	[WHPrice] [decimal](18, 2) NOT NULL,
	[WHItemName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_Item_Registration1] PRIMARY KEY CLUSTERED 
(
	[WHItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_ItemRelease]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_ItemRelease](
	[WHReleaseID] [int] IDENTITY(100001,1) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[WHRequestID] [int] NOT NULL,
	[WHQuantity] [int] NOT NULL,
	[WHDescription] [varchar](100) NOT NULL,
	[WHDate] [date] NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_ItemRelease] PRIMARY KEY CLUSTERED 
(
	[WHReleaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_ItemRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_ItemRequest](
	[WHRequestID] [int] IDENTITY(1001,1) NOT NULL,
	[WHDepartment] [varchar](50) NOT NULL,
	[AssetNo] [int] NOT NULL,
	[WHQuantity] [int] NOT NULL,
	[WHDescription] [varchar](100) NOT NULL,
	[WHStatus] [varchar](50) NOT NULL,
	[WHRequestor] [varchar](50) NOT NULL,
	[WHType] [varchar](50) NOT NULL,
	[WHDate] [date] NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_ItemRequest] PRIMARY KEY CLUSTERED 
(
	[WHRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_ItemReturn]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_ItemReturn](
	[WHReturnID] [int] IDENTITY(101,1) NOT NULL,
	[WHReleaseID] [int] NOT NULL,
	[AssetNo] [int] NOT NULL,
	[WHQuantity] [int] NOT NULL,
	[WHTotalPrice] [decimal](18, 0) NOT NULL,
	[WHDescription] [varchar](100) NOT NULL,
	[WHDate] [date] NOT NULL,
	[WHType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_ItemReturn] PRIMARY KEY CLUSTERED 
(
	[WHReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_Report]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_Report](
	[WHReportID] [int] IDENTITY(101,1) NOT NULL,
	[WHDescription] [varchar](500) NOT NULL,
	[WHDepartment] [varchar](50) NULL,
 CONSTRAINT [PK_Log1Warehousing_Report] PRIMARY KEY CLUSTERED 
(
	[WHReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_Requisition]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_Requisition](
	[WHRequestNo] [int] IDENTITY(1001,1) NOT NULL,
	[WHItemName] [varchar](50) NOT NULL,
	[WHQuantity] [int] NOT NULL,
	[WHDescription] [varchar](100) NOT NULL,
	[WHStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Log1Warehousing_Requisition] PRIMARY KEY CLUSTERED 
(
	[WHRequestNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log1Warehousing_StockMgt]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log1Warehousing_StockMgt](
	[WHItemCode] [int] NULL,
	[WHStatus] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2AMAuditMonitoring]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2AMAuditMonitoring](
	[Monitor_no] [numeric](18, 0) NOT NULL,
	[Code] [numeric](18, 0) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_AMAuditMonitoring] PRIMARY KEY CLUSTERED 
(
	[Monitor_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2AMDepartmentsReports]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2AMDepartmentsReports](
	[Reports_ID] [numeric](18, 0) NOT NULL,
	[Date] [date] NULL,
	[LogReportsID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_AMDepartmentsReports] PRIMARY KEY CLUSTERED 
(
	[Reports_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2AMRecommendations]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2AMRecommendations](
	[Recommendation_no] [numeric](18, 0) NOT NULL,
	[Recommendation] [varchar](50) NULL,
 CONSTRAINT [PK_AMRecommendations] PRIMARY KEY CLUSTERED 
(
	[Recommendation_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2AuditPlan_Sched]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2AuditPlan_Sched](
	[Code] [numeric](18, 0) IDENTITY(29760078,15) NOT NULL,
	[Type] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Scope] [varchar](50) NULL,
	[Priority] [varchar](50) NULL,
	[AudityBy] [varchar](50) NULL,
	[AUDPerson] [varchar](50) NULL,
	[DateStart] [varchar](50) NULL,
	[DateEnd] [varchar](50) NULL,
	[Depart] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
 CONSTRAINT [PK_Log2AuditPlan_Sched] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOG2AuditTeam]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOG2AuditTeam](
	[AudNo] [int] NOT NULL,
	[EmpId] [int] NOT NULL,
	[Image] [image] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_LOG2AuditTeam] PRIMARY KEY CLUSTERED 
(
	[AudNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2DTRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2DTRequest](
	[Document_Id] [numeric](18, 0) IDENTITY(1,100) NOT NULL,
	[Document_no] [numeric](18, 0) NULL,
	[Document_type] [varchar](50) NULL,
	[DateNeeded] [date] NULL,
	[TimeNeeded] [time](7) NULL,
	[Priority] [varchar](50) NULL,
	[RequestorNaId] [numeric](18, 0) NOT NULL,
	[Purpose] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Log2DTRequest_1] PRIMARY KEY CLUSTERED 
(
	[Document_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Log2DTRequest] SET (LOCK_ESCALATION = AUTO)
GO
/****** Object:  Table [dbo].[Log2FMDeliveried]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2FMDeliveried](
	[Delivery_no] [numeric](18, 0) NOT NULL,
	[P.O_no] [numeric](18, 0) NULL,
	[PucharsedName] [nchar](10) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Buyer_Id] [numeric](18, 0) NULL,
	[Department] [nchar](10) NULL,
 CONSTRAINT [PK_Log2FMDeliveried] PRIMARY KEY CLUSTERED 
(
	[Delivery_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2Inbound]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2Inbound](
	[Inbound_Id] [int] IDENTITY(169000,1000) NOT NULL,
	[PPONo] [int] NOT NULL,
	[PSupplierID] [int] NOT NULL,
	[QuantityReceived] [int] NULL,
	[DeliveryPartial] [int] NULL,
	[ItemBalance] [int] NULL,
 CONSTRAINT [PK_Log2Inbound] PRIMARY KEY CLUSTERED 
(
	[Inbound_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2PORTALAuctionee_Reg_Tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2PORTALAuctionee_Reg_Tbl](
	[Auc_Id] [int] NULL,
	[Org_name] [varchar](50) NULL,
	[Contact_Person] [varchar](50) NULL,
	[Contact_Nos] [int] NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[File] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2PORTALContractor_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2PORTALContractor_tbl](
	[Con_ID] [int] NULL,
	[Org name] [nvarchar](50) NULL,
	[Contact Person] [nvarchar](50) NULL,
	[Contact no] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2PORTALP.O_Tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2PORTALP.O_Tbl](
	[P.O_ID] [int] NOT NULL,
	[Req_Id] [int] NULL,
	[Item] [varchar](50) NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[AdminDMDocument_id] [int] NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
 CONSTRAINT [PK_P.O_Tbl] PRIMARY KEY CLUSTERED 
(
	[P.O_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2PORTALPost_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2PORTALPost_tbl](
	[Post_Id] [int] NOT NULL,
	[Item] [nvarchar](50) NULL,
	[price] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Quality] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Time] [nvarchar](50) NULL,
	[Auc_ID] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Post_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2PORTALprofile_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2PORTALprofile_tbl](
	[Id] [int] NOT NULL,
	[Pic] [image] NULL,
	[Bid_Id] [int] NULL,
	[Auc_Id] [int] NULL,
	[Con_Id] [int] NULL,
 CONSTRAINT [PK_PORTALprofile_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2PORTALquotation_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2PORTALquotation_tbl](
	[Bid_id] [int] NOT NULL,
	[Quote_id] [int] NOT NULL,
	[Category] [varchar](50) NULL,
	[Price] [int] NULL,
	[Item] [varchar](50) NULL,
	[Discount] [int] NULL,
	[Document_id] [int] NOT NULL,
	[Remarks] [varchar](50) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_PORTALquotation_tbl] PRIMARY KEY CLUSTERED 
(
	[Quote_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2PORTALreq_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2PORTALreq_tbl](
	[Req_id] [int] NOT NULL,
	[Emp_id] [int] NULL,
	[Dep] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
 CONSTRAINT [PK_PORTALreq_tbl] PRIMARY KEY CLUSTERED 
(
	[Req_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2PORTALSup_Reg_Tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2PORTALSup_Reg_Tbl](
	[Bid_Id] [int] NOT NULL,
	[Org_Name] [varchar](50) NULL,
	[Contact_Per] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Contact_Nos] [int] NULL,
 CONSTRAINT [PK_Sup_Reg_Tbl] PRIMARY KEY CLUSTERED 
(
	[Bid_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2VendPortalQuotation]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2VendPortalQuotation](
	[Quote_No] [int] NOT NULL,
	[Categ_Indust] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemPrice] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [varchar](50) NULL,
	[Tax] [int] NULL,
	[Posted_Date] [date] NULL,
	[ExpiresOn] [date] NULL,
	[Status] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
 CONSTRAINT [PK_Log2VendPortalQuotation] PRIMARY KEY CLUSTERED 
(
	[Quote_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2VENDPORTALreq_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2VENDPORTALreq_tbl](
	[Req_Id] [int] IDENTITY(1,12500) NOT NULL,
	[OrgName] [varchar](50) NULL,
	[Contact_Person] [varchar](50) NULL,
	[Categ_Indust] [varchar](50) NULL,
	[Contact_Num] [numeric](18, 0) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Levels] [int] NULL,
	[profile] [image] NULL,
 CONSTRAINT [PK_Log2VENDPORTALreq_tbl] PRIMARY KEY CLUSTERED 
(
	[Req_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log2VRHistory]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log2VRHistory](
	[History_no] [numeric](18, 0) NOT NULL,
	[Reserv_no] [numeric](18, 0) NULL,
	[RequestorName] [nchar](10) NULL,
	[Department] [nchar](10) NULL,
	[Purpose] [nchar](10) NULL,
	[DateNeeded] [date] NULL,
	[TimeNeeded] [date] NULL,
	[Vehicle_Id] [numeric](18, 0) NULL,
	[VehicleName] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_Log2VRHistory] PRIMARY KEY CLUSTERED 
(
	[History_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log2VRRequest]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log2VRRequest](
	[Request_no] [numeric](18, 0) IDENTITY(1001,100) NOT NULL,
	[Vehicle_Id] [numeric](18, 0) NULL,
	[VehicleType] [varchar](50) NULL,
	[RequestorName] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Purpose] [varchar](50) NULL,
	[TimeNeeded] [time](7) NULL,
	[DateNeeded] [date] NULL,
	[Status] [varchar](50) NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_Log2VRRequest] PRIMARY KEY CLUSTERED 
(
	[Request_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Request_tbl]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Request_tbl](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestorName] [varchar](50) NULL,
	[Dept] [varchar](50) NULL,
	[Purpose] [varchar](50) NULL,
	[DateNeed] [varchar](50) NULL,
	[TimeNeed] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[EmpId] [int] NOT NULL,
 CONSTRAINT [PK_Request_tbl] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[RegularBook]    Script Date: 3/25/2018 2:45:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RegularBook]
as select 
BIBookingNo,BIServiceType,BIClassType,BICustomerID,BIDriverID,BIPickupLocation,BIDropoffLocation,BIPaymentType,
BIFixedFare,BIDate,BITime,BIBookingType,BIStatus,BITolls_Other From CORE2B_BookingInfo where BIBookingType = 'Regular Booking' and BIStatus = 'Pending';


GO
ALTER TABLE [dbo].[AdminVMRegistration] ADD  CONSTRAINT [DF_AdminVMRegistration_VMStatus]  DEFAULT ('Active') FOR [VMStatus]
GO
ALTER TABLE [dbo].[HR2_TM_Reports]  WITH CHECK ADD  CONSTRAINT [FK_HR2_TM_Reports_HR2_TM_Reports3] FOREIGN KEY([TM_TrainSchedID])
REFERENCES [dbo].[HR2_TM_TrainingResult] ([TM_TrainSchedID])
GO
ALTER TABLE [dbo].[HR2_TM_Reports] CHECK CONSTRAINT [FK_HR2_TM_Reports_HR2_TM_Reports3]
GO
USE [master]
GO
ALTER DATABASE [Administrative] SET  READ_WRITE 
GO
