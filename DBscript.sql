USE [master]
GO
/****** Object:  Database [btm]    Script Date: 6/2/2020 10:10:37 PM ******/
CREATE DATABASE [btm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'btm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\btm.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'btm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\btm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [btm] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [btm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [btm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [btm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [btm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [btm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [btm] SET ARITHABORT OFF 
GO
ALTER DATABASE [btm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [btm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [btm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [btm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [btm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [btm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [btm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [btm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [btm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [btm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [btm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [btm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [btm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [btm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [btm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [btm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [btm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [btm] SET RECOVERY FULL 
GO
ALTER DATABASE [btm] SET  MULTI_USER 
GO
ALTER DATABASE [btm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [btm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [btm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [btm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [btm] SET DELAYED_DURABILITY = DISABLED 
GO
USE [btm]
GO
/****** Object:  Table [dbo].[company]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[owner_email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company_workflow]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_workflow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company_id] [int] NULL,
	[workflow_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](255) NULL,
	[people] [varchar](255) NULL,
	[purpose] [varchar](255) NULL,
	[contact_logging_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact_logging]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_logging](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[company_id] [int] NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expense]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expense](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[price] [int] NOT NULL,
	[purpose] [varchar](255) NULL,
	[receipt_file_url] [varchar](255) NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[file_attached]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[file_attached](
	[url] [varchar](255) NOT NULL,
	[task_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[flight_booking]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[flight_booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arrival] [varchar](255) NULL,
	[date] [date] NULL,
	[departure] [varchar](255) NULL,
	[price] [int] NOT NULL,
	[reservation_code] [varchar](255) NULL,
	[ticket_file_url] [varchar](255) NULL,
	[time] [time](7) NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hotel_booking]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hotel_booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[hotel_name] [varchar](255) NULL,
	[price] [int] NOT NULL,
	[receipt_file_url] [varchar](255) NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[meeting_booking]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[meeting_booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[location] [varchar](255) NULL,
	[price] [int] NOT NULL,
	[ticket_file_url] [varchar](255) NULL,
	[time] [time](7) NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[task]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[task](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](255) NULL,
	[step_id] [int] NULL,
	[travel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[travel]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[travel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[location] [varchar](255) NULL,
	[purpose] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[company_id] [int] NULL,
	[employee_username] [varchar](255) NULL,
	[workflow_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workflow]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workflow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workflow_step]    Script Date: 6/2/2020 10:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workflow_step](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[step] [varchar](255) NULL,
	[step_order] [int] NOT NULL,
	[workflow_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[company] ON 

INSERT [dbo].[company] ([id], [name], [owner_email]) VALUES (1, N'FUT', N'truongvan@gmail.com')
SET IDENTITY_INSERT [dbo].[company] OFF
SET IDENTITY_INSERT [dbo].[workflow] ON 

INSERT [dbo].[workflow] ([id], [name]) VALUES (1, N'onsite')
SET IDENTITY_INSERT [dbo].[workflow] OFF
SET IDENTITY_INSERT [dbo].[workflow_step] ON 

INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (1, N'checking', 1, 1)
INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (2, N'bug', 2, 1)
INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (3, N'root cause', 3, 1)
INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (4, N'solution', 4, 1)
INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (5, N'testing', 5, 1)
INSERT [dbo].[workflow_step] ([id], [step], [step_order], [workflow_id]) VALUES (6, N'finish', 6, 1)
SET IDENTITY_INSERT [dbo].[workflow_step] OFF
ALTER TABLE [dbo].[company_workflow]  WITH CHECK ADD  CONSTRAINT [FK5co9r4e1d1c1c83r1j09tdgrt] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[company_workflow] CHECK CONSTRAINT [FK5co9r4e1d1c1c83r1j09tdgrt]
GO
ALTER TABLE [dbo].[company_workflow]  WITH CHECK ADD  CONSTRAINT [FKb12remx8205bhnwmm26q3oblt] FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([id])
GO
ALTER TABLE [dbo].[company_workflow] CHECK CONSTRAINT [FKb12remx8205bhnwmm26q3oblt]
GO
ALTER TABLE [dbo].[contact]  WITH CHECK ADD  CONSTRAINT [FKjc4nypxg80yttivyg3fnir2t9] FOREIGN KEY([contact_logging_id])
REFERENCES [dbo].[contact_logging] ([id])
GO
ALTER TABLE [dbo].[contact] CHECK CONSTRAINT [FKjc4nypxg80yttivyg3fnir2t9]
GO
ALTER TABLE [dbo].[contact_logging]  WITH CHECK ADD  CONSTRAINT [FKmh9bpvkk4pavl3fpocv0kkow1] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[contact_logging] CHECK CONSTRAINT [FKmh9bpvkk4pavl3fpocv0kkow1]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK3046kvjyysq288vy3lsbtc9nw] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK3046kvjyysq288vy3lsbtc9nw]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK5v50ed2bjh60n1gc7ifuxmgf4] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK5v50ed2bjh60n1gc7ifuxmgf4]
GO
ALTER TABLE [dbo].[expense]  WITH CHECK ADD  CONSTRAINT [FK7yj1c3svx3l73ey15tnnwl82] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[expense] CHECK CONSTRAINT [FK7yj1c3svx3l73ey15tnnwl82]
GO
ALTER TABLE [dbo].[file_attached]  WITH CHECK ADD  CONSTRAINT [FKjt6eut8upeuypdxbpt706xrdu] FOREIGN KEY([task_id])
REFERENCES [dbo].[task] ([id])
GO
ALTER TABLE [dbo].[file_attached] CHECK CONSTRAINT [FKjt6eut8upeuypdxbpt706xrdu]
GO
ALTER TABLE [dbo].[flight_booking]  WITH CHECK ADD  CONSTRAINT [FK5ay1w8be0gc4mu9r5i0vfe1og] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[flight_booking] CHECK CONSTRAINT [FK5ay1w8be0gc4mu9r5i0vfe1og]
GO
ALTER TABLE [dbo].[hotel_booking]  WITH CHECK ADD  CONSTRAINT [FK9eyggdnvr51j9uh0ncfy2tvjj] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[hotel_booking] CHECK CONSTRAINT [FK9eyggdnvr51j9uh0ncfy2tvjj]
GO
ALTER TABLE [dbo].[meeting_booking]  WITH CHECK ADD  CONSTRAINT [FK6g2ndb9s8ujt7uqn48e9amtjd] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[meeting_booking] CHECK CONSTRAINT [FK6g2ndb9s8ujt7uqn48e9amtjd]
GO
ALTER TABLE [dbo].[task]  WITH CHECK ADD  CONSTRAINT [FKcvisr7dbvkbe674qnti1rrdxp] FOREIGN KEY([travel_id])
REFERENCES [dbo].[travel] ([id])
GO
ALTER TABLE [dbo].[task] CHECK CONSTRAINT [FKcvisr7dbvkbe674qnti1rrdxp]
GO
ALTER TABLE [dbo].[task]  WITH CHECK ADD  CONSTRAINT [FKmbb20rcvc7mrjbhhxro9oypyt] FOREIGN KEY([step_id])
REFERENCES [dbo].[workflow_step] ([id])
GO
ALTER TABLE [dbo].[task] CHECK CONSTRAINT [FKmbb20rcvc7mrjbhhxro9oypyt]
GO
ALTER TABLE [dbo].[travel]  WITH CHECK ADD  CONSTRAINT [FKj9iyi7t4f5i7xdh5c60tms9vv] FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([id])
GO
ALTER TABLE [dbo].[travel] CHECK CONSTRAINT [FKj9iyi7t4f5i7xdh5c60tms9vv]
GO
ALTER TABLE [dbo].[travel]  WITH CHECK ADD  CONSTRAINT [FKokvjolix4tn7gq0h4q4h7s3jy] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[travel] CHECK CONSTRAINT [FKokvjolix4tn7gq0h4q4h7s3jy]
GO
ALTER TABLE [dbo].[travel]  WITH CHECK ADD  CONSTRAINT [FKrp4x9b2y5kbia1hkjv9vgivgv] FOREIGN KEY([employee_username])
REFERENCES [dbo].[employee] ([username])
GO
ALTER TABLE [dbo].[travel] CHECK CONSTRAINT [FKrp4x9b2y5kbia1hkjv9vgivgv]
GO
ALTER TABLE [dbo].[workflow_step]  WITH CHECK ADD  CONSTRAINT [FKrs03p6vbs0o5uoxubb0to3dwv] FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([id])
GO
ALTER TABLE [dbo].[workflow_step] CHECK CONSTRAINT [FKrs03p6vbs0o5uoxubb0to3dwv]
GO
USE [master]
GO
ALTER DATABASE [btm] SET  READ_WRITE 
GO
