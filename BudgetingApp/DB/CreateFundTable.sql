USE [Budget]
GO

/****** Object:  Table [dbo].[Fund]    Script Date: 4/1/2019 10:52:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Fund](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](500) NULL,
	[TypeId] [int] NULL,
	[SourceId] [int] NULL,
	[SetAmount] [int] NULL,
	[DueDate] [datetime] NULL,
	[Financial Year] [varchar](50) NULL,
	[Assessment Year] [varchar](50) NULL,
	[FrequencyId] [int] NULL,
 CONSTRAINT [PK_FundTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

