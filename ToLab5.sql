BULK INSERT Договір
	FROM 'C:\Users\miste\OneDrive\Desktop\5 семестр\Системи управління базами даних\dgvrs.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')

SELECT * INTO Учасник1 FROM Учасник 
WHERE Код_учасника<4

SELECT * INTO Учасник2 FROM Учасник 
WHERE Код_учасника>2

SELECT * FROM Учасник1
UNION
SELECT * FROM Учасник2

SELECT * FROM Учасник1 WHERE
Код_учасника IN (SELECT Код_учасника FROM Учасник2)

SELECT * FROM Учасник1 WHERE
Код_учасника IN (SELECT Код_учасника FROM Учасник2)

SELECT * FROM Учасник1, Учасник2
