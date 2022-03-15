use ineuron;
set sql_safe_updates=0;
show tables
#Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where fname not in ('Vipul','Sathish')
#Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where right(fname,1)='h' and length(fname)=6;
#Write a query to validate Email of Employee.
select * from worker where email like '%@%'
