CREATE TABLE [dbo].[SupplierContactPhone]
(
	[SupplierContactPhoneId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_SUPPLIERCONTACTPHONEID PRIMARY KEY, 
	[SupplierContactId] INT NOT NULL, 
	[AreaCode] CHAR(3) NOT NULL, 
	[Prefix] CHAR(3) NOT NULL, 
	[LineNumber] CHAR(4) NOT NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastUpdate] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_SupplierContactPhone_SupplierContact] FOREIGN KEY ([SupplierContactId]) REFERENCES [SupplierContact]([SupplierContactId])
)
