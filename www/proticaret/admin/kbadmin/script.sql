 
CREATE TABLE [dbo].[KnowledgeBase](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,	
	[PortalId] [int],
	[ItemName] [nvarchar](100) NULL CONSTRAINT [DF_KnowledgeBase_ItemName]  DEFAULT (N'.'),
	[Parent] [int] NULL,	 
	[IsActive] [bit] NULL CONSTRAINT [DF_KnowledgeBase_IsActive]  DEFAULT ((0)),		
	[Lineage] [nvarchar](100) NULL,
	[Depth] [int] NULL CONSTRAINT [DF_KnowledgeBase_Depth]  DEFAULT ((0)),
	[Description] [ntext] NULL,
	[ShowOrder] [int] NULL CONSTRAINT [DF_KnowledgeBase_ShowOrder]  DEFAULT ((1)),	 	
	[Title] [varchar](500) NULL,
	[Desc] [varchar](500) NULL,
	[Keywords] [varchar](500) NULL,
	[Url] [varchar](160) NULL,	 
	[SearchKeywords] [varchar](1000) NULL,
	[CreatedDate] [smalldatetime] NULL CONSTRAINT [DF_KnowledgeBase_CreatedDate]  DEFAULT (getdate())	 
 )
  
GO 

CREATE TRIGGER [dbo].[KnowledgeBase_Delete]
ON [dbo].[KnowledgeBase]
FOR  DELETE 
AS	
delete  KnowledgeBase where Lineage like ((select Lineage from deleted) + '%')

GO
 
CREATE TRIGGER [dbo].[KnowledgeBase_InsertTrigger]
ON [dbo].[KnowledgeBase]
FOR INSERT AS
UPDATE child    
    SET Depth = ISNULL(parent.Depth + 1,0),     
Lineage = ISNULL(parent.Lineage,'/') + LTrim(Str(child.ItemId)) + '/' ,        
Url=ISNULL(parent.Url,'/kb/') + (dbo.doUrl(child.ItemName) + '/')
FROM KnowledgeBase child INNER JOIN inserted i ON i.ItemId=child.ItemId
LEFT OUTER JOIN KnowledgeBase parent ON child.Parent=parent.ItemId

GO

CREATE TRIGGER [dbo].[KnowledgeBase_UpdateTrigger]
ON [dbo].[KnowledgeBase]
FOR UPDATE AS
UPDATE child
    SET 
 IsActive=case 
when old.IsActive=1 then child.IsActive
when old.IsActive=0 then 0
end,
    Depth = child.Depth - old.Depth + ISNULL(parent.Depth + 1,0),
    Lineage = ISNULL(parent.Lineage,'/') + LTrim(Str(old.ItemId)) + '/' + right(child.Lineage, len(child.Lineage) - len(old.Lineage)),    
	Url =ISNULL(parent.Url,'/kb/') + dbo.doUrl(old.ItemName) + '/' + dbo.doUrl(right(child.Url, len(child.Url) - len(old.Url)))     
FROM KnowledgeBase child INNER JOIN inserted old ON child.Lineage LIKE old.Lineage + '%'
LEFT OUTER JOIN KnowledgeBase parent ON old.Parent=parent.ItemId
