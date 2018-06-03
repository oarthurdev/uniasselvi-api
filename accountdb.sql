USE [accountdb]
GO
/****** Object:  Table [dbo].[ZPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ZPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ZGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[YPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[YGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[XPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[XGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[WPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[WGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[VPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[VPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'vitor', N'12345', NULL, NULL, N'Vitor', N'Puft', NULL, NULL, NULL, NULL, N'teste@teste.com', NULL, NULL, NULL, N'Teste', N'TO', N'teste', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A88B00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[VGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[VGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[VGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'vitor', N'eron259', NULL, N'PTP-RUD001', CAST(0x0000A88B00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A89E014BEB7C AS DateTime), CAST(0x0000A89E014DD8D8 AS DateTime), CAST(0x0000A89E014BEB7C AS DateTime), NULL, N'0', NULL, N'', NULL, N'GothicPT', N'Aventura', 7, 130, 669390028980)
/****** Object:  Table [dbo].[UPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste', N'teste', NULL, NULL, N'teste', N'teste', NULL, NULL, NULL, NULL, N'teste@hotmail.com', NULL, NULL, NULL, N'teste', N'RJ', N'teste', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A12B00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste2', N'teste2', NULL, NULL, N'teste2', N'teste2', NULL, NULL, NULL, NULL, N'teste2@hotmail.com', NULL, NULL, NULL, N'ste2', N'MG', N'ste2', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A12B00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste5', N'123456', NULL, NULL, N'teste5', N'teste5', NULL, NULL, NULL, NULL, N'teste5@teste5.com', NULL, NULL, NULL, N'teste5@teste5.com', N'SP', N'teste5@teste5.com', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste6', N'teste6', NULL, NULL, N'teste6', N'teste6', NULL, NULL, NULL, NULL, N'teste6@teste6.com', NULL, NULL, NULL, N'teste6', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste3', N'teste3', NULL, NULL, N'teste3', N'teste3', NULL, NULL, NULL, NULL, N'teste3@teste3.com', NULL, NULL, NULL, N'teste3', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'teste7', N'teste7', NULL, NULL, N'teste7', N'teste7', NULL, NULL, NULL, NULL, N'teste7@teste7.com', NULL, NULL, NULL, N'teste7@teste7.com', N'TO', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[TGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste', N'teste', NULL, N'PTP-RUD001', CAST(0x0000A12B00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A6DE000FB130 AS DateTime), CAST(0x0000A6DE0017AA98 AS DateTime), CAST(0x0000A6DE000FB130 AS DateTime), NULL, N'0', NULL, N'', NULL, N'', N'Clarinha', 6, 200, 38347875922608)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste2', N'teste2', NULL, N'PTP-RUD001', CAST(0x0000A12B00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, N'', N'TesteMS', 0, 0, 4278190080)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste5', N'123456', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste6', N'teste6', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'', N'0', NULL, CAST(0x0000A16A0133E7D4 AS DateTime), CAST(0x0000A16A01341204 AS DateTime), CAST(0x0000A16A0133E7D4 AS DateTime), NULL, N'0', NULL, N'', NULL, N'', N'Teste6', 4, 80, 1878851311)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste3', N'teste3', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x00011D4500000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'teste7', N'teste7', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'', N'0', NULL, CAST(0x0000A16A0128868C AS DateTime), CAST(0x0000A16A01291200 AS DateTime), CAST(0x0000A16A0128868C AS DateTime), NULL, N'0', NULL, N'', NULL, N'', N'teste7', 2, 80, 1878851311)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'testeruan', N'ruanlindo', NULL, N'PTP-RUD001', CAST(0x0000A8970147FCD4 AS DateTime), CAST(0x0000B97A00000000 AS DateTime), NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A89E012FCDD4 AS DateTime), CAST(0x0000A89E012F0ED0 AS DateTime), CAST(0x0000A89E012FCDD4 AS DateTime), NULL, N'0', N'F806275A-FACA-4931-9EED-2602554013DC', NULL, NULL, N'GothicPT', N'Subaru', 5, 130, 669390028980)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'testedev1', N'78124770', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'testedev134', N'78124770', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[SPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'rodiias', N'google', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[RegionCodeInfoLog]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RegionCodeInfoLog](
	[IDX] [int] NOT NULL,
	[PMNo] [int] NOT NULL,
	[UserID] [varchar](20) NOT NULL,
	[Passwd] [varchar](20) NOT NULL,
	[BusinessName] [varchar](100) NULL,
	[UserName] [varchar](100) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[ZipCode] [char](8) NULL,
	[Address1] [varchar](150) NULL,
	[Address2] [varchar](200) NULL,
	[Email] [varchar](100) NULL,
	[RegistDay] [datetime] NULL,
	[RegionCode] [char](8) NULL,
	[Note] [varchar](500) NULL,
	[UseCheck] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegionCodeInfo]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RegionCodeInfo](
	[RCNo] [int] NOT NULL,
	[RegionCode] [char](8) NOT NULL,
	[RegionCodeName] [varchar](200) NOT NULL,
	[Active] [char](1) NOT NULL,
	[EditDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegionCodeChangeLog]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RegionCodeChangeLog](
	[RCCNo] [int] NOT NULL,
	[RCNo] [int] NOT NULL,
	[RegionCode] [char](8) NOT NULL,
	[RegionCodeName] [varchar](200) NOT NULL,
	[Active] [char](1) NOT NULL,
	[EditDate] [datetime] NOT NULL,
	[ChangeStatus] [char](1) NOT NULL,
	[ChangeOperator] [varchar](20) NOT NULL,
	[ChangeIP] [varchar](15) NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[ChangeNote] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegionChangeLog]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[RegionChangeLog](
	[RCLNo] [int] NOT NULL,
	[PMNo] [int] NOT NULL,
	[UserID] [varchar](20) NOT NULL,
	[BeforeRegionCode] [char](8) NOT NULL,
	[AfterRegionCode] [char](8) NOT NULL,
	[ChangeOperator] [varchar](20) NOT NULL,
	[ChangeIP] [varchar](20) NOT NULL,
	[EditDate] [datetime] NOT NULL,
	[ChangeNote] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[QPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[QGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'painel123', N'123painel', NULL, N'PTP-RUD001', CAST(0x0000A8BC000B554E AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'paineladm', N'paineladm', NULL, N'PTP-RUD001', CAST(0x0000A8BC000CCF4A AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[PCBangMemberChangeLog]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PCBangMemberChangeLog](
	[PCBCLNo] [int] NOT NULL,
	[PMNo] [int] NOT NULL,
	[UserID] [varchar](20) NOT NULL,
	[Passwd] [varchar](20) NOT NULL,
	[BusinessName] [varchar](100) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ZipCode] [char](8) NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](200) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[TIPAddress1_G] [varchar](20) NULL,
	[TIP1_GComment] [varchar](200) NULL,
	[TIPAddress2_G] [varchar](20) NULL,
	[TIP2_GComment] [varchar](200) NULL,
	[TIPAddress3_G] [varchar](20) NULL,
	[TIP3_GComment] [varchar](200) NULL,
	[TIPAddress1] [varchar](15) NULL,
	[TIP1_Comment] [varchar](200) NULL,
	[TIPAddress2] [varchar](15) NULL,
	[TIP2_Comment] [varchar](200) NULL,
	[TIPAddress3] [varchar](15) NULL,
	[TIP3_Comment] [varchar](200) NULL,
	[TIPAddress4] [varchar](15) NULL,
	[TIP4_Comment] [varchar](200) NULL,
	[TIPAddress5] [varchar](15) NULL,
	[TIP5_Comment] [varchar](200) NULL,
	[TIPAddress6] [varchar](15) NULL,
	[TIP6_Comment] [varchar](200) NULL,
	[TIPAddress7] [varchar](15) NULL,
	[TIP7_Comment] [varchar](200) NULL,
	[TIPAddress8] [varchar](15) NULL,
	[TIP8_Comment] [varchar](200) NULL,
	[TIPAddress9] [varchar](15) NULL,
	[TIP9_Comment] [varchar](200) NULL,
	[TIPAddress10] [varchar](15) NULL,
	[TIP10_Comment] [varchar](200) NULL,
	[RegistDay] [datetime] NOT NULL,
	[RegionCode] [char](8) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[Note] [varchar](500) NULL,
	[ChangeOperator] [varchar](20) NOT NULL,
	[ChangeIP] [varchar](20) NOT NULL,
	[EditDate] [datetime] NOT NULL,
	[ChangeNote] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCBangMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PCBangMember](
	[PMNo] [int] NOT NULL,
	[UserID] [varchar](20) NOT NULL,
	[Passwd] [varchar](20) NOT NULL,
	[BusinessName] [varchar](100) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ZipCode] [char](8) NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](200) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[TIPAddress1_G] [varchar](20) NULL,
	[TIP1_GComment] [varchar](200) NULL,
	[TIPAddress2_G] [varchar](20) NULL,
	[TIP2_GComment] [varchar](200) NULL,
	[TIPAddress3_G] [varchar](20) NULL,
	[TIP3_GComment] [varchar](200) NULL,
	[TIPAddress1] [varchar](15) NULL,
	[TIP1_Comment] [varchar](200) NULL,
	[TIPAddress2] [varchar](15) NULL,
	[TIP2_Comment] [varchar](200) NULL,
	[TIPAddress3] [varchar](15) NULL,
	[TIP3_Comment] [varchar](200) NULL,
	[TIPAddress4] [varchar](15) NULL,
	[TIP4_Comment] [varchar](200) NULL,
	[TIPAddress5] [varchar](15) NULL,
	[TIP5_Comment] [varchar](200) NULL,
	[TIPAddress6] [varchar](15) NULL,
	[TIP6_Comment] [varchar](200) NULL,
	[TIPAddress7] [varchar](15) NULL,
	[TIP7_Comment] [varchar](200) NULL,
	[TIPAddress8] [varchar](15) NULL,
	[TIP8_Comment] [varchar](200) NULL,
	[TIPAddress9] [varchar](15) NULL,
	[TIP9_Comment] [varchar](200) NULL,
	[TIPAddress10] [varchar](15) NULL,
	[TIP10_Comment] [varchar](200) NULL,
	[RegistDay] [datetime] NOT NULL,
	[RegionCode] [char](8) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[Note] [varchar](500) NULL,
	[UseCheck] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[OPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[OGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[OGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'oarthurdev', N'78124770', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[NTTPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NTTPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](32) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[Flets_type] [varchar](50) NULL,
	[Flets_config] [varchar](50) NULL,
	[Flets_Multisession] [varchar](50) NULL,
	[Flets_ConnectCourse] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NTTGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NTTGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MPersonalMember]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[MPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'marcos', N'12345', NULL, NULL, N'marcos', N'hardy', NULL, NULL, NULL, NULL, N'teste1@teste.com', NULL, NULL, NULL, N'teste', N'SC', N'rtddtrdrt', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A89100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[MK_User_DATA]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[MK_User_DATA](
	[IDX] [int] NOT NULL,
	[UserID] [varchar](50) NULL,
	[UserPWD] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[EmailAddr] [varchar](100) NULL,
	[Sex] [char](50) NULL,
	[Address] [varchar](50) NULL,
	[Job] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[EmailChk] [char](1) NULL,
	[DelChk] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MGameUser]    Script Date: 06/02/2018 23:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[MGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'marcos', N'12345', NULL, N'PTP-RUD001', CAST(0x0000A89100000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A897016852F8 AS DateTime), CAST(0x0000A89701686A68 AS DateTime), CAST(0x0000A897016852F8 AS DateTime), NULL, N'0', NULL, N'', NULL, N'GothicPT', N'spN', 1, 130, 669390028980)
/****** Object:  Table [dbo].[LPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'lukets', N'bruna', NULL, NULL, N'Lucas', N'Domingues', NULL, NULL, NULL, NULL, N'lukinhassantistatjs@hotmail.com', NULL, NULL, NULL, N'S?o Paulo', N'SP', N'filo', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6AF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'lucasboaria', N'15975382', NULL, NULL, N'Lucas', N'Boaria', NULL, NULL, NULL, NULL, N'lucashermesboaria@hotmail.com', NULL, NULL, NULL, N'Campo Bom', N'RS', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6D300000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[LGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'lukets', N'bruna', NULL, N'PTP-RUD001', CAST(0x0000A6AF00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A8A00179C9AC AS DateTime), CAST(0x0000A8A001876B84 AS DateTime), CAST(0x0000A8A00179C9AC AS DateTime), NULL, N'0', NULL, N'', NULL, N'GothicPT', N'Arch', 4, 130, 669390028982)
INSERT [dbo].[LGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'lucasboaria', N'15975382', NULL, N'PTP-RUD001', CAST(0x0000A6D300000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[LevelList]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LevelList](
	[CharName] [varchar](50) NULL,
	[CharLevel] [int] NULL,
	[CharClass] [varchar](50) NULL,
	[ID] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'kbessa12', N'78124770aA', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[JPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[JPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[JGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[IPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[IGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[IGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'infection', N'78124770', NULL, N'PTP-RUD001', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[HPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'gmreaperasdasd', N'78124770', NULL, N'PTP-RUD001', CAST(0x0000A8BC000C03B5 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[FPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'ez52032', N'metal2020', NULL, NULL, N'Eric', N'Zimmermann', NULL, NULL, NULL, NULL, N'eric.zimmer@hotmail.com', NULL, NULL, NULL, N'Campo Bom', N'RS', N'Sammy', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6CD00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[EGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'ez52032', N'metal2020', NULL, N'PTP-RUD001', CAST(0x0000A6CD00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'1', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A892017FFD90 AS DateTime), CAST(0x0000A8920177CF6C AS DateTime), CAST(0x0000A892017FFD90 AS DateTime), NULL, N'0', N'CEF4121E-6E10-4046-AA2F-4CC65066A951', N'', NULL, N'GothicPT', N'LOL', 5, 130, 669390028980)
/****** Object:  Table [dbo].[DPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelUserQueue]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DelUserQueue](
	[DNo] [int] NOT NULL,
	[PMNo] [varchar](20) NOT NULL,
	[DeleteDate] [datetime] NOT NULL,
	[DeleteReason] [varchar](255) NULL,
	[Status] [char](1) NOT NULL,
	[Operator] [varchar](50) NULL,
	[InDate] [datetime] NULL,
	[Note] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelLog_Personal]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DelLog_Personal](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](24) NOT NULL,
	[Passwd] [varchar](8) NOT NULL,
	[Question] [varchar](2) NOT NULL,
	[Reply] [varchar](50) NOT NULL,
	[CUserName1] [varchar](10) NOT NULL,
	[CUserName2] [varchar](10) NOT NULL,
	[KUserName1] [varchar](10) NOT NULL,
	[KUserName2] [varchar](10) NOT NULL,
	[Age] [varchar](3) NOT NULL,
	[Gender] [varchar](2) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Job] [varchar](30) NOT NULL,
	[ZipCode1] [varchar](4) NOT NULL,
	[ZipCode2] [varchar](4) NOT NULL,
	[Add1] [varchar](30) NOT NULL,
	[Add2] [varchar](30) NOT NULL,
	[Add3] [varchar](30) NOT NULL,
	[PhoneNum1] [varchar](4) NOT NULL,
	[PhoneNum2] [varchar](4) NOT NULL,
	[PhoneNum3] [varchar](4) NOT NULL,
	[EmailChk] [varchar](1) NOT NULL,
	[DelChk] [varchar](1) NOT NULL,
	[RegistDay] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BPersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'blackzn', N'andre992', NULL, NULL, N'nathan', N'capaverde', NULL, NULL, NULL, NULL, N'nathan___andre@hotmail.com', NULL, NULL, NULL, N'POA', N'RS', N'gestor', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6D000000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[BlockUserList]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BlockUserList](
	[BNo] [int] NOT NULL,
	[PMNo] [varchar](20) NOT NULL,
	[userid] [varchar](25) NOT NULL,
	[AppDate] [datetime] NOT NULL,
	[ReuseDate] [datetime] NOT NULL,
	[Active] [char](1) NOT NULL,
	[SOperator] [varchar](50) NOT NULL,
	[SReason] [ntext] NOT NULL,
	[EOperator] [varchar](50) NULL,
	[EReason] [text] NULL,
	[InDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'blackzn', N'andre992', NULL, N'PTP-RUD001', CAST(0x0000A6D000000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A892017468B8 AS DateTime), CAST(0x0000A892017470EC AS DateTime), CAST(0x0000A892017468B8 AS DateTime), NULL, N'0', NULL, N'', NULL, N'GothicPT', N'HiT', 6, 130, 669390050090)
/****** Object:  Table [dbo].[APersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[APersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[APersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'admmaster', N'mac7841', NULL, NULL, N'deshy', N'mac', NULL, NULL, NULL, NULL, N'macosapt@hotmail.com', NULL, NULL, NULL, N'sao paulo', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A15600000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[APersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'admaster', N'452617', NULL, NULL, N'matheus', N'lopes', NULL, NULL, NULL, NULL, N'matheuslopes180@hotmail.com', NULL, NULL, NULL, N'sinop', N'MT', N'zabuza', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A53000000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[APersonalMember] ([PMNo], [Userid], [Passwd], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [Channel], [BNum], [External_id], [NickName], [IPADDR]) VALUES (0, N'artu', N'12345', NULL, NULL, N'dasdas', N'sdada', NULL, NULL, NULL, NULL, N'arthur_2@live.com', NULL, NULL, NULL, N'dasdas', N'SP', N'asdasd', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A87E00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[ALLPersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ALLPersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[senharpt] [varchar](32) NULL,
	[senhapainel] [varchar](50) NULL,
	[Question] [varchar](50) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[DiaNasc] [nchar](10) NULL,
	[MesNasc] [nchar](10) NULL,
	[AnoNasc] [nchar](10) NULL,
	[sexo] [nchar](15) NULL,
	[ip] [nchar](30) NULL,
	[Gold] [nchar](20) NULL,
	[pais] [varchar](50) NULL,
	[bonus] [nchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste', N'teste', NULL, NULL, N'Escrever apenas palavra secreta abaixo', N'teste', N'teste', N'teste', NULL, NULL, N'', NULL, N'teste@hotmail.com', NULL, NULL, NULL, N'teste', N'RJ', N'teste', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A12B00000000 AS DateTime), N'07        ', N'06        ', N'1993      ', N'Masculino      ', N'189.106.109.248               ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste2', N'teste2', NULL, NULL, N'Qual o meu maior Idolo?', N'ste2', N'teste2', N'teste2', NULL, NULL, N'', NULL, N'teste2@hotmail.com', NULL, NULL, NULL, N'ste2', N'MG', N'ste2', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A12B00000000 AS DateTime), N'07        ', N'06        ', N'1993      ', N'Masculino      ', N'189.106.109.248               ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'admmaster', N'mac7841', NULL, NULL, N'Qual o nome do meu primeiro cachorro?', N'negao', N'deshy', N'mac', NULL, NULL, N'', NULL, N'macosapt@hotmail.com', NULL, NULL, NULL, N'sao paulo', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A15600000000 AS DateTime), N'02        ', N'10        ', N'1989      ', N'Masculino      ', N'69.162.71.205                 ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste5', N'123456', NULL, NULL, N'Qual o nome do meu primeiro cachorro?', N'teste5@teste5.com', N'teste5', N'teste5', NULL, NULL, N'', NULL, N'teste5@teste5.com', NULL, NULL, NULL, N'teste5@teste5.com', N'SP', N'teste5@teste5.com', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), N'01        ', N'02        ', N'2008      ', N'Feminino       ', N'25.46.24.205                  ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste6', N'teste6', NULL, NULL, N'Escrever apenas palavra secreta abaixo', N'teste6', N'teste6', N'teste6', NULL, NULL, N'', NULL, N'teste6@teste6.com', NULL, NULL, NULL, N'teste6', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), N'18        ', N'11        ', N'1990      ', N'Masculino      ', N'25.167.194.61                 ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste3', N'teste3', NULL, NULL, N'Qual o meu maior Idolo?', N'teste3', N'teste3', N'teste3', NULL, NULL, N'', NULL, N'teste3@teste3.com', NULL, NULL, NULL, N'teste3', N'SP', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), N'18        ', N'11        ', N'1992      ', N'Masculino      ', N'25.167.194.61                 ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'teste7', N'teste7', NULL, NULL, N'Nome do meu primeiro amor?', N'teste7@teste7.com', N'teste7', N'teste7', NULL, NULL, N'', NULL, N'teste7@teste7.com', NULL, NULL, NULL, N'teste7@teste7.com', N'TO', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A16A00000000 AS DateTime), N'19        ', N'11        ', N'1991      ', N'Masculino      ', N'25.167.194.61                 ', NULL, NULL, NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'admaster', N'452617', NULL, N'452617', N'Nome do meu primeiro amor?', N'glauciele', N'matheus', N'lopes', NULL, NULL, N'', NULL, N'matheuslopes180@hotmail.com', NULL, NULL, NULL, N'sinop', N'MT', N'zabuza', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A53000000000 AS DateTime), N'31        ', N'07        ', N'1993      ', N'Masculino      ', N'191.222.226.196               ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'lukets', N'bruna', NULL, N'bruna', N'Qual o nome do meu primeiro cachorro?', N'filo', N'Lucas', N'Domingues', NULL, NULL, N'', NULL, N'lukinhassantistatjs@hotmail.com', NULL, NULL, NULL, N'S?o Paulo', N'SP', N'filo', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6AF00000000 AS DateTime), N'28        ', N'04        ', N'1994      ', N'Masculino      ', N'143.0.57.4                    ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'ez52032', N'metal2020', NULL, N'metal2020', N'Qual o nome do meu primeiro cachorro?', N'Cachorro', N'Eric', N'Zimmermann', NULL, NULL, N'', NULL, N'eric.zimmer@hotmail.com', NULL, NULL, NULL, N'Campo Bom', N'RS', N'Sammy', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6CD00000000 AS DateTime), N'02        ', N'09        ', N'1995      ', N'Masculino      ', N'201.22.231.145                ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'blackzn', N'andre992', NULL, N'kill', N'Qual o nome do meu primeiro cachorro?', N'eumesmo', N'nathan', N'capaverde', NULL, NULL, N'', NULL, N'nathan___andre@hotmail.com', NULL, NULL, NULL, N'POA', N'RS', N'gestor', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6D000000000 AS DateTime), N'15        ', N'09        ', N'1992      ', N'Masculino      ', N'177.86.52.218                 ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'lucasboaria', N'15975382', NULL, N'15975382', N'Escrever apenas palavra secreta abaixo', N'Campo Bom', N'Lucas', N'Boaria', NULL, NULL, N'', NULL, N'lucashermesboaria@hotmail.com', NULL, NULL, NULL, N'Campo Bom', N'RS', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A6D300000000 AS DateTime), N'03        ', N'02        ', N'1996      ', N'Masculino      ', N'187.183.212.99                ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'artu', N'78124770', NULL, N'78124770', N'Qual o meu maior Idolo?', N'asdasd', N'dasdas', N'sdada', NULL, NULL, N'', NULL, N'arthur_2@live.com', NULL, NULL, NULL, N'dasdas', N'SP', N'asdasd', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A87E00000000 AS DateTime), N'23        ', N'12        ', N'1990      ', N'Masculino      ', N'186.208.220.9                 ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'vitor', N'eron259', NULL, N'eron259', N'Qual o nome do meu primeiro cachorro?', N'teste', N'Vitor', N'Puft', NULL, NULL, N'', NULL, N'teste@teste.com', NULL, NULL, NULL, N'Teste', N'TO', N'teste', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A88B00000000 AS DateTime), N'18        ', N'12        ', N'1990      ', N'Masculino      ', N'186.208.220.18                ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'marcos', N'12345', NULL, N'12345', N'Qual o meu maior Idolo?', N'rdttsdsrt', N'marcos', N'hardy', NULL, NULL, N'', NULL, N'teste1@teste.com', NULL, NULL, NULL, N'teste', N'SC', N'rtddtrdrt', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A89100000000 AS DateTime), N'19        ', N'12        ', N'1990      ', N'Masculino      ', N'186.208.220.18                ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'testeruan', N'ruanlindo', NULL, N'ruanlindo', N'', N'', N'ruan', N'', NULL, NULL, N'0', NULL, N'ruanfraga13@hotmail.com', NULL, NULL, NULL, N'', N'', N'', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8970147FCDE AS DateTime), N'          ', N'          ', N'          ', N'               ', N'                              ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'oarthurdev', N'78124770', NULL, N'78124770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'oarthurdev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'testedev1', N'78124770', NULL, N'78124770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'testedev1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'testedev134', N'78124770', NULL, N'78124770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'testedev13@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'infection', N'78124770', NULL, N'78124770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'infectiondev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'rodiias', N'google', NULL, N'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'roodias@live.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'kbessa12', N'78124770aA', NULL, N'78124770aA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ese@ese.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'gmreaperasdasd', N'78124770', NULL, N'78124770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'asdasd@asdasd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8BC00000000 AS DateTime), N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'paineladm', N'paineladm', NULL, N'paineladm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'paineladm@painel.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8BC00000000 AS DateTime), N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
INSERT [dbo].[ALLPersonalMember] ([PMNo], [Userid], [Passwd], [senharpt], [senhapainel], [Question], [Reply], [CUserName1], [CUserName2], [KUserName1], [KUserName2], [Age], [Gender], [Email], [Job], [ZipCode1], [ZipCode2], [Add1], [Add2], [Add3], [PhoneNum1], [PhoneNum2], [PhoneNum3], [EmailChk], [DelChk], [RegistDay], [DiaNasc], [MesNasc], [AnoNasc], [sexo], [ip], [Gold], [pais], [bonus]) VALUES (0, N'aaaa', N'aaa', NULL, N'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'aaa@aaa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8C700000000 AS DateTime), N'01        ', N'01        ', N' 2018     ', N'0              ', N'158.69.16.36                  ', NULL, N'BR', NULL)
/****** Object:  Table [dbo].[AllGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AllGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL,
	[BlockMOTIVO] [varchar](50) NULL,
	[BlockDATA] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste', N'teste', NULL, N'PTP-RUD001', CAST(0x0000A12B00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste2', N'teste2', NULL, N'PTP-RUD001', CAST(0x0000A12B00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'admmaster', N'mac7841', NULL, N'PTP-RUD001', CAST(0x0000A15600000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste5', N'123456', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste6', N'teste6', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste3', N'teste3', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x00011D4500000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'teste7', N'teste7', NULL, N'PTP-RUD001', CAST(0x0000A16A00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'admaster', N'452617', NULL, N'PTP-RUD001', CAST(0x0000A53000000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'lukets', N'bruna', NULL, N'PTP-RUD001', CAST(0x0000A8EE00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'ez52032', N'metal2020', NULL, N'PTP-RUD001', CAST(0x0000A8EE00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'blackzn', N'andre992', NULL, N'PTP-RUD001', CAST(0x0000A8EE00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'lucasboaria', N'15975382', NULL, N'PTP-RUD001', CAST(0x0000A8EE00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'artu', N'78124770', NULL, N'PTP-RUD001', CAST(0x0000A8EE0138D5F0 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'vitor', N'eron259', NULL, N'PTP-RUD001', CAST(0x0000A8ED00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'marcos', N'12345', NULL, N'PTP-RUD001', CAST(0x0000A8EC00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AllGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp], [BlockMOTIVO], [BlockDATA]) VALUES (N'testeruan', N'ruanlindo', NULL, N'PTP-RUD001', CAST(0x0000A8E40147FCD9 AS DateTime), CAST(0x0000B97A00000000 AS DateTime), NULL, N'0', N'0', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[AGameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AGameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'admmaster', N'mac7841', NULL, N'PTP-RUD001', CAST(0x0000A15600000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'admaster', N'452617', NULL, N'PTP-RUD001', CAST(0x0000A53000000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'SpartacusPT', N'0', NULL, CAST(0x0000A5300016CAC4 AS DateTime), CAST(0x0000A530001CE990 AS DateTime), CAST(0x0000A5300016CAC4 AS DateTime), NULL, N'0', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'artu', N'78124770', NULL, N'PTP-RUD001', CAST(0x0000A87E00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', N'GothicPT', N'0', NULL, CAST(0x0000A8A401027FC8 AS DateTime), CAST(0x0000A8B30103C6BC AS DateTime), CAST(0x0000A8A401027FC8 AS DateTime), NULL, N'0', NULL, N'', NULL, N'GothicPT', N'Artu', 3, 130, 669390028980)
INSERT [dbo].[AGameUser] ([userid], [Passwd], [GameCode], [GPCode], [RegistDay], [DisuseDay], [UsePeriod], [inuse], [Grade], [EventChk], [SelectChk], [BlockChk], [SpecialChk], [ServerName], [Credit], [ECoin], [StartDay], [LastDay], [EditDay], [RNo], [DelChk], [SNo], [Channel], [BNum], [MXServer], [MXChar], [MXType], [MXLevel], [MXExp]) VALUES (N'aaaa', N'aaa', NULL, N'PTP-RUD001', CAST(0x0000A8C700F5F0BA AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL, N'0', N'U', N'0', N'0', N'0', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'158.69.16.36', NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[AddressInfo]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AddressInfo](
	[AINo] [int] NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[EditDate] [datetime] NOT NULL,
	[Note] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[9PersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[9PersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](50) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[9GameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[9GameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[0PersonalMember]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[0PersonalMember](
	[PMNo] [int] NOT NULL,
	[Userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[Question] [varchar](2) NULL,
	[Reply] [varchar](50) NULL,
	[CUserName1] [varchar](32) NULL,
	[CUserName2] [varchar](32) NULL,
	[KUserName1] [varchar](32) NULL,
	[KUserName2] [varchar](32) NULL,
	[Age] [varchar](11) NULL,
	[Gender] [varchar](11) NULL,
	[Email] [varchar](200) NULL,
	[Job] [varchar](30) NULL,
	[ZipCode1] [varchar](11) NULL,
	[ZipCode2] [varchar](11) NULL,
	[Add1] [varchar](32) NULL,
	[Add2] [varchar](32) NULL,
	[Add3] [varchar](100) NULL,
	[PhoneNum1] [varchar](11) NULL,
	[PhoneNum2] [varchar](11) NULL,
	[PhoneNum3] [varchar](11) NULL,
	[EmailChk] [varchar](1) NULL,
	[DelChk] [varchar](1) NULL,
	[RegistDay] [datetime] NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[External_id] [varchar](130) NULL,
	[NickName] [varchar](32) NULL,
	[IPADDR] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[0GameUser]    Script Date: 06/02/2018 23:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[0GameUser](
	[userid] [varchar](32) NOT NULL,
	[Passwd] [varchar](32) NOT NULL,
	[GameCode] [varchar](10) NULL,
	[GPCode] [varchar](10) NULL,
	[RegistDay] [datetime] NULL,
	[DisuseDay] [datetime] NULL,
	[UsePeriod] [int] NULL,
	[inuse] [char](1) NOT NULL,
	[Grade] [char](1) NOT NULL,
	[EventChk] [char](1) NOT NULL,
	[SelectChk] [char](1) NOT NULL,
	[BlockChk] [char](1) NOT NULL,
	[SpecialChk] [char](1) NOT NULL,
	[ServerName] [varchar](50) NULL,
	[Credit] [char](1) NOT NULL,
	[ECoin] [money] NULL,
	[StartDay] [datetime] NULL,
	[LastDay] [datetime] NULL,
	[EditDay] [datetime] NULL,
	[RNo] [int] NULL,
	[DelChk] [char](1) NOT NULL,
	[SNo] [varchar](50) NULL,
	[Channel] [varchar](50) NULL,
	[BNum] [int] NULL,
	[MXServer] [varchar](50) NULL,
	[MXChar] [varchar](50) NULL,
	[MXType] [int] NULL,
	[MXLevel] [int] NULL,
	[MXExp] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
