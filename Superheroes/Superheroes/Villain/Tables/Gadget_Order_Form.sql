CREATE TABLE [Villain].[Gadget_Order_Form] (
    [Order_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Order_Date]     DATETIME      CONSTRAINT [DF_Villain_Gadget_Order_Form_Order_Date] DEFAULT (getdate()) NOT NULL,
    [Person_ID]      INT           NULL,
    [Corporation_ID] INT           NULL,
    [Gadget_ID]      VARCHAR (100) NULL,
    [Number_Ordered] FLOAT (53)    NULL,
    [Price_Per_Item] FLOAT (53)    NULL,
    [Tax]            MONEY         NULL,
    [Shipping]       MONEY         NULL,
    [Total_Due]      INT           NULL,
    CONSTRAINT [PK_Villain_Gadget_Order_Form] PRIMARY KEY CLUSTERED ([Order_ID] ASC)
);

