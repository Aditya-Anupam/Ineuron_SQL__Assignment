use ineuron;
set sql_safe_updates=1;

select * from clone1
show tables
insert into clone1 values
(14,'aditya','anupam','HR',46000,'iamadityaseth555@gmail.com','2015-05-14 00:00:00'),
(15,'lucky','kumar','Finance',45000,'lucky@gmail.com','2006-03-17 00:00:00')
#Write an SQL query to fetch intersecting records of two tables.
select T.* from
 worker as T 
 inner join
 clone1
 on T.id=clone1.id
 #Write an SQL query to show records from one table that another table does not have.
 select * from clone1 where fname not in (select fname from worker)
