CREATE TABLE [dbo].[Alter_Ego_Person_Temporal_History] (
    [Alter_Ego_Person_ID] INT           NOT NULL,
    [Person_ID]           INT           NOT NULL,
    [Alter_Ego_ID]        INT           NOT NULL,
    [Sys_Start_Time]      DATETIME2 (7) NOT NULL,
    [Sys_End_Time]        DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_Alter_Ego_Person_Temporal_History]
    ON [dbo].[Alter_Ego_Person_Temporal_History]([Sys_End_Time] ASC, [Sys_Start_Time] ASC) WITH (DATA_COMPRESSION = PAGE);

