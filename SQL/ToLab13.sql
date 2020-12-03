EXEC sp_helpindex 'Учасник'
GO;

EXEC sp_helpindex 'Договір'
GO;

CREATE INDEX parINDX3 ON Учасник (Код_учасника, телефон); 
EXEC sp_helpindex 'Учасник'
GO;

CREATE INDEX conINDX3 ON Договір (Код_договору, Код_учасника); 
EXEC sp_helpindex 'Договір'
GO;

SET SHOWPLAN_ALL ON;
GO
SELECT Назва_колективу, COUNT(Учасник.Код_учасника)as Кількість_учасників
FROM Учасник, Колектив, Договір WHERE 
Учасник.Код_учасника = Договір.Код_учасника
AND Колектив.Код_колективу=Договір.Код_колективу
GROUP BY Назва_колективу
GO
SET SHOWPLAN_ALL OFF;



