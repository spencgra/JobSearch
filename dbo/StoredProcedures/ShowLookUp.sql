-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ShowLookUp] 
AS
BEGIN
	SELECT * FROM Jobs.[StatusLookup]
	SELECT * FROM Interview.[InterviewTypeLookup]
END

GO

