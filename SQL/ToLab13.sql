EXEC sp_helpindex '�������'
GO;

EXEC sp_helpindex '������'
GO;

CREATE INDEX parINDX3 ON ������� (���_��������, �������); 
EXEC sp_helpindex '�������'
GO;

CREATE INDEX conINDX3 ON ������ (���_��������, ���_��������); 
EXEC sp_helpindex '������'
GO;

SET SHOWPLAN_ALL ON;
GO
SELECT �����_���������, COUNT(�������.���_��������)as ʳ������_��������
FROM �������, ��������, ������ WHERE 
�������.���_�������� = ������.���_��������
AND ��������.���_���������=������.���_���������
GROUP BY �����_���������
GO
SET SHOWPLAN_ALL OFF;



