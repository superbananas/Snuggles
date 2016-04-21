CREATE TABLE [dbo].[Warehouse]
(
	[WarehouseId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_WAREHOUSEID PRIMARY KEY, 
	[Name] VARCHAR(50) NULL, 
	[Availability] INT NOT NULL DEFAULT 0,
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastModified] DATETIME NOT NULL DEFAULT GetDate(), 
	CONSTRAINT [FK_Warehouse_ToWarehouseAvailability] FOREIGN KEY ([Availability]) REFERENCES [LkpWarehouseAvailability]([WarehouseAvailabilityId])
	
)
