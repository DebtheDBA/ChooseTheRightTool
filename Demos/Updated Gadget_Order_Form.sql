CREATE TABLE [Villain].[Gadget_Order_Form] (
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [datetime] NOT NULL
        CONSTRAINT [DF_Villain_Gadget_Order_Form_Order_Date]  DEFAULT (getdate()) ,
	[Person_ID] [int] NOT NULL,
	[Corporation_ID] [int] NULL,
	[Gadget_ID] [int] NULL,
	[Number_Ordered] [float] NULL,
	[Price_Per_Item] [float] NULL,
	[Tax] [money] NULL,
	[Shipping] [money] NULL,
	[Total_Due] [int] NULL,
    CONSTRAINT [PK_Villain_Gadget_Order_Form] PRIMARY KEY CLUSTERED ([Order_ID] ASC),
    CONSTRAINT [FK_VillainGadgetOrderForm_VillainGadget] FOREIGN KEY([Gadget_ID]) REFERENCES [Villain].[Gadget] ([Gadget_ID]),
    CONSTRAINT [PK_VillainGadgetOrderForm_dboPerson] FOREIGN KEY([Person_ID]) REFERENCES [dbo].[Person] ([Person_ID])
);
GO

CREATE NONCLUSTERED INDEX [IX_VillainGadgetOrderForm_GadgetID] ON [Villain].[Gadget_Order_Form]
(
	[Gadget_ID] ASC
)
GO