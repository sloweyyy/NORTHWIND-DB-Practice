CREATE TABLE [dbo].[Customers]
(
[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CompanyName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContactName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactTitle] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers] ([City]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers] ([CompanyName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers] ([PostalCode]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers] ([Region]) ON [PRIMARY]
GO
