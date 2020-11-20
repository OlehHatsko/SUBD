SELECT Назва_колективу, COUNT(код_договору) as кількість_учасників
FROM Колектив INNER JOIN Договір
ON Колектив.Код_колективу = Договір.Код_колективу
GROUP BY Назва_колективу

SELECT YEAR(Дата_заключення) as Рік, COUNT(Учасник.Код_учасника)
FROM Договір INNER JOIN Учасник
ON Договір.Код_учасника = Учасник.Код_учасника
GROUP BY YEAR(Дата_заключення)

SELECT AVG(DATEDIFF(YEAR,Дата_народження, CURRENT_TIMESTAMP)) as Середній_вік
, Стать
FROM Учасник
GROUP BY Стать

SELECT TOP 1 DATEDIFF(YEAR,Дата_народження, CURRENT_TIMESTAMP) as Вік,
Прізвище, Імя
FROM Учасник ORDER BY Вік DESC
