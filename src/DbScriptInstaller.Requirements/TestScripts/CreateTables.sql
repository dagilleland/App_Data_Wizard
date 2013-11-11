CREATE TABLE [dbo].[StreetType]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [StreetType] NVARCHAR(50) NOT NULL, 
    [Abbreviation] NVARCHAR(16) NULL, 
    [Language] NVARCHAR(7) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Technical Primary Key',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetType',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Full name of street type',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetType',
    @level2type = N'COLUMN',
    @level2name = N'StreetType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Common abbreviation',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetType',
    @level2type = N'COLUMN',
    @level2name = N'Abbreviation'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Language-Country code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetType',
    @level2type = N'COLUMN',
    @level2name = N'Language'