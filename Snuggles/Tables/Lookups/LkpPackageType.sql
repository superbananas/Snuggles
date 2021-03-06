﻿CREATE TABLE [dbo].[LkpPackageType]
(
	[PackageTypeId] INT NOT NULL CONSTRAINT PK_PackageTypeID PRIMARY KEY, 
	[Enumeration] VARCHAR(25) NOT NULL, 
	[Caption] VARCHAR(25) NOT NULL, 
	[Description] VARCHAR(100) NOT NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastModified] DATETIME NOT NULL DEFAULT GetDate()
)
