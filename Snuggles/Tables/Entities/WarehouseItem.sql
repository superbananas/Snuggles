CREATE TABLE [dbo].[WarehouseItem]
(
	[WarehouseItemId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_WAREHOUSEITEMID PRIMARY KEY,
	[WarehouseId] INT NOT NULL, 
	[ItemId] INT NOT NULL, 
	[Quantity] BIGINT NOT NULL DEFAULT 0, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastModified] DATETIME NOT NULL DEFAULT GetDate(), 
	CONSTRAINT [FK_WarehouseItem_Warehouse] FOREIGN KEY ([WarehouseId]) REFERENCES [Warehouse]([WarehouseId]),
	CONSTRAINT [FK_WarehouseItem_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([ItemId])
)
