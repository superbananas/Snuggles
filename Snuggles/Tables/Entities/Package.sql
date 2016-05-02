CREATE TABLE [dbo].[Package]
(
    [PackageId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PackageId PRIMARY KEY, 
    [Weight] FLOAT NULL, 
    [PackageType] INT NOT NULL,
    [PackageStatus] INT NOT NULL,
    [RecievedDate] DATETIME NULL, 
    [PickedupBy] INT NULL,
    [PickedUpDate] DATETIME NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
    [LastModified] DATETIME NOT NULL DEFAULT GetDate(),
    CONSTRAINT [FK_Package_PackageStatus] FOREIGN KEY ([PackageStatus]) REFERENCES [LkpPackageStatus]([PackageStatusId]),
    CONSTRAINT [FK_Package_PackageType] FOREIGN KEY ([PackageType]) REFERENCES [LkpPackageType]([PackageTypeId]), 
    CONSTRAINT [FK_Package_AuthorizedToPickup] FOREIGN KEY ([PickedupBy]) REFERENCES [AuthorizeToPickup]([AuthorizeToPickupId])
)
