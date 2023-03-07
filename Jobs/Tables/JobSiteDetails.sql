CREATE TABLE [Jobs].[JobSiteDetails] (
    [SiteID]      INT            IDENTITY (1, 1) NOT NULL,
    [SiteName]    NVARCHAR (50)  NULL,
    [SiteTopLink] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_JobSiteDetails] PRIMARY KEY CLUSTERED ([SiteID] ASC)
);


GO

