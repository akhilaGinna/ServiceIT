USE [master]
GO
/****** Object:  Database [ServiceITDB]    Script Date: 2020-09-26 11:42:30 PM ******/
CREATE DATABASE [ServiceITDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServiceITDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ServiceITDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ServiceITDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ServiceITDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ServiceITDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServiceITDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServiceITDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServiceITDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServiceITDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServiceITDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServiceITDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServiceITDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServiceITDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServiceITDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServiceITDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServiceITDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServiceITDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServiceITDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServiceITDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServiceITDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServiceITDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ServiceITDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServiceITDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServiceITDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServiceITDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServiceITDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServiceITDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServiceITDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServiceITDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ServiceITDB] SET  MULTI_USER 
GO
ALTER DATABASE [ServiceITDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServiceITDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServiceITDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServiceITDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServiceITDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServiceITDB', N'ON'
GO
ALTER DATABASE [ServiceITDB] SET QUERY_STORE = OFF
GO
USE [ServiceITDB]
GO
/****** Object:  Table [dbo].[tblEmployeeDetails]    Script Date: 2020-09-26 11:42:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployeeDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[DepartmentName] [nchar](100) NOT NULL,
 CONSTRAINT [PK_tblEmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTicketData]    Script Date: 2020-09-26 11:42:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTicketData](
	[RequestID] [uniqueidentifier] NOT NULL,
	[ProjectName] [varchar](max) NULL,
	[DepartmentName] [varchar](max) NULL,
	[RequestedBy] [varchar](200) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[TimeStamp] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tblTicketData] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEmployeeDetails] ON 

INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (1, N'Roma Marcell', N'Division of Telecommunications Extranet Development                                                 ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (2, N'Hugo Wess', N'Extranet Multimedia Connectivity and Security Division                                              ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (3, N'Kelvin Lahr', N'Branch of Extranet Implementation                                                                   ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (4, N'Janelle Newberg', N'Division of Telecommunications Extranet Development                                                 ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (5, N'Mellie Lombard', N'Branch of Intranet Computer Maintenance and E-Commerce PC Programming                               ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (6, N'Reita Abshire', N'Wireless Extranet Backup Team                                                                       ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (7, N'Dalila Vickrey', N'Database Programming Branch                                                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (8, N'Idella Dallman', N'Branch of Extranet Implementation                                                                   ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (9, N'Farah Eldridge', N'Hardware Backup Department                                                                          ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (10, N'Lana Montes', N'Hardware Backup Department                                                                          ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (11, N'Leola Thornburg', N'Extranet Multimedia Connectivity and Security Division                                              ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (12, N'Marcelo Paris', N'Database Programming Branch                                                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (13, N'Ione Tomlin', N'Multimedia Troubleshooting and Maintenance Team                                                     ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (14, N'Hilario Masterson', N'Multimedia Troubleshooting and Maintenance Team                                                     ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (15, N'Janice Skipper', N'Wireless Extranet Backup Team                                                                       ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (16, N'Keren Gillespi', N'Office of Statistical Data Connectivity                                                             ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (17, N'Linh Leitzel', N'Division of Telecommunications Extranet Development                                                 ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (18, N'Rosalia Ayoub', N'Division of Application Security                                                                    ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (19, N'Shawna Hood', N'Branch of Intranet Computer Maintenance and E-Commerce PC Programming                               ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (20, N'Wilfredo Stumpf', N'Network Maintenance and Multimedia Implementation Committee                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (21, N'Alexandra Brendle', N'Office of Statistical Data Connectivity                                                             ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (22, N'Luciano Riddell', N'Mainframe PC Development and Practical Source Code Acquisition Team                                 ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (23, N'Boyce Perales', N'Network Maintenance and Multimedia Implementation Committee                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (24, N'Alissa Perlman', N'Division of Telecommunications Extranet Development                                                 ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (25, N'Latoyia Kremer', N'Network Maintenance and Multimedia Implementation Committee                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (26, N'Tawna Blackmore', N'Wireless Extranet Backup Team                                                                       ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (27, N'Claudine Valderrama', N'Hardware Backup Department                                                                          ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (28, N'Katheryn Lepak', N'Network Maintenance and Multimedia Implementation Committee                                         ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (29, N'Sage Bow', N'Multimedia Troubleshooting and Maintenance Team                                                     ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (30, N'Altha Rudisill', N'Hardware Backup Department                                                                          ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (31, N'Olympia Vien', N'Division of Application Security                                                                    ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (32, N'Olene Pyron', N'PC Maintenance Department                                                                           ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (33, N'Delorse Searle', N'Extranet Multimedia Connectivity and Security Division                                              ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (34, N'Greta Quigg', N'Bureau of Business-Oriented PC Backup and Wireless Telecommunications Control                       ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (35, N'Kenneth Bowie', N'Branch of Intranet Computer Maintenance and E-Commerce PC Programming                               ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (36, N'Colton Kranz', N'Hardware Backup Department                                                                          ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (37, N'Kasie Barclay', N'Multimedia Troubleshooting and Maintenance Team                                                     ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (38, N'Thresa Levins', N'Extranet Multimedia Connectivity and Security Division                                              ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (39, N'Diego Hasbrouck', N'Software Technology and Networking Department                                                       ')
INSERT [dbo].[tblEmployeeDetails] ([ID], [EmployeeName], [DepartmentName]) VALUES (40, N'Tomoko Gale', N'Database Programming Branch                                                                         ')
SET IDENTITY_INSERT [dbo].[tblEmployeeDetails] OFF
GO
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'9242369d-2a23-46a6-bcfd-01c9b867ae67', N'Desktop app', N'PC Maintenance Department', N'Olene Pyron', N'Update RAM', CAST(N'2020-09-26T23:23:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'6ed336a7-2851-4ab0-9642-1bbb8d7e833c', N'RPA', N'Branch of Intranet Computer Maintenance and E-Commerce PC Programming', N'Shawna Hood', N'Require access for UAT Environment.', CAST(N'2020-09-26T23:20:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'8a3b2880-e021-401a-9a23-2a2aa65b420f', N'Desktop app', N'Hardware Backup Department', N'Farah Eldridge', N'Update .Net framework to 4.5.2', CAST(N'2020-09-26T23:22:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'c926a0e0-05dc-4b1d-b124-86caccff0588', N'RPA', N'Bureau of Business-Oriented PC Backup and Wireless Telecommunications Control', N'Greta Quigg', N'Requesting application access.', CAST(N'2020-09-26T23:20:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'1475d346-743f-4f09-8a33-9c123c4fe0e8', N'Hello world', N'Extranet Multimedia Connectivity and Security Division', N'Hugo Wess', N'My first ticket ', CAST(N'2020-09-26T23:22:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'35fe36ea-dbd1-4f55-a6f2-ad0d10bdb5a6', N'Mainframe', N'Office of Statistical Data Connectivity', N'Keren Gillespi', N'Need excel data for macros', CAST(N'2020-09-26T23:24:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'2efad647-bcca-4e5c-b25e-f7776f5f3392', N'RPA', N'Division of Application Security', N'Rosalia Ayoub', N'Credentials required.', CAST(N'2020-09-26T23:21:00' AS SmallDateTime))
INSERT [dbo].[tblTicketData] ([RequestID], [ProjectName], [DepartmentName], [RequestedBy], [Description], [TimeStamp]) VALUES (N'888979a0-487c-451c-9ce2-fc6675932b48', N'WebApp', N'Mainframe PC Development and Practical Source Code Acquisition Team', N'Luciano Riddell', N'Internet not working.', CAST(N'2020-09-26T23:22:00' AS SmallDateTime))
GO
USE [master]
GO
ALTER DATABASE [ServiceITDB] SET  READ_WRITE 
GO
