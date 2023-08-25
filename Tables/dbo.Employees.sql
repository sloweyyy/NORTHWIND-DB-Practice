CREATE TABLE [dbo].[Employees]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[LastName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FirstName] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Title] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TitleOfCourtesy] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BirthDate] [datetime] NULL,
[HireDate] [datetime] NULL,
[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HomePhone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Extension] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Photo] [image] NULL,
[Notes] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReportsTo] [int] NULL,
[PhotoPath] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] WITH NOCHECK ADD CONSTRAINT [CK_Birthdate] CHECK (([BirthDate]<getdate()))
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Employees] ([LastName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Employees] ([PostalCode]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] WITH NOCHECK ADD CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
