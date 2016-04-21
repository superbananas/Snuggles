CREATE TABLE [dbo].[WarehouseAddress]
(
	[WarehouseAddressId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_WarehouseAddressID PRIMARY KEY, 
	[WarehouseId] INT NOT NULL, 
	[AddressLine] VARCHAR(200) NOT NULL, 
	[SecondaryUnitId] INT NULL, 
	[SecondaryUnitValue] VARCHAR(10) NULL,
	[City] VARCHAR(250) NOT NULL, 
	[USStateId] INT NOT NULL, 
	[Zipcode] CHAR(5) NOT NULL, 
	[Zip4] CHAR(4) NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastModified] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_WarehouseAddress_ToWarehouse] FOREIGN KEY ([WarehouseId]) REFERENCES [Warehouse]([WarehouseId]),
	CONSTRAINT [FK_WarehouseAddress_SecondaryUnit] FOREIGN KEY ([SecondaryUnitId]) REFERENCES [LkpSecondaryUnitType]([SecondaryUnitTypeId]),
	CONSTRAINT [FK_SupplierAddress_USState] FOREIGN KEY ([USStateId]) REFERENCES [LkpUSState]([USStateId])

)
