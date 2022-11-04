SET-1 

CREATE TABLE employee (
  ID INT PRIMARY KEY,
  DEPTID INT,
  NAME VARCHAR(10),
  DESIG VARCHAR(10),
  BASIC INT,
  SEX VARCHAR(1)
   );

 DESC employee;

 INSERT INTO employee VALUES(101,1,'RAM','TYPIST',2000,'M');
 INSERT INTO employee VALUES(102,2,'ARUN','ANALYST',6000,'M');
 INSERT INTO employee VALUES(121,1,'RUBY','TYPIST',2010,'F');
 INSERT INTO employee VALUES(156,3,'MARY','MANAGER',4500,'F');
 INSERT INTO employee VALUES(123,2,'MRUDULA','ANALYST',6000,'F');
 INSERT INTO employee VALUES(114,4,'MENON','CLERK',1500,'M');
 INSERT INTO employee VALUES(115,4,'TIN','CLERK',1500,'M');
 INSERT INTO employee VALUES(127,2,'KIRAN','MANAGER',4000,'M');

Commit;

SELECT * FROM employee;

SELECT ID,NAME FROM employee WHERE DEPTID=2;

SELECT NAME FROM employee WHERE DESIG='TYPIST';

SELECT * FROM EMPLOYEE WHERE DESIG='MANAGER' OR DESIG ='ANALYST';

SELECT * FROM EMPLOYEE WHERE DESIG='TYPIST' AND SEX='F';

SELECT NAME,DESIG,SEX,BASIC FROM EMPLOYEE WHERE SEX='M' AND BASIC<3000 AND DESIG='CLERK';

ALTER TABLE Employee ADD MANAGER_ID INT;

Update Employee SET MANAGER_ID=NULL WHERE ID=101;
Update Employee SET MANAGER_ID=101 WHERE ID=102;
 Update Employee SET MANAGER_ID=101 WHERE ID=121;
Update Employee SET MANAGER_ID=101 WHERE ID=156;
Update Employee SET MANAGER_ID=102 WHERE ID=123;
 Update Employee SET MANAGER_ID=102 WHERE ID=114;
Update Employee SET MANAGER_ID=102 WHERE ID=115;
Update Employee SET MANAGER_ID=121 WHERE ID=127;

 SELECT * FROM Employee;

Commit;






SET-2

Select count(distinct DEPTID) as "NO_OF_DEPARTMENT" from EMPLOYEE;
select distinct desig from EMPLOYEE;
select count(distinct desig) as "NO_OF_DESIGNATIONS" from EMPLOYEE;
select max(basic) as "MAXIMUM_SALARY_OF_FEMALE" from EMPLOYEE where sex='F';
select* from employee where ((desig='MANAGER' or desig='ANALYST') and DEPTID=2);
select desig,basic from employee where name='RUBY';
alter table employee add join_date date;
UPDATE employee SET JOIN_DATE='28-mar-2000' WHERE ID=101;
UPDATE employee SET JOIN_DATE='28-jan-2001' WHERE ID=102;
UPDATE employee SET JOIN_DATE='18-jul-1998' WHERE ID=114;
UPDATE employee SET JOIN_DATE='11-jan-1996' WHERE ID=115;
UPDATE employee SET JOIN_DATE='20-dec-2010' WHERE ID=121;
UPDATE employee SET JOIN_DATE='16-apr-2011' WHERE ID=123;
UPDATE employee SET JOIN_DATE='13-sep-1998' WHERE ID=127;
 UPDATE employee SET JOIN_DATE='27-jul-2015' WHERE ID=156;
select* from employee;
select* from employee order by join_date desc;
select* from employee order by join_date asc;
select* from employee order by basic desc;

