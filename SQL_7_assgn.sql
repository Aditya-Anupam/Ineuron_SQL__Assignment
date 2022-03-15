use ineuron;
set sql_safe_updates=0;
#Write an SQL query to show only odd rows from a table.
select * from worker where id%2<>0;
#Write an SQL query to clone a new table from another table.
create table clone1 as select * from worker
select * from clone1
