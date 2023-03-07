-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ShowLookUp 
AS
BEGIN
	SELECT * FROM [dbo].[StatusLookup]
	SELECT * FROM [dbo].[InterviewTypeLookup]
END

GO

