CREATE TABLE [dbo].[Alter_Ego_Person_History] (
    [Alter_Ego_Person_History_ID] INT      IDENTITY (1, 1) NOT NULL,
    [History_Date]                DATETIME CONSTRAINT [DF_Alter_Ego_Person_History_History_Date] DEFAULT (getdate()) NOT NULL,
    [ChangeType]                  CHAR (1) NOT NULL,
    [Old_Alter_Ego_ID]            INT      NULL,
    [Old_Person_ID]               INT      NULL,
    [New_Alter_Ego_ID]            INT      NULL,
    [New_Person_ID]               INT      NULL,
    CONSTRAINT [PK_Alter_Ego_Person_History] PRIMARY KEY CLUSTERED ([Alter_Ego_Person_History_ID] ASC),
    CONSTRAINT [UQ_Alter_Ego_Person_History] UNIQUE NONCLUSTERED ([History_Date] ASC, [ChangeType] ASC, [Old_Alter_Ego_ID] ASC, [Old_Person_ID] ASC, [New_Alter_Ego_ID] ASC, [New_Person_ID] ASC)
);

