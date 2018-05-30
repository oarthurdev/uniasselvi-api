USE [ClanDB]
GO
/****** Object:  Table [dbo].[UL]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UL](
	[IDX] [int] NOT NULL,
	[MIDX] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[ChName] [nvarchar](50) NOT NULL,
	[ChType] [int] NULL,
	[ChLv] [int] NULL,
	[ClanName] [nvarchar](50) NULL,
	[Permi] [char](2) NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[MIconCnt] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiegeMoneyTax]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SiegeMoneyTax](
	[DNo] [int] IDENTITY(1,1) NOT NULL,
	[IDX] [int] NULL,
	[Mixing] [bigint] NULL,
	[Aging] [bigint] NULL,
	[Shop] [bigint] NULL,
	[Poison1] [bigint] NULL,
	[Poison2] [bigint] NULL,
	[Poison3] [bigint] NULL,
	[Force] [bigint] NULL,
	[Warpgate] [bigint] NULL,
	[Skill] [bigint] NULL,
	[Total] [bigint] NULL,
	[Tax] [bigint] NULL,
	[ServerName] [varchar](50) NULL,
	[RegistDay] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiegeMoneyLog]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SiegeMoneyLog](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[CIDX] [int] NULL,
	[UserID] [varchar](50) NULL,
	[chName] [varchar](50) NULL,
	[ServerName] [varchar](50) NULL,
	[Operator] [varchar](50) NULL,
	[OperCode] [char](10) NULL,
	[SiegeMoney] [bigint] NULL,
	[RegistDay] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiegeCurrentList]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SiegeCurrentList](
	[IDX] [int] NOT NULL,
	[CIDX] [int] NULL,
	[UserID] [varchar](50) NULL,
	[chName] [varchar](50) NULL,
	[ServerName] [varchar](50) NULL,
	[Operator] [varchar](50) NULL,
	[OperCode] [char](10) NULL,
	[SiegeMoney] [bigint] NULL,
	[RegistDay] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiegeClanList]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SiegeClanList](
	[IDX] [int] NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[CharName] [varchar](50) NOT NULL,
	[ClanName] [varchar](50) NOT NULL,
	[TaxRate] [int] NOT NULL,
	[ServerName] [varchar](50) NOT NULL,
	[Server] [tinyint] NOT NULL,
	[OperFrom] [datetime] NULL,
	[OperTo] [datetime] NULL,
	[RegistDay] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRBBSSub]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PRBBSSub](
	[SIDX] [int] NOT NULL,
	[MINDEX] [int] NOT NULL,
	[PMNo] [varchar](20) NOT NULL,
	[userid] [varchar](25) NOT NULL,
	[writename] [varchar](100) NOT NULL,
	[Content] [text] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[RegiIP] [char](15) NOT NULL,
	[UserName] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRBBSMain]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PRBBSMain](
	[IDX] [int] NOT NULL,
	[PMNo] [varchar](20) NOT NULL,
	[Userid] [varchar](25) NOT NULL,
	[Title] [varchar](600) NOT NULL,
	[Content] [text] NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[ClanIdx] [int] NOT NULL,
	[SelServer] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[RegiIP] [char](15) NOT NULL,
	[Hit] [int] NOT NULL,
	[CountCom] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRBbsFile]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PRBbsFile](
	[IDX] [int] NOT NULL,
	[MINDEX] [int] NOT NULL,
	[FileName] [varchar](255) NOT NULL,
	[FileSize] [varchar](100) NOT NULL,
	[RegiDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[playerinfo]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playerinfo](
	[playername] [nchar](15) NULL,
	[Playtime] [float] NULL,
	[player_level] [float] NULL,
	[Lastseen] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Notice](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[Userid] [varchar](25) NOT NULL,
	[WriteName] [varchar](100) NOT NULL,
	[Title] [varchar](600) NOT NULL,
	[Content] [text] NOT NULL,
	[SelServer] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[RegiIP] [char](15) NOT NULL,
	[Hit] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LI]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LI](
	[IMG] [int] NOT NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hourstat]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hourstat](
	[date] [datetime] NULL,
	[count] [numeric](18, 0) NULL,
	[hourindex] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameNoticePrivate]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GameNoticePrivate](
	[IDX] [int] NOT NULL,
	[Userid] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[FromDay] [datetime] NOT NULL,
	[ToDay] [datetime] NOT NULL,
	[RegistDay] [datetime] NOT NULL,
	[DelActive] [int] NOT NULL,
	[Hit] [int] NOT NULL,
	[Flag] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameNoticeGroup]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GameNoticeGroup](
	[IDX] [int] NOT NULL,
	[GroupCD] [int] NOT NULL,
	[MainCD] [int] NOT NULL,
	[DetailCD] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[FromDay] [datetime] NOT NULL,
	[ToDay] [datetime] NOT NULL,
	[RegistDay] [datetime] NOT NULL,
	[DelActive] [int] NOT NULL,
	[Hit] [int] NOT NULL,
	[Flag] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameNotice]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GameNotice](
	[UserID] [varchar](50) NULL,
	[ChName] [varchar](50) NULL,
	[Server] [int] NULL,
	[PFlag] [int] NULL,
	[Txt] [varchar](1000) NULL,
	[Flag] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CT](
	[SNo] [int] NULL,
	[ServerName] [varchar](50) NULL,
	[MIDX] [int] NULL,
	[ClanName] [varchar](50) NULL,
	[ClanJang] [int] NULL,
	[ClanImage] [varchar](50) NULL,
	[UserID] [varchar](25) NULL,
	[ChName] [varchar](50) NULL,
	[GPCode] [varchar](20) NULL,
	[LogonTime] [datetime] NULL,
	[IP] [varchar](20) NULL,
	[RNo] [int] NULL,
	[Flag] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanTicket]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanTicket](
	[SNo] [int] NULL,
	[ServerName] [varchar](50) NULL,
	[MIDX] [int] NULL,
	[ClanName] [varchar](50) NULL,
	[ClanJang] [int] NULL,
	[ClanImage] [varchar](50) NULL,
	[UserID] [varchar](25) NULL,
	[ChName] [varchar](50) NULL,
	[GPCode] [varchar](20) NULL,
	[LogonTime] [datetime] NULL,
	[IP] [varchar](20) NULL,
	[RNo] [int] NULL,
	[Flag] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanSubView]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanSubView](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[ChName] [nvarchar](50) NOT NULL,
	[ChType] [int] NULL,
	[ChLv] [int] NULL,
	[ClanName] [nvarchar](50) NULL,
	[Permi] [char](2) NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[Server] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanSubDeleted]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanSubDeleted](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[ChName] [nvarchar](50) NOT NULL,
	[ChType] [int] NULL,
	[ChLv] [int] NULL,
	[ClanName] [nvarchar](50) NULL,
	[Permi] [char](2) NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[DelDate] [datetime] NOT NULL,
	[DelState] [char](1) NOT NULL,
	[DelCase] [char](10) NULL,
	[Server] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanSubCharChangeLog]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanSubCharChangeLog](
	[IDX] [int] NOT NULL,
	[UserID] [varchar](50) NULL,
	[BeforeCharName] [varchar](50) NULL,
	[AfterCharName] [varchar](50) NULL,
	[CServer] [int] NULL,
	[RegiDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanMoneyLog]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanMoneyLog](
	[IDX] [int] NOT NULL,
	[CIDX] [int] NULL,
	[UserID] [varchar](50) NULL,
	[chName] [varchar](50) NULL,
	[ServerName] [varchar](50) NULL,
	[Operator] [varchar](50) NULL,
	[OperCode] [char](10) NULL,
	[ClanMoney] [bigint] NULL,
	[RegistDay] [datetime] NULL,
	[Note] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanMainView]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanMainView](
	[IDX] [int] NOT NULL,
	[ClanName] [nvarchar](50) NOT NULL,
	[Note] [text] NOT NULL,
	[NoteCnt] [int] NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[ClanZang] [nvarchar](50) NOT NULL,
	[Flag] [int] NOT NULL,
	[MemCnt] [int] NOT NULL,
	[MIconCnt] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[LimitDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[Cpoint] [int] NULL,
	[CWin] [int] NULL,
	[CFail] [int] NULL,
	[ClanMoney] [bigint] NULL,
	[CNFlag] [int] NULL,
	[SiegeMoney] [bigint] NULL,
	[Server] [varchar](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanMainDeleted]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanMainDeleted](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[ClanName] [nvarchar](50) NOT NULL,
	[Userid] [nvarchar](50) NULL,
	[ClanZang] [nvarchar](50) NOT NULL,
	[Flag] [int] NOT NULL,
	[MemCnt] [int] NOT NULL,
	[MIConCnt] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[LimitDate] [datetime] NOT NULL,
	[DelDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[DelState] [char](1) NOT NULL,
	[DelCase] [char](10) NOT NULL,
	[Server] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanMainCharChangeLog]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ClanMainCharChangeLog](
	[IDX] [int] NOT NULL,
	[UserID] [varchar](50) NULL,
	[BeforeCharName] [varchar](50) NULL,
	[AfterCharName] [varchar](50) NULL,
	[CServer] [int] NULL,
	[RegiDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanHome]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClanHome](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[SelServer] [int] NOT NULL,
	[Intro] [nvarchar](300) NULL,
	[Image] [nvarchar](50) NULL,
	[Skin] [int] NULL,
	[PrivHome] [int] NULL,
	[PrivMem] [int] NULL,
	[PrivBoard] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CL]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CL](
	[IDX] [int] IDENTITY(1,1) NOT NULL,
	[ClanName] [nvarchar](50) NOT NULL,
	[Note] [text] NOT NULL,
	[NoteCnt] [int] NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[ClanZang] [nvarchar](50) NOT NULL,
	[Flag] [int] NOT NULL,
	[MemCnt] [int] NOT NULL,
	[MIconCnt] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[LimitDate] [datetime] NOT NULL,
	[DelActive] [char](1) NOT NULL,
	[PFlag] [int] NOT NULL,
	[KFlag] [int] NOT NULL,
	[Cpoint] [int] NULL,
	[CWin] [int] NULL,
	[CFail] [int] NULL,
	[ClanMoney] [bigint] NULL,
	[CNFlag] [int] NULL,
	[SiegeMoney] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChipLog]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ChipLog](
	[LgIDX] [int] NOT NULL,
	[CIDX] [int] NOT NULL,
	[CServer] [int] NOT NULL,
	[Userid] [varchar](50) NOT NULL,
	[Chname] [varchar](50) NOT NULL,
	[Permi] [char](2) NOT NULL,
	[RegiDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BBSSub]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BBSSub](
	[SIDX] [int] NOT NULL,
	[MINDEX] [int] NOT NULL,
	[Userid] [varchar](25) NOT NULL,
	[WriteName] [varchar](100) NOT NULL,
	[Content] [text] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[RegiIP] [char](15) NOT NULL,
	[NickName] [varchar](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BBSMain]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BBSMain](
	[IDX] [int] NOT NULL,
	[MIDX] [int] NOT NULL,
	[Userid] [varchar](25) NOT NULL,
	[WriteName] [varchar](100) NOT NULL,
	[Title] [varchar](600) NOT NULL,
	[Content] [text] NOT NULL,
	[SelServer] [int] NOT NULL,
	[RegiDate] [datetime] NOT NULL,
	[RegiIP] [char](15) NOT NULL,
	[Hit] [int] NOT NULL,
	[CountCom] [int] NOT NULL,
	[NickName] [varchar](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bandb]    Script Date: 05/29/2018 21:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bandb](
	[charname] [ntext] NULL,
	[date] [datetime] NULL,
	[hacktype] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
