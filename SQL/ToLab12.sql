CREATE
TRIGGER ��������_�������� ON ������� 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = ���_�������� FROM deleted
DELETE FROM ������ WHERE ���_�������� = @Old
DELETE FROM ������� WHERE ���_�������� = @Old
END;

DELETE FROM ������� WHERE ���_�������� = 6 ;
SELECT * FROM ������;

CREATE
TRIGGER ������ 
ON �������
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = ������ FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END;

INSERT INTO ������� 
VALUES (6, '�����', '������','�������','����','�����','11','11', 975958365, '2017-03-10','w');

CREATE TRIGGER 
��������_�_����� ON �������� 
INSTEAD OF DELETE
AS
BEGIN
DECLARE @id INT
SELECT @id = ���_��������� FROM deleted
INSERT INTO �����
SELECT * FROM ��������
WHERE ���_��������� = @id
SELECT @id = ���_��������� FROM deleted
DELETE FROM �������� WHERE ���_��������� = @id
END;

DELETE FROM �������� WHERE ���_��������� = 3
SELECT * FROM �����;
