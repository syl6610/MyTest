USE [Shayl6610]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2017/3/14 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[T_ID] [int] IDENTITY(1,1) NOT NULL,
	[T_Title] [nchar](10) NOT NULL,
	[T_Duedate] [date] NULL,
	[U_ID] [int] NULL,
	[T_Priority] [nchar](10) NULL,
	[T_Situation] [nchar](10) NULL,
	[T_Contents] [nchar](10) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/3/14 19:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_Name] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (58, N'test      ', CAST(N'2017-03-14' AS Date), 1008, N'urgent    ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1006, N'Aaron     ')
INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1007, N'Berger    ')
INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1008, N'Calvin    ')
INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1009, N'Christ    ')
INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1010, N'Evan      ')
INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1011, N'Jerry     ')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([U_ID])
REFERENCES [dbo].[Users] ([U_ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
