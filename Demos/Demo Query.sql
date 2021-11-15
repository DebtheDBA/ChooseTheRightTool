USE Superheroes
GO

SELECT VG.Order_Date,
       p.First_Name,
       p.Last_Name,
       G.Gadget_Name,
       VG.Number_Ordered,
       VG.Price_Per_Item,
       VG.Tax,
       VG.Shipping,
       (VG.Number_Ordered * VG.Price_Per_Item) + VG.Tax + VG.Shipping AS Calculated_Total,
       VG.Total_Due
FROM dbo.Gadget_Order_Form AS VG
    JOIN dbo.Person AS p
        ON VG.Person_ID = p.Person_ID
    JOIN dbo.Gadget AS G
        ON VG.Gadget_ID = G.Gadget_ID
WHERE VG.Shipping IS NOT NULL;
