BULK INSERT ������
	FROM 'C:\Users\miste\OneDrive\Desktop\5 �������\������� ��������� ������ �����\dgvrs.csv' 
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')

SELECT * INTO �������1 FROM ������� 
WHERE ���_��������<4

SELECT * INTO �������2 FROM ������� 
WHERE ���_��������>2

SELECT * FROM �������1
UNION
SELECT * FROM �������2

SELECT * FROM �������1 WHERE
���_�������� IN (SELECT ���_�������� FROM �������2)

SELECT * FROM �������1 WHERE
���_�������� IN (SELECT ���_�������� FROM �������2)

SELECT * FROM �������1, �������2
