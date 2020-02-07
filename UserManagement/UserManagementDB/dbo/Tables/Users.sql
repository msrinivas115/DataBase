CREATE TABLE [dbo].[Users] (
    [UserId]    INT            IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (100) NOT NULL,
    [LastName]  NVARCHAR (100) NOT NULL,
    [EMail]     NVARCHAR (50)  NOT NULL,
    [Age]       INT            NULL,
    [Address1]  NVARCHAR (100) NULL,
    [Address2]  NVARCHAR (100) NULL,
    [City]      NVARCHAR (100) NOT NULL,
    [Payment]   INT            NULL,
    [CountryId] INT            NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);





