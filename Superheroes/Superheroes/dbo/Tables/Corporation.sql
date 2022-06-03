CREATE TABLE [dbo].[Corporation] (
    [Corporation_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [Corporation_Name] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Corporation] PRIMARY KEY CLUSTERED ([Corporation_ID] ASC),
    CONSTRAINT [AK_Corporation] UNIQUE NONCLUSTERED ([Corporation_Name] ASC)
);

