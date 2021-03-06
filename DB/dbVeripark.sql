USE [VeriParkDB]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 6.08.2021 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryHoliday]    Script Date: 6.08.2021 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryHoliday](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[Holiday] [date] NULL,
 CONSTRAINT [PK_CountryHoliday] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [CountryName]) VALUES (1, N'Turkey')
INSERT [dbo].[Country] ([ID], [CountryName]) VALUES (2, N'Dubai')
INSERT [dbo].[Country] ([ID], [CountryName]) VALUES (3, N'ABD')
INSERT [dbo].[Country] ([ID], [CountryName]) VALUES (4, N'England')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[CountryHoliday] ON 

INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (1, 1, CAST(N'2021-08-06' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (2, 1, CAST(N'2021-08-07' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (3, 2, CAST(N'2021-08-07' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (4, 3, CAST(N'2021-08-06' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (5, 3, CAST(N'2021-08-07' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (6, 4, CAST(N'2021-08-06' AS Date))
INSERT [dbo].[CountryHoliday] ([ID], [CountryID], [Holiday]) VALUES (7, 4, CAST(N'2021-08-07' AS Date))
SET IDENTITY_INSERT [dbo].[CountryHoliday] OFF
ALTER TABLE [dbo].[CountryHoliday]  WITH CHECK ADD  CONSTRAINT [FK_CountryHoliday_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CountryHoliday] CHECK CONSTRAINT [FK_CountryHoliday_Country]
GO
