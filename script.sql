USE [Shayl6610]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2017/3/13 20:53:42 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 2017/3/13 20:53:42 ******/
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

INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (3, N'213123    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (5, N'dfsdfsdf  ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (6, N'123123    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (7, N'1241515135', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (8, N'232323    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (9, N'123       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (10, N'534231    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (11, N'234551    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (12, N'123123    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (13, N'3213      ', CAST(N'2017-03-08' AS Date), NULL, N'low       ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (14, N'323       ', CAST(N'2017-03-15' AS Date), NULL, N'high      ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (15, N'12323     ', CAST(N'2017-03-08' AS Date), 1006, N'low       ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (18, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (19, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (20, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (21, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (22, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (23, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (24, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (25, N'213       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (26, N'123       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (27, N'4324324   ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (28, N'234234    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (29, N'123123    ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (30, N'123       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (31, N'234       ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (32, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (33, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (34, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (35, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (36, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (37, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (38, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (39, N'.         ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (40, N'123123    ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (41, N'123123    ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (42, N'333       ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (43, N'123       ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (44, N'321       ', NULL, NULL, N'higher    ', NULL, NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (45, N'123       ', CAST(N'2017-03-01' AS Date), NULL, N'higher    ', N'Unfinished', NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (46, N'123       ', CAST(N'2017-03-07' AS Date), NULL, N'lower     ', N'Unfinished', NULL)
INSERT [dbo].[Tasks] ([T_ID], [T_Title], [T_Duedate], [U_ID], [T_Priority], [T_Situation], [T_Contents]) VALUES (47, N'123       ', CAST(N'2017-03-14' AS Date), 1006, N'higher    ', N'Unfinished', N'1231231   ')
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([U_ID], [U_Name]) VALUES (1006, N'超人        ')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([U_ID])
REFERENCES [dbo].[Users] ([U_ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
