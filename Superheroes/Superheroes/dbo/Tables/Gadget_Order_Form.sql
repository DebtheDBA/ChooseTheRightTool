CREATE TABLE [dbo].[Gadget_Order_Form] (
    [Order_ID]       INT             IDENTITY (1, 1) NOT NULL,
    [Order_Date]     DATETIME        CONSTRAINT [DF_Gadget_Order_Form_Order_Date] DEFAULT (getdate()) NOT NULL,
    [Person_ID]      INT             NOT NULL,
    [Corporation_ID] INT             NULL,
    [Gadget_ID]      INT             NOT NULL,
    [Number_Ordered] INT             NOT NULL,
    [Price_Per_Item] NUMERIC (19, 2) CONSTRAINT [DF_Gadget_Order_Form_Price_Per_Item] DEFAULT ((0)) NOT NULL,
    [Tax]            NUMERIC (19, 2) CONSTRAINT [DF_Gadget_Order_Form_Tax] DEFAULT ((0)) NOT NULL,
    [Shipping]       NUMERIC (19, 2) CONSTRAINT [DF_Gadget_Order_Form_Shipping] DEFAULT ((0)) NOT NULL,
    [Total_Due]      NUMERIC (19, 2) CONSTRAINT [DF_Gadget_Order_Form_TotalDue] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Gadget_Order_Form] PRIMARY KEY CLUSTERED ([Order_ID] ASC),
    CONSTRAINT [CK_Gadget_Order_Form_Number_Ordered] CHECK ([Number_Ordered]>=(0) AND [Number_Ordered]<(10000)),
    CONSTRAINT [FK_Gadget_Order_Form_Corporation] FOREIGN KEY ([Corporation_ID]) REFERENCES [dbo].[Corporation] ([Corporation_ID]),
    CONSTRAINT [FK_Gadget_Order_Form_Gadget] FOREIGN KEY ([Gadget_ID]) REFERENCES [dbo].[Gadget] ([Gadget_ID]),
    CONSTRAINT [FK_Gadget_Order_Form_Person] FOREIGN KEY ([Person_ID]) REFERENCES [dbo].[Person] ([Person_ID]),
    CONSTRAINT [UQ_Gadget_Order_Form] UNIQUE NONCLUSTERED ([Order_Date] ASC, [Person_ID] ASC, [Corporation_ID] ASC, [Gadget_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Gadget_Order_Form_Person]
    ON [dbo].[Gadget_Order_Form]([Person_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Gadget_Order_Form_Corporation]
    ON [dbo].[Gadget_Order_Form]([Corporation_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Gadget_Order_Form_Gadget]
    ON [dbo].[Gadget_Order_Form]([Gadget_ID] ASC);

