CREATE TABLE [Jobs].[JobDetails] (
    [JobID]         INT            IDENTITY (1, 1) NOT NULL,
    [JobSite]       INT            NOT NULL,
    [Employer]      INT            NOT NULL,
    [JobTitle]      NVARCHAR (64)  NOT NULL,
    [JobSiteLink]   NVARCHAR (MAX) NULL,
    [EmployerRef]   NVARCHAR (50)  NULL,
    [ClosingDate]   DATE           NULL,
    [ContactName]   NVARCHAR (50)  NULL,
    [ContactNumber] NVARCHAR (50)  NULL,
    [AddedToUC]     BIT            NULL
);


GO


CREATE TRIGGER [Jobs].[NewJobAdded] ON [Jobs].[JobDetails]
	AFTER INSERT
AS 
	declare @JID int  
    SET NOCOUNT ON;  
    SELECT @JID = JobID from inserted  

	INSERT INTO Jobs.[JobSearchHistory]
			   ([JobID]
			   ,[Status]
			   ,[StatusDate]
			   ,[StatusDescription])
		 VALUES
			   (@JID
			   ,1
			   ,GETDATE()
			   ,NULL)

GO

