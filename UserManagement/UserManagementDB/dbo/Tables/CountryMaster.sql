CREATE TABLE [dbo].[CountryMaster] (
    [CountryId]   INT            IDENTITY (1, 1) NOT NULL,
    [CountryName] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

