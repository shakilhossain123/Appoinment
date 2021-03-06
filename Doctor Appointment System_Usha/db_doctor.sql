USE [master]
GO
/****** Object:  Database [Doctor_Appointment_System_Usha]    Script Date: 4/6/2019 8:05:57 PM ******/
CREATE DATABASE [Doctor_Appointment_System_Usha]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Doctor_Appointment_System_Usha', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Doctor_Appointment_System_Usha.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Doctor_Appointment_System_Usha_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Doctor_Appointment_System_Usha_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Doctor_Appointment_System_Usha].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ARITHABORT OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET  MULTI_USER 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Doctor_Appointment_System_Usha]
GO
/****** Object:  Table [dbo].[appointment_taker]    Script Date: 4/6/2019 8:05:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[appointment_taker](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_name] [varchar](50) NULL,
	[paitent_name] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[date] [datetime] NULL,
	[time] [varchar](50) NULL,
 CONSTRAINT [PK_appointment_taker] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 4/6/2019 8:05:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[id] [int] IDENTITY(1001,1) NOT NULL,
	[name] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[app_id] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users_list]    Script Date: 4/6/2019 8:05:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users_list](
	[id] [int] IDENTITY(5000,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[image] [varchar](500) NULL,
 CONSTRAINT [PK_users_list] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD FOREIGN KEY([app_id])
REFERENCES [dbo].[appointment_taker] ([id])
GO
USE [master]
GO
ALTER DATABASE [Doctor_Appointment_System_Usha] SET  READ_WRITE 
GO
