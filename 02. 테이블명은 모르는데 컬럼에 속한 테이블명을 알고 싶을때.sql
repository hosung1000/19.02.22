/* 테이블 명은 모르는데 컬럼을 알고 싶을때*/

/*인터넷 검색*/
select TABLE_NAME
from INFORMATION_SCHEMA.COLUMNS a
where a.COLUMN_NAME LIKE N'%regDate%';

/*직접 찾아보면서 하기*/
SELECT * FROM sys.tables;
SELECT * FROM sys.columns;

/*공통적으로 object_id 를 가지고 있다. 포인트는 object_id! */

/*첫번째 방법*/
SELECT tables.name FROM sys.tables INNER JOIN sys.columns on (tables.object_id = columns.object_id AND columns.name='modDate');


/*두번째 방법*/
SELECT tables.name FROM sys.tables
WHERE object_id IN (SELECT object_id FROM sys.columns WHERE name='modDate');

/*세번째 방법*/
SELECT (SELECT name FROM sys.tables WHERE object_id = C.object_id ) AS table_name
from sys.columns as C
WHERE c.name = 'modDate';



	




