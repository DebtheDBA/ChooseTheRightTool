CREATE TABLE [dbo].[Alter_Ego_Person] (
    [Alter_Ego_Person_ID] INT                                                IDENTITY (1, 1) NOT NULL,
    [Person_ID]           INT                                                NOT NULL,
    [Alter_Ego_ID]        INT                                                CONSTRAINT [DF_Alter_Ego_Person_Alter_Ego_ID] DEFAULT ((1)) NOT NULL,
    [Sys_Start_Time]      DATETIME2 (7) GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
    [Sys_End_Time]        DATETIME2 (7) GENERATED ALWAYS AS ROW END HIDDEN   NOT NULL,
    CONSTRAINT [PK_Alter_Ego_Person] PRIMARY KEY CLUSTERED ([Alter_Ego_Person_ID] ASC),
    CONSTRAINT [FK_Alter_Ego_Person_Alter_Ego_ID] FOREIGN KEY ([Alter_Ego_ID]) REFERENCES [dbo].[Alter_Ego] ([Alter_Ego_ID]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_Alter_Ego_Person_Person_ID] FOREIGN KEY ([Person_ID]) REFERENCES [dbo].[Person] ([Person_ID]) ON DELETE CASCADE,
    CONSTRAINT [UQ_Alter_Ego_Person] UNIQUE NONCLUSTERED ([Person_ID] ASC, [Alter_Ego_ID] ASC),
    PERIOD FOR SYSTEM_TIME ([Sys_Start_Time], [Sys_End_Time])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[Alter_Ego_Person_Temporal_History], DATA_CONSISTENCY_CHECK=ON));


GO
CREATE NONCLUSTERED INDEX [IDX_Alter_Ego_Person_Alter_Ego_ID]
    ON [dbo].[Alter_Ego_Person]([Alter_Ego_ID] ASC);

