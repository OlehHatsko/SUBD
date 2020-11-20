CREATE FUNCTION FN_ENCRIPTIONS(@str varchar(250))
RETURNS varbinary(500)
AS
BEGIN 
DECLARE @encript varbinary(500)
SET @encript = ENCRYPTBYPASSPHRASE('KEY',@str)
RETURN (@encript)
END
GO;

CREATE FUNCTION FN_DECRIPTIONS(@encryp varbinary(500))
RETURNS varchar(250)
AS
BEGIN
DECLARE @decript varbinary(500)
SET @decript = DECRYPTBYPASSPHRASE('KEY',@encryp)
RETURN (@decript)
END
GO;

CREATE PROCEDURE CountDate @name varchar(20), @date1 date, @date2 date AS
BEGIN
DECLARE @error VARCHAR(20)
SET @error = 'Некоректно задані дати';
IF (@date1<=@date2) 
BEGIN
CREATE TABLE Дати (Назва_колективу CHAR(20),
кількість INT);
INSERT INTO Дати SELECT Назва_колективу ,
COUNT(Договір.Код_договору) AS кількість
FROM (Учасник INNER JOIN Договір
ON Учасник.Код_учасника=Договір.Код_учасника
INNER JOIN Колектив
ON Колектив.Код_колективу = Договір.Код_колективу)
WHERE Договір.Дата_заключення BETWEEN @date1 AND @date2
GROUP BY Назва_колективу;
END;
ELSE SELECT @error;
END;

SELECT Прізвище, Імя, dbo.FN_ENCRIPTIONS(Телефон) AS Шифрований_опис
FROM Учасник;

EXEC CountDate 'Ценат', '2019-01-01', '2020-12-12';
select * from Дати;

EXEC CountDate 'Ценат', '2020-01-01', '2019-12-12';
