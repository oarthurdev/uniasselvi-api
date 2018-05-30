USE [PainelGMGothicPTByArthur]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/29/2018 21:53:21 ******/
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
	[cadPor] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (1, N'deku', N'78124770', N'Deku', N'Arthur', N'Supervisor', 3, CAST(0x363E0B00 AS Date), N'9988c103baa362a849a3c9b87b17fe43', 1, N'Banco')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (17, N'deku2', N'78124770', N'aaa', N'aa', N'Administrador', 3, CAST(0x3C3E0B00 AS Date), N'0', 1, N'deku')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (16, N'iuri', N'123', N'Iuri', N'Iuri Langaro Vendrame', N'Gestor', 3, CAST(0x393E0B00 AS Date), N'0', 0, N'deku')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (18, N'whoami', N'123', N'Who Am I', N'Elliot Anderson', N'Gestor', 3, CAST(0x483E0B00 AS Date), N'0', 1, N'deku')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (19, N'gm2', N'123', N'GM2', N'GM2', N'Game Master', 2, CAST(0x4A3E0B00 AS Date), N'0', 1, N'deku')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[LogsDistribuidor]    Script Date: 05/29/2018 21:53:21 ******/
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
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (8, N'whoami', N'wp118', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EE0178B2C4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (20, N'deku', N'wp119', N'Sem Classe', N'artu', N'Escanor', CAST(0x0000A8EF011E98C0 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (21, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF011EA0F4 AS DateTime), N'::1')
INSERT [dbo].[LogsDistribuidor] ([id], [idGM], [item], [classe], [idUser], [nick], [data], [ip]) VALUES (22, N'deku', N'wp119', N'Pikeman', N'artu', N'Escanor', CAST(0x0000A8EF01201EFC AS DateTime), N'::1')
SET IDENTITY_INSERT [dbo].[LogsDistribuidor] OFF
/****** Object:  Table [dbo].[LogsBan]    Script Date: 05/29/2018 21:53:21 ******/
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
