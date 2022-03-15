use ineuron;
#Write an SQL query to determine the 5th highest salary without using TOP or limit method.
select salary from (select fname,lname,salary,dense_rank() over(order by salary desc) as r from worker) as T where T.r=5;
#Write an SQL query to fetch the list of employees with the same salary.
select * from worker where salary in (select salary from worker group by salary having count(*)>1) order by salary desc;
