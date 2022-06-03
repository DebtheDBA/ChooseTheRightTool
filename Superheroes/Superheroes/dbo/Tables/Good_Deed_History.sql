CREATE TABLE [dbo].[Good_Deed_History] (
    [Good_Deed_History_ID]  INT           IDENTITY (1, 1) NOT NULL,
    [Good_Deed_Type_ID]     TINYINT       NULL,
    [Good_Deed_Person_ID]   INT           NULL,
    [Good_Deed_Description] VARCHAR (250) NULL,
    [Good_Deed_Timestamp]   DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Good_Deed_History] PRIMARY KEY CLUSTERED ([Good_Deed_History_ID] ASC)
);

