CREATE TABLE [dbo].[Good_Deed_Type] (
    [Good_Deed_Type_ID]   TINYINT      IDENTITY (1, 1) NOT NULL,
    [Good_Deed_Type_Name] VARCHAR (50) NULL,
    CONSTRAINT [PK_Good_Deed_Type] PRIMARY KEY CLUSTERED ([Good_Deed_Type_ID] ASC)
);

