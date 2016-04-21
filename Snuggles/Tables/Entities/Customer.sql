CREATE TABLE [dbo].[Customer]
(
    [CustomerId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_CustomerId PRIMARY KEY, 
    [Firstname] VARCHAR(50) NOT NULL,
    [Lastname] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(1000) NOT NULL,
    [Password] VARCHAR(1000) NOT NULL,
    [Code] CHAR(8) NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
    [LastModified] DATETIME NOT NULL DEFAULT GetDate()
)
