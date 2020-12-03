CREATE
TRIGGER видалити_договори ON Учасник 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = Код_учасника FROM deleted
DELETE FROM Договір WHERE Код_учасника = @Old
DELETE FROM Учасник WHERE Код_учасника = @Old
END;

DELETE FROM Учасник WHERE Код_учасника = 6 ;
SELECT * FROM Договір;

CREATE
TRIGGER адреса 
ON Учасник
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = Вулиця FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END;

INSERT INTO Учасник 
VALUES (6, 'Ірина', 'Івасюк','Іванівна','Львів','Повна','11','11', 975958365, '2017-03-10','w');

CREATE TRIGGER 
записати_у_архів ON Колектив 
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = Код_колективу FROM deleted
INSERT INTO Архів
SELECT * FROM Колектив
WHERE Код_колективу = @id
SELECT @id = Код_колективу FROM deleted
DELETE FROM Колектив WHERE Код_колективу = @id
END;

DELETE FROM Колектив WHERE Код_колективу = 3
SELECT * FROM Архів;
