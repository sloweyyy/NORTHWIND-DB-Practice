CREATE TABLE [dbo].[Orders]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeID] [int] NULL,
[OrderDate] [datetime] NULL,
[RequiredDate] [datetime] NULL,
[ShippedDate] [datetime] NULL,
[ShipVia] [int] NULL,
[Freight] [money] NULL CONSTRAINT [DF_Orders_Freight] DEFAULT (0),
[ShipName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipAddress] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipCity] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipRegion] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipPostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipCountry] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders] ([CustomerID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders] ([CustomerID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders] ([EmployeeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders] ([EmployeeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders] ([OrderDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders] ([ShippedDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders] ([ShipPostalCode]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ShippersOrders] ON [dbo].[Orders] ([ShipVia]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] WITH NOCHECK ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] WITH NOCHECK ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] WITH NOCHECK ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID])
GO
