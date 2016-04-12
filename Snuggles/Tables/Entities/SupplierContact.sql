CREATE TABLE [dbo].[SupplierContact]
(
	[SupplierContactId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_SUPPLIERCONTACTID PRIMARY KEY,
	[SupplierId] INT NOT NULL, 
	[FirstName] VARCHAR(250) NOT NULL, 
	[LastName] VARCHAR(250) NOT NULL, 
	[Email] VARCHAR(500) NOT NULL,
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastUpdate] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_SupplierContact_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [Supplier]([SupplierId])
)
