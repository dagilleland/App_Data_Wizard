-- Data and Structure sourced and adapted from http://www.loc.gov/standards/iso639-2/
CREATE TABLE [dbo].[ISO639_2]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Alpha3B] NCHAR(3) NOT NULL, 
    [Alpha3T] NCHAR(3) NULL, 
    [Alpha2] NCHAR(2) NULL, 
    [EnglishNames] NVARCHAR(128) NULL, 
    [FrenchNames] NVARCHAR(128) NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Technical Primary Key',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Alpha-3 Country Code (Bibliographic)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'Alpha3B'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Alpha-3 Country Code (Terminology)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'Alpha3T'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Alpha-2 Country Code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'Alpha2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'English Name of Language',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'EnglishNames'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'French Name of Language',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ISO639_2',
    @level2type = N'COLUMN',
    @level2name = N'FrenchNames'