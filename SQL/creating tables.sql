CREATE TABLE �������(
	���_�������� INTEGER NOT NULL,
	������� CHAR(20) NOT NULL,
	��� CHAR(15) NOT NULL,
	��_������� CHAR(15) NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	���������� CHAR(4) NOT NULL,
	������� INT,
	����_���������� DATE NOT NULL,
	PRIMARY KEY(���_��������),
);

CREATE TABLE ��������(
	���_��������� INTEGER NOT NULL,
	������� CHAR(20) NOT NULL,
	��� CHAR(15) NOT NULL,
	��_������� CHAR(15) NOT NULL,
	������� INT,
PRIMARY KEY(���_���������));

CREATE TABLE ���_���������(
	���_���� INTEGER NOT NULL,
	���_��������� CHAR(40) NOT NULL,
	PRIMARY KEY (���_����)
);

CREATE TABLE ��������(
	���_��������� INTEGER NOT NULL,
	���_���� INTEGER,
	�����_��������� CHAR(50) NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
����_���������� DATE NOT NULL,
���_����������� VARCHAR(20) NOT NULL, 
³����_�������� VARCHAR(3) NOT NULL,
	PRIMARY KEY(���_���������),
	CONSTRAINT ��_���_���������
	FOREIGN KEY(���_����)
	REFERENCES ���_��������� 
	ON UPDATE CASCADE
);

CREATE TABLE ���_������(
	���_����_������ INTEGER NOT NULL,
	���_������ CHAR(50) NOT NULL,
	PRIMARY KEY (���_����_������));

CREATE TABLE �������(
	���_�������� INTEGER NOT NULL,
	���_����_������ INTEGER,
	�����_�������� CHAR(50) NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL, 
	��������� TIME NOT NULL,
	ʳ������_������ INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	ֳ�� INTEGER NOT NULL,
	PRIMARY KEY(���_��������),
	CONSTRAINT ��_���_������
	FOREIGN KEY(���_����_������)
	REFERENCES ���_������ 
	ON UPDATE CASCADE
);

CREATE TABLE ��������(
	���_�������� INTEGER NOT NULL,
	���� INTEGER NOT NULL,
	���_�������� CHAR(30) NOT NULL,
	г����_�������� CHAR(30) NOT NULL,
	PRIMARY KEY (���_��������)
);

	
CREATE TABLE ����(
	���_����� INTEGER NOT NULL,
	���_�������� INTEGER,
	���_�������� INTEGER,
	���_��������� INTEGER NOT NULL,
	����_������ DATE NOT NULL,
	PRIMARY KEY(���_�����),
	CONSTRAINT ��_�������
	FOREIGN KEY(���_��������)
	REFERENCES ������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_��������
	FOREIGN KEY(���_��������)
	REFERENCES ��������
	ON DELETE CASCADE,
	CONSTRAINT ��_��������
	FOREIGN KEY(���_���������)
	REFERENCES �������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
	
CREATE TABLE ��������(
���_��������� INTEGER NOT NULL, 	
���_��������� INTEGER NOT NULL,
	���_��������� INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	PRIMARY KEY(���_���������),
	CONSTRAINT ��_��������
	FOREIGN KEY(���_���������)
	REFERENCES �������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT �����������
	FOREIGN KEY(���_���������)
	REFERENCES �������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE ������(
���_�������� INTEGER NOT NULL,
	���_�������� INTEGER NOT NULL,
	���_��������� INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	PRIMARY KEY(���_��������),
	CONSTRAINT ��_�������
	FOREIGN KEY(���_��������)
	REFERENCES ������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_���������
	FOREIGN KEY(���_���������)
	REFERENCES �������� 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
