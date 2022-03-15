use ineuron;
set sql_safe_updates=0;
show tables
#Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select * from worker
select replace(fname,"a",'A') as repfname,fname from worker
#Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker
order by fname asc,dept desc
#Write an SQL query to fetch the names of workers who earn the highest salary.
select fname,lname,salary from worker where salary = (select max(salary) from worker)