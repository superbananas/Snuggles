CREATE TABLE [dbo].[Item]
(
	[ItemId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_ItemId PRIMARY KEY, 
	[Caption] VARCHAR(100) NOT NULL, 
	[Description] VARCHAR(1000) NOT NULL, 
	[ItemStatusId] INT NOT NULL,
	[SKU] CHAR(8) NOT NULL, 
	[UPC] CHAR(12) NOT NULL, 
	[SupplierId] INT NOT NULL,
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastupDate] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_Item_ItemStatusId] FOREIGN KEY ([ItemStatusId]) REFERENCES [LkpItemStatus]([ItemStatusId]),
	CONSTRAINT [FK_Item_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [Supplier]([SupplierId])
)
