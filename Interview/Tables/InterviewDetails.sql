CREATE TABLE [Interview].[InterviewDetails] (
    [intID]             INT            IDENTITY (1, 1) NOT NULL,
    [JobID]             INT            NOT NULL,
    [InterviewDate]     DATETIME       NOT NULL,
    [InterviewType]     INT            NOT NULL,
    [InterviewLocation] NVARCHAR (255) NOT NULL,
    [InterviewNotes]    NVARCHAR (255) NULL
);


GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [Interview].[InterViewAdded]
   ON  [Interview].[InterviewDetails]
   AFTER INSERT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @JID int
	DECLARE @InterViewDate date

    SELECT @JID = JobID from inserted


	INSERT INTO [dbo].[JobSearchHistory]
			   ([JobID]
			   ,[Status]
			   ,[StatusDate]
			   ,[StatusDescription])
		 VALUES
			   (@JID
			   ,3
			   ,GETDATE()
			   ,NULL)

END

GO

