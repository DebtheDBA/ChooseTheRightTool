CREATE TABLE [dbo].[Person] (
    [Person_ID]  INT          IDENTITY (1, 1) NOT NULL,
    [First_Name] VARCHAR (50) NOT NULL,
    [Last_Name]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([Person_ID] ASC)
);


GO

-- Alter remaining trigger on Person
CREATE   TRIGGER Person_itr ON dbo.Person
FOR INSERT
AS
BEGIN

	INSERT INTO Alter_Ego_Person
	SELECT p.Person_ID, ae.Alter_Ego_ID
	FROM inserted as p
		CROSS JOIN Alter_Ego as ae
	WHERE ae.Alter_Ego_Name = 'Average Citizen'
	
END
