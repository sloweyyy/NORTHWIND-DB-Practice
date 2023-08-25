CREATE TABLE [dbo].[CustomerCustomerDemo]
(
[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerTypeID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED ([CustomerID], [CustomerTypeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY ([CustomerTypeID]) REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
