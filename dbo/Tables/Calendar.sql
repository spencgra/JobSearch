CREATE TABLE [dbo].[Calendar] (
    [Date]             DATE          NULL,
    [DAY]              INT           NULL,
    [DaySuffix]        CHAR (2)      NULL,
    [DayName]          NVARCHAR (30) NULL,
    [ShortDayName]     NVARCHAR (3)  NULL,
    [DayOfWeek]        INT           NULL,
    [DayOfYear]        INT           NULL,
    [IsWeekend]        INT           NOT NULL,
    [Week]             INT           NULL,
    [FirstOfWeek]      DATE          NULL,
    [LastOfWeek]       DATE          NULL,
    [WeekOfMonth]      TINYINT       NULL,
    [TheMonth]         INT           NULL,
    [MonthName]        NVARCHAR (30) NULL,
    [ShortMonthName]   NVARCHAR (3)  NULL,
    [FirstOfMonth]     DATE          NULL,
    [LastOfMonth]      DATE          NULL,
    [FirstOfNextMonth] DATE          NULL,
    [LastOfNextMonth]  DATE          NULL,
    [Quarter]          INT           NULL,
    [YY-QQ]            VARCHAR (5)   NULL,
    [FirstOfQuarter]   DATE          NULL,
    [LastOfQuarter]    DATE          NULL,
    [Year]             INT           NULL,
    [FirstOfYear]      DATE          NULL,
    [LastOfYear]       DATE          NULL,
    [IsLeapYear]       BIT           NULL,
    [Has53Weeks]       INT           NOT NULL
);


GO

CREATE UNIQUE CLUSTERED INDEX [PK_Calendar]
    ON [dbo].[Calendar]([Date] ASC);


GO

