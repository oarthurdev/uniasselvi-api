USE [PainelGMGothicPTByArthur]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/22/2018 16:12:28 ******/
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
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (1, N'deku', N'78124770', N'Deku', N'Arthur', N'Supervisor', 3, CAST(0x363E0B00 AS Date), N'0', 1, N'Banco')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (17, N'deku2', N'78124770', N'aaa', N'aa', N'Administrador', 3, CAST(0x3C3E0B00 AS Date), N'0', 1, N'deku')
INSERT [dbo].[users] ([id], [username], [password], [nick], [nome], [cargo], [permissao], [data], [token], [activated], [cadPor]) VALUES (16, N'iuri', N'123', N'Iuri', N'Iuri Langaro Vendrame', N'Gestor', 3, CAST(0x393E0B00 AS Date), N'0', 0, N'deku')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[LogsBan]    Script Date: 05/22/2018 16:12:29 ******/
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
