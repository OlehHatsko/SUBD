INSERT INTO Тип_колективу VALUES(1, 'Ансамбль');
INSERT INTO Тип_колективу VALUES(2, 'Заслужений колектив');
INSERT INTO Тип_колективу VALUES(3, 'Школа танцю');

INSERT INTO Колектив 
VALUES(1, 1, 'Вірського', 'Київ', 'Хрещатик', '43', '1988-11-11' ,'народна','18+');
INSERT INTO Колектив 
VALUES(2, 2, 'Ценат', 'Львів', 'Січових стрільців', '29', '2015-04-25' ,'cучасна','4+');
INSERT INTO Учасник 
VALUES(1,'Гацько', 'Олег', 'Сергійович', 'Львів', 'Шевченка', '11', '11',null, '2001-06-25');

INSERT INTO Учасник(Код_учасника,Прізвище, Імя, Місто,Вулиця,Будинок,Помешкання, Дата_народження)
VALUES(2, 'Лака', 'Назар', 'Львів', 'УПА', '12', '', '2002-07-04');

BULK INSERT Учасник
	FROM 'C:\Users\miste\OneDrive\Desktop\5 семестр\Системи управління базами даних\prts.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n');

DELETE FROM Учасник WHERE Код_учасника=3;

BULK INSERT Учасник
	FROM 'C:\Users\miste\OneDrive\Desktop\5 семестр\Системи управління базами даних\prts.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n');


