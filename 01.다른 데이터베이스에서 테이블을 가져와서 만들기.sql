/*다른 데이터베이스에서 테이블을 가져오게 하는거*/
/*1. 만들곳의 테이블을 만든다.*/
USE [Real]
GO

CREATE TABLE [dbo].[Member](
	[mNo] [int] IDENTITY(1,1) NOT NULL,
	[mID] [varchar](30) NOT NULL,
	[mPass] [varchar](16) NOT NULL,
	[mName] [varchar](10) NOT NULL,
	[delYn] [varchar](1) NOT NULL  DEFAULT ('N'),
	[regDate] [datetime] NOT NULL DEFAULT (getdate()) ,
	[modDate] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_Member_1] PRIMARY KEY CLUSTERED 
(
	[mNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/* 2. 아래 코드를 넣기 전에 IDENTITY를 꺼줘야지 된다.*/
INSERT INTO Real.dbo.Member
SELECT * FROM TEST.dbo.Member;

SELECT * FROM Real.dbo.Member;


