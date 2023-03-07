CREATE TABLE [Interview].[InterviewTypeLookup] (
    [IntTypeID]     INT           IDENTITY (1, 1) NOT NULL,
    [InterviewType] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_InterviewTypeLookup] PRIMARY KEY CLUSTERED ([IntTypeID] ASC)
);


GO

