use ineuron;
select * from worker
#Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where month(jd)=2 and year(jd)=2014
select * from worker where jd between '2014-01-31' and '2014-03-01'

#Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select count(*),fname,lname,dept,email,id from worker 
group by email having count(*)>1
#How to remove duplicate rows from Employees table.
delete from worker where id not in (select max(id) from worker group by email)