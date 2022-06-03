

CREATE   VIEW dbo.Show_Alter_Ego_People
AS 
SELECT ae.Alter_Ego_ID, ae.Alter_Ego_Name, p.Person_ID, p.First_Name, p.Last_Name, aep.Sys_Start_Time, aep.Sys_End_Time 
FROM Alter_Ego_Person as aep 
	JOIN Person as p ON aep.Person_ID = p.Person_ID
	JOIN Alter_Ego as ae ON aep.Alter_Ego_ID = ae.Alter_Ego_ID
