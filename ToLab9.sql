SELECT �����_���������, COUNT(���_��������) as �������_��������
FROM �������� INNER JOIN ������
ON ��������.���_��������� = ������.���_���������
GROUP BY �����_���������

SELECT YEAR(����_����������) as г�, COUNT(�������.���_��������)
FROM ������ INNER JOIN �������
ON ������.���_�������� = �������.���_��������
GROUP BY YEAR(����_����������)

SELECT AVG(DATEDIFF(YEAR,����_����������, CURRENT_TIMESTAMP)) as �������_��
, �����
FROM �������
GROUP BY �����

SELECT TOP 1 DATEDIFF(YEAR,����_����������, CURRENT_TIMESTAMP) as ³�,
�������, ���
FROM ������� ORDER BY ³� DESC
