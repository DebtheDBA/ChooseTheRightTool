CREATE TABLE [dbo].[Comic_Universe] (
    [Comic_Universe_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [Comic_Universe_Name] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Comic_Universe] PRIMARY KEY CLUSTERED ([Comic_Universe_ID] ASC),
    CONSTRAINT [AK_Comic_Universe] UNIQUE NONCLUSTERED ([Comic_Universe_Name] ASC)
);

