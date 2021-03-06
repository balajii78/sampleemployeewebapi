/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.2027)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Sample]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/15/2020 9:25:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Empid] [bigint] IDENTITY(1,1) NOT NULL,
	[AssociateID] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Emailid] [nvarchar](50) NULL,
	[EmpAddress] [nvarchar](100) NULL,
	[Gender] [nchar](1) NULL,
	[Salary] [decimal](18, 2) NULL,
	[Phone] [int] NULL,
	[Designation] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (2, N'1020', N'Sanjeevkumar', N'santoshS@rencata.com', N'Coimbatorek', N'M', CAST(35200.00 AS Decimal(18, 2)), 1234567890, N'Software engineer')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (3, N'1028', N'Santoshii', N'santoshS@rencata.com', N'Trichy', N'F', CAST(65000.00 AS Decimal(18, 2)), 1234567890, N'Tech lead')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (5, N'1033', N'Sujitha', N'sujitha@rencata.com', N'Trichy', N'F', CAST(35000.00 AS Decimal(18, 2)), 1234567890, N'Software engineer')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (6, N'1043', N'Divya', N'divya@rencata.com', N'Chennai', N'F', CAST(8000.00 AS Decimal(18, 2)), 1234567890, N'Program manager')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (7, N'1027', N'Sherley', N'sherley@rencata.com', N'Ooty', N'F', CAST(55000.00 AS Decimal(18, 2)), 1234568, N'Tech lead')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (8, N'1025', N'Fathima', N'fathima@rencata.com', N'Madurai', N'F', CAST(60000.00 AS Decimal(18, 2)), 1234568, N'Tech lead')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (9, N'1062', N'John', N'divya@rencata.com', N'Ooty', N'M', CAST(30000.00 AS Decimal(18, 2)), 1234567890, N'Software engineer')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1008, N'1087', N'Riyaaz', N'riyaaz@rencata.com', N'Chennai', N'M', CAST(10020.00 AS Decimal(18, 2)), 1234567890, N'Delivery manager')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1017, N'12222', N'Balaji', N'balajii78@yahoo.com', N'chennai', N'M', CAST(12333.00 AS Decimal(18, 2)), 1234567890, N'architect')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1055, N'1020', N'sfdfs', N'fsdf@sdfsd.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1056, N'1043', N'bcc', N'vxv@dfd.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1060, N'1020', N'fsrfwer', N'erew@serfes.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1064, N'1900', N'fsfsd', N'fssf@sfs.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1067, N'12345', N'uiuuiuyi', N'rtertre@dee.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1068, N'1111', N'alam', N'alam@alam.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1069, N'1121', N'sdfsf', N'rt@as.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1070, N'1020', N'sfsdf', N'fsdf@sdf.com', N'', N'M', NULL, NULL, N'')
INSERT [dbo].[Employees] ([Empid], [AssociateID], [Name], [Emailid], [EmpAddress], [Gender], [Salary], [Phone], [Designation]) VALUES (1071, N'123456', N'rrtyrty', N'retee@a.com', N'', N'M', NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[Employees] OFF
