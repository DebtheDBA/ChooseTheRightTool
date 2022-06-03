CREATE TABLE [dbo].[Alter_Ego] (
    [Alter_Ego_ID]      INT          IDENTITY (1, 1) NOT NULL,
    [Alter_Ego_Name]    VARCHAR (50) NOT NULL,
    [Comic_Universe_ID] INT          NOT NULL,
    CONSTRAINT [PK_Alter_Ego] PRIMARY KEY CLUSTERED ([Alter_Ego_ID] ASC),
    CONSTRAINT [FK_Alter_Ego_Comic_Universe] FOREIGN KEY ([Comic_Universe_ID]) REFERENCES [dbo].[Comic_Universe] ([Comic_Universe_ID]),
    CONSTRAINT [AK_Alter_Ego] UNIQUE NONCLUSTERED ([Alter_Ego_Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FK_Alter_Ego_Comic_Universe]
    ON [dbo].[Alter_Ego]([Comic_Universe_ID] ASC);

