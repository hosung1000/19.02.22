/* ���̺� ���� �𸣴µ� �÷��� �˰� ������*/

/*���ͳ� �˻�*/
select TABLE_NAME
from INFORMATION_SCHEMA.COLUMNS a
where a.COLUMN_NAME LIKE N'%regDate%';

/*���� ã�ƺ��鼭 �ϱ�*/
SELECT * FROM sys.tables;
SELECT * FROM sys.columns;

/*���������� object_id �� ������ �ִ�. ����Ʈ�� object_id! */

/*ù��° ���*/
SELECT tables.name FROM sys.tables INNER JOIN sys.columns on (tables.object_id = columns.object_id AND columns.name='modDate');


/*�ι�° ���*/
SELECT tables.name FROM sys.tables
WHERE object_id IN (SELECT object_id FROM sys.columns WHERE name='modDate');

/*����° ���*/
SELECT (SELECT name FROM sys.tables WHERE object_id = C.object_id ) AS table_name
from sys.columns as C
WHERE c.name = 'modDate';



	




