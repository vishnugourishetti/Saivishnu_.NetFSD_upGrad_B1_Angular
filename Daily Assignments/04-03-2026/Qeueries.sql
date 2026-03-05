select FIRST_NAME as WORKER_NAME 
from Worker ;

Select upper(FIRST_NAME) FIRST_NAME from Worker;

Select  DISTINCT DEPARTMENT
FROM Worker;

SELECT SUBSTRING(FIRST_NAME,1,3)
FROM Worker;

SELECT CHARINDEX('a','Amitabh');

SELECT RTRIM(FIRST_NAME)
FROM Worker;

SELECT LTRIM(DEPARTMENT)
FROM Worker;

SELECT DISTINCT DEPARTMENT, len(DEPARTMENT) AS Length from worker;

select REPLACE(FIRST_NAME,'a','A') from Worker;

select FIRST_NAME + ' ' + LAST_NAME AS COMPLETE_NAME
FROM Worker;


select * from Worker ORDER by FIRST_NAME ASC;
 
select * from Worker order by FIRST_NAME ASC, DEPARTMENT DESC;


select *from Worker where FIRST_NAME IN('vipul','Satish');

select *from Worker where FIRST_NAME NOT IN('vipul','Satish');

Select * from Worker where DEPARTMENT ='Admin';

Select * from Worker where FIRST_NAME like '%a%';
Select * from Worker where FIRST_NAME like '%a';


SELECT *
FROM Worker
WHERE FIRST_NAME LIKE '%h' AND LEN(FIRST_NAME) = 6;

SELECT *
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

SELECT *
FROM Worker
WHERE MONTH(JOINING_DATE) = 2
AND YEAR(JOINING_DATE) = 2014;


SELECT FIRST_NAME, SALARY
FROM Worker
WHERE SALARY>=50000 AND SALARY<=100000;--between 50000 and 100000


SELECT DEPARTMENT, COUNT(*) AS Worker_Count
FROM Worker
GROUP BY DEPARTMENT
ORDER BY Worker_Count DESC;

SELECT *
FROM Worker
WHERE WORKER_ID IN
(
SELECT WORKER_REF_ID
FROM Title
WHERE WORKER_TITLE = 'Manager'
);

SELECT GETDATE();

Select Top 10* from Worker;








