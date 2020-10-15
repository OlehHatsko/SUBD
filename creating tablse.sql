CREATE TABLE Учасник(
	Код_учасника INTEGER NOT NULL,
	Прізвище CHAR(20) NOT NULL,
	Імя CHAR(15) NOT NULL,
	По_батькові CHAR(15) NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Помешкання CHAR(4) NOT NULL,
	Телефон INT,
	Дата_народження DATE NOT NULL,
	PRIMARY KEY(Код_учасника),
);

CREATE TABLE Викладач(
	Код_викладача INTEGER NOT NULL,
	Прізвище CHAR(20) NOT NULL,
	Імя CHAR(15) NOT NULL,
	По_батькові CHAR(15) NOT NULL,
	Телефон INT,
PRIMARY KEY(Код_викладача));

CREATE TABLE Тип_колективу(
	Код_типу INTEGER NOT NULL,
	Тип_колективу CHAR(40) NOT NULL,
	PRIMARY KEY (Код_типу)
);

CREATE TABLE Колектив(
	Код_колективу INTEGER NOT NULL,
	Код_типу INTEGER,
	Назва_колективу CHAR(50) NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
Дата_заснування DATE NOT NULL,
Вид_хореографії VARCHAR(20) NOT NULL, 
Вікова_категорія VARCHAR(3) NOT NULL,
	PRIMARY KEY(Код_колективу),
	CONSTRAINT Фк_тип_колективу
	FOREIGN KEY(Код_типу)
	REFERENCES Тип_колективу 
	ON UPDATE CASCADE
);

CREATE TABLE Тип_заходу(
	Код_типу_заходу INTEGER NOT NULL,
	Тип_заходу CHAR(50) NOT NULL,
	PRIMARY KEY (Код_типу_заходу));

CREATE TABLE Концерт(
	Код_концерту INTEGER NOT NULL,
	Код_типу_заходу INTEGER,
	Назва_концерту CHAR(50) NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL, 
	Тривалість TIME NOT NULL,
	Кількість_номерів INTEGER NOT NULL,
	Дата_проведення DATE NOT NULL,
	Ціна INTEGER NOT NULL,
	PRIMARY KEY(Код_концерту),
	CONSTRAINT Фк_тип_заходу
	FOREIGN KEY(Код_типу_заходу)
	REFERENCES Тип_заходу 
	ON UPDATE CASCADE
);

CREATE TABLE Нагорода(
	Код_нагороди INTEGER NOT NULL,
	Сума INTEGER NOT NULL,
	Тип_нагороди CHAR(30) NOT NULL,
	Рівень_нагороди CHAR(30) NOT NULL,
	PRIMARY KEY (Код_нагороди)
);

	
CREATE TABLE Облік(
	Код_обліку INTEGER NOT NULL,
	Код_концерту INTEGER,
	Код_нагороди INTEGER,
	Код_колективу INTEGER NOT NULL,
	Дата_запису DATE NOT NULL,
	PRIMARY KEY(Код_обліку),
	CONSTRAINT Фк_концерт
	FOREIGN KEY(Код_концерту)
	REFERENCES Концерт 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_нагорода
	FOREIGN KEY(Код_нагороди)
	REFERENCES Нагорода
	ON DELETE CASCADE,
	CONSTRAINT Фк_колектив
	FOREIGN KEY(Код_колективу)
	REFERENCES Колектив 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
	
CREATE TABLE Контракт(
Код_контракту INTEGER NOT NULL, 	
Код_викладача INTEGER NOT NULL,
	Код_колективу INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	PRIMARY KEY(Код_контракту),
	CONSTRAINT Фк_викладач
	FOREIGN KEY(Код_викладача)
	REFERENCES Викладач 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фкколективу
	FOREIGN KEY(Код_колективу)
	REFERENCES Колектив 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Договір(
Код_договору INTEGER NOT NULL,
	Код_учасника INTEGER NOT NULL,
	Код_колективу INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	PRIMARY KEY(Код_договору),
	CONSTRAINT Фк_учасник
	FOREIGN KEY(Код_учасника)
	REFERENCES Учасник 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_колективу
	FOREIGN KEY(Код_колективу)
	REFERENCES Колектив 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
