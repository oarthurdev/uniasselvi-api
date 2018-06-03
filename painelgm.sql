USE [PainelGMGothicPTByArthur]
GO
/****** Object:  Table [dbo].[users]    Script Date: 06/02/2018 23:41:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[nick] [varchar](50) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
	[permissao] [int] NOT NULL,
	[data] [date] NOT NULL,
	[token] [varchar](50) NOT NULL,
	[activated] [bit] NOT NULL,
	[cadPor] [varchar](50) NOT NULL,
	[photo] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor], [photo]) VALUES (45, N'escanor', N'78124770', N'Escanor', N'Arthur', N'Supervisor', 3, CAST(0x4E3E0B00 AS Date), N'0', 1, N'deku', N'fd7a52a4f43725737dd263857138bc90-images.jpg')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor], [photo]) VALUES (47, N'gmreaper', N'78124770', N'|GM|Reaper', N'Arthur', N'Game Master', 3, CAST(0x4E3E0B00 AS Date), N'0', 1, N'escanor', N'bb41e8a9a8f9514b74307347905fc761-Grim-Reaper-PNG-HD.png')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor], [photo]) VALUES (48, N'arthur', N'78124770', N'Arthur', N'Arthur Wagenknecht', N'Administrador', 3, CAST(0x4E3E0B00 AS Date), N'e8f5beb3243b76677dac06ddc050c303', 1, N'gmreaper', N'642e61394427c266f3e19523de6a6836-gKr-jgXM_400x400.thumb.jpg.755b15d85e770cc15a074a37998dece5.jpg')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[LogsDistribuidor]    Script Date: 06/02/2018 23:41:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogsDistribuidor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idGM] [varchar](50) NOT NULL,
	[item] [varchar](50) NOT NULL,
	[classe] [varchar](50) NOT NULL,
	[idUser] [varchar](50) NOT NULL,
	[nick] [varchar](50) NOT NULL,
	[data] [datetime] NOT NULL,
	[ip] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LogsDistribuidor] ON
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (5, N'whoami', N'da121', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EE017830B0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (6, N'whoami', N'da121', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EE017846F4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (7, N'whoami', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EE017898FC AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (9, N'deku', N'wp117', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EE0181B180 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (10, N'deku', N'wp119', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D97BC8 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (11, N'deku', N'wp118', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D99A40 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (12, N'deku', N'wp118', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D9A4CC AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (13, N'deku', N'wp118', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D9C59C AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (14, N'deku', N'wp118', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D9D028 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (15, N'deku', N'wp119', N'Lutador', N'artu', N'Escanor', CAST(0x0000A8EF00D9DD0C AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (16, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF00DA2938 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (17, N'deku', N'wp118', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF00DB8FD0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (23, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8F0013E28D4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (24, N'deku', N'wp120', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8F0017617F8 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (25, N'deku', N'wp117', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8F001761F00 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (26, N'deku', N'wp117', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8F0017623B0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (27, N'deku', N'da120', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8F001763D78 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (28, N'deku', N'wp116', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8F00176F0C4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (29, N'deku', N'wp118', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8F001775460 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (30, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8F001780B30 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (31, N'deku', N'da119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8F001781490 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (32, N'deku', N'wp120', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8F001781DF0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (8, N'whoami', N'wp118', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EE0178B2C4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (20, N'deku', N'wp119', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8EF011E98C0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (21, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF011EA0F4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (22, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF01201EFC AS DateTime), N'::1')
SET IDENTITY_INSERT [dbo].[LogsDistribuidor] OFF
/****** Object:  Table [dbo].[LogsBan]    Script Date: 06/02/2018 23:41:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogsBan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idplayer] [varchar](50) NOT NULL,
	[motivo] [varchar](50) NOT NULL,
	[punicao] [varchar](50) NOT NULL,
	[dataDesban] [date] NOT NULL,
	[data] [date] NOT NULL,
	[banidoPor] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LogsBan] ON
INSERT [dbo].[LogsBan] ([id], [idplayer], [motivo], [punicao], [dataDesban], [data], [banidoPor]) VALUES (1, N'lukets', N'Alerta #1', N'Alerta', CAST(0x4B3E0B00 AS Date), CAST(0x3C3E0B00 AS Date), N'deku')
SET IDENTITY_INSERT [dbo].[LogsBan] OFF
