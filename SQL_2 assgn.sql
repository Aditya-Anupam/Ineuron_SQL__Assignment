use ineuron ;
set sql_safe_updates=0;
show tables
select * from worker
##Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(fname,1,3) from worker
##Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select position("a" in fname) as position_a ,fname from worker where fname='Amitabh';
##Write an SQL query to print the name of employees having the highest salary in each department.
select salary,fname,dept from worker where dept='finance'
select t.dept,t.fname,t.lname,t.salary from (select max(salary) as totalsalary,dept from worker group by dept) as newworker
inner join
worker as t 
on t.dept=newworker.dept and t.salary=newworker.totalsalary
