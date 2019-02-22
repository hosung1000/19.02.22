/*�ٸ� �����ͺ��̽����� ���̺��� �������� �ϴ°�*/
/*1. ������� ���̺��� �����.*/
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

/* 2. �Ʒ� �ڵ带 �ֱ� ���� IDENTITY�� ������� �ȴ�.*/
INSERT INTO Real.dbo.Member
SELECT * FROM TEST.dbo.Member;

SELECT * FROM Real.dbo.Member;


