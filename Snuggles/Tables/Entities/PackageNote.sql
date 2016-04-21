CREATE TABLE [dbo].[PackageNote]
(
    [PackageNoteId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PackageNoteID PRIMARY KEY, 
    [PackageId] INT NOT NULL, 
    [Note] VARCHAR(2500) NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
    [LastModified] DATETIME NOT NULL DEFAULT GetDate(), 
    CONSTRAINT [FK_PackageNote_ToPackage] FOREIGN KEY ([PackageId]) REFERENCES [Package]([PackageId])
)
