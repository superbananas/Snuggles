CREATE TABLE [dbo].[Supplier]
(
	[SupplierId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_SUPPLIERID PRIMARY KEY, 
	[Name] VARCHAR(100) NOT NULL, 
	[SupplierTypeId] INT NOT NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastUpdate] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_Supplier_SupplierType] FOREIGN KEY ([SupplierTypeId]) REFERENCES [LkpSupplierType]([SupplierTypeId])
)
