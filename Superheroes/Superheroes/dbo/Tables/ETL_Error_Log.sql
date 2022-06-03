CREATE TABLE [dbo].[ETL_Error_Log] (
    [ETL_Error_Log_ID]  INT            IDENTITY (1, 1) NOT NULL,
    [Error_Description] VARCHAR (500)  NULL,
    [CSV_Data]          VARCHAR (1000) NULL,
    [Error_Timestamp]   DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_ETL_Error_Log] PRIMARY KEY CLUSTERED ([ETL_Error_Log_ID] ASC)
);

