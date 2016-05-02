CREATE TABLE [dbo].[CustomerPackage]
(
    [CustomerPackageId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_CustomerPackageId PRIMARY KEY, 
    [CustomerId] INT NOT NULL, 
    [PackageId] INT NOT NULL, 
    CONSTRAINT [FK_CustomerPackage_ToCustomer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId]),
    CONSTRAINT [FK_CustomerPackage_ToPackage] FOREIGN KEY ([PackageId]) REFERENCES [Package]([PackageId])
)
