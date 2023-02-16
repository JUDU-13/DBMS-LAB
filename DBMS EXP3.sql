alter table Employee add DA float;

alter table Employee add HRA float;

alter table Employee add NET_SALARY float;

update Employee set DA = 0.075*BASIC;

update Employee set HRA = 0.09*BASIC;

update Employee set NET_SALARY = BASIC+DA+HRA;

select ID,NAME,DESIG,DEPTID,BASIC,DA,HRA,NET_SALARY from Employee;

select ID,NAME,DESIG,DEPTID,BASIC from Employee order by basic desc;

select distinct desig as "DIFFERENT_DESIGNATIONS" from Employee;
select ID,NAME,DEPTID,BASIC from Employee where desig = 'MANAGER' or desig = 'CLERK' and basic between 1400 and 4500;
select desig,max(basic) from Employee group by desig;
select manager_id,name from Employee where name = 'RAM';
select e.name as "Employee_Name",m.name as "Manager_Name" from Employee e inner join Employee m on m.id = e.manager_id;
select deptid as "DEPARTMENT",avg(basic) as "AVG_SAL" from Employee group by deptid;
select max(basic) as "MAXIMUM_SALARY" from Employee;
select deptid as "DEPARTMENT",count(ID) as "NO_OF_EMPLOYEES" from Employee group by deptid;

