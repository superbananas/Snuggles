CREATE TABLE [dbo].[AuthorizeToPickup]
(
    [AuthorizeToPickupId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_AuthorizeToPickupID PRIMARY KEY, 
    [PackageId] INT NOT NULL,
    [Firstname] VARCHAR(100) NOT NULL, 
    [Lastname] VARCHAR(100) NOT NULL, 
    [RelationId] INT NOT NULL DEFAULT 0, 
    [Created] DATETIME NOT NULL DEFAULT GetDate(), 
    [LastModified] DATETIME NOT NULL DEFAULT GetDate(), 
    CONSTRAINT [FK_AuthorizeToPickup_ToRelation] FOREIGN KEY ([RelationId]) REFERENCES [LkpPickupRelation]([PickupRelationId]), 
    CONSTRAINT [FK_AuthorizeToPickup_ToPackage] FOREIGN KEY ([PackageId]) REFERENCES [Package]([PackageId])
)
