﻿CREATE TABLE [dbo].[ItemImage]
(
	[ItemImageId] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_ITEMIMAGEID PRIMARY KEY, 
	[ItemId] INT NOT NULL,
	[Caption] VARCHAR(50) NOT NULL,
	[PictureUrl] VARCHAR(250) NULL, 
	[ThumbnailUrl] VARCHAR(250) NULL, 
	[CreateDate] DATETIME NOT NULL DEFAULT GetDate(), 
	[LastUpdate] DATETIME NOT NULL DEFAULT GetDate(),
	CONSTRAINT [FK_ItemImage_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([ItemId])
)