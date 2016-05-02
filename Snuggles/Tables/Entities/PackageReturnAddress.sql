CREATE TABLE [dbo].[PackageReturnAddress]
(
	[PackageReturnAddressId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PackageReturnAddressID PRIMARY KEY, 
	[PackageId] INT NOT NULL, 
	[SenderName] VARCHAR(200) NOT NULL,
	[AddressLine] VARCHAR(200) NULL, 
	[SecondaryUnitId] INT NULL, 
	[SecondaryUnitValue] VARCHAR(10) NULL,
	[City] VARCHAR(250) NULL, 
	[USStateId] INT NULL, 
	[Zipcode] CHAR(5) NULL, 
	[Zip4] CHAR(4) NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastModified] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_PackageReturnAddress_ToPackage] FOREIGN KEY ([PackageId]) REFERENCES [Package]([PackageId]),
	CONSTRAINT [FK_PackageReturnAddress_SecondaryUnit] FOREIGN KEY ([SecondaryUnitId]) REFERENCES [LkpSecondaryUnitType]([SecondaryUnitTypeId]),
	CONSTRAINT [FK_PackageReturnAddress_USState] FOREIGN KEY ([USStateId]) REFERENCES [LkpUSState]([USStateId])

)
