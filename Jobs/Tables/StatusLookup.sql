CREATE TABLE [Jobs].[StatusLookup] (
    [StatusID]  INT           IDENTITY (1, 1) NOT NULL,
    [Status]    NVARCHAR (50) NOT NULL,
    [SortOrder] INT           NOT NULL,
    CONSTRAINT [PK_StatusLookup] PRIMARY KEY CLUSTERED ([StatusID] ASC)
);


GO

