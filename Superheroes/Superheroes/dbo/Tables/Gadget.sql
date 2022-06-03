CREATE TABLE [dbo].[Gadget] (
    [Gadget_ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Gadget_Name] VARCHAR (50)  NOT NULL,
    [Gadget_Desc] VARCHAR (254) NULL,
    CONSTRAINT [PK_Gadget] PRIMARY KEY CLUSTERED ([Gadget_ID] ASC),
    CONSTRAINT [AK_Gadget] UNIQUE NONCLUSTERED ([Gadget_Name] ASC)
);

