use ineuron
set sql_safe_updates=0;
show tables
select * from worker
#Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(fname) as right_tri_fn  from worker;
#Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct dept,length(dept) from worker;
##Write an SQL query to fetch nth max salaries from a table.
select salary from 
(
select rank() over(order by salary desc) as r,dense_rank() over (order by salary desc) as dr,fname,lname,dept,salary from worker) as T
 where T.dr= 5;


