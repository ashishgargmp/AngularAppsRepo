USE [Budget]
GO

/****** Object:  Table [dbo].[FundTyp]    Script Date: 4/1/2019 10:53:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FundTyp](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](500) NULL,
 CONSTRAINT [PK_FundType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

