﻿CREATE TABLE [dbo].[LkpItemStatus]
(
	[ItemStatusId] INT NOT NULL CONSTRAINT PK_ITEMSTATUSID PRIMARY KEY, 
	[Enumeration] VARCHAR(25) NOT NULL, 
	[Caption] VARCHAR(25) NOT NULL, 
	[Description] VARCHAR(100) NOT NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastUpdate] DATETIME NOT NULL DEFAULT GetDate()
)
