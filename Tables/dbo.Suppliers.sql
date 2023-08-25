CREATE TABLE [dbo].[Suppliers]
(
[SupplierID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContactName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactTitle] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HomePage] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers] ([CompanyName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers] ([PostalCode]) ON [PRIMARY]
GO
