CREATE TABLE [Employer].[EmployerDatails] (
    [EmpID]        INT            IDENTITY (1, 1) NOT NULL,
    [EmployerName] NVARCHAR (50)  NULL,
    [EmployerSite] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_EmployerDatails] PRIMARY KEY CLUSTERED ([EmpID] ASC)
);


GO

