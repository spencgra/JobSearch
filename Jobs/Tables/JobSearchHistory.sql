CREATE TABLE [Jobs].[JobSearchHistory] (
    [HistID]            INT            IDENTITY (1, 1) NOT NULL,
    [JobID]             INT            NOT NULL,
    [Status]            INT            NOT NULL,
    [StatusDate]        DATE           CONSTRAINT [DF_JobSearchHistory_StatusDate] DEFAULT (getdate()) NOT NULL,
    [StatusDescription] NVARCHAR (MAX) NULL
);


GO

