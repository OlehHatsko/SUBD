INSERT INTO ���_��������� VALUES(1, '��������');
INSERT INTO ���_��������� VALUES(2, '���������� ��������');
INSERT INTO ���_��������� VALUES(3, '����� �����');

INSERT INTO �������� 
VALUES(1, 1, '³�������', '���', '��������', '43', '1988-11-11' ,'�������','18+');
INSERT INTO �������� 
VALUES(2, 2, '�����', '����', 'ѳ����� ��������', '29', '2015-04-25' ,'c������','4+');
INSERT INTO ������� 
VALUES(1,'������', '����', '���������', '����', '��������', '11', '11',null, '2001-06-25');

INSERT INTO �������(���_��������,�������, ���, ̳���,������,�������,����������, ����_����������)
VALUES(2, '����', '�����', '����', '���', '12', '', '2002-07-04');

BULK INSERT �������
	FROM 'C:\Users\miste\OneDrive\Desktop\5 �������\������� ��������� ������ �����\prts.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n');

DELETE FROM ������� WHERE ���_��������=3;

BULK INSERT �������
	FROM 'C:\Users\miste\OneDrive\Desktop\5 �������\������� ��������� ������ �����\prts.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n');


