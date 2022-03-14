use ineuron ;
set sql_safe_updates=0;
show tables
id fname lname dept salary email jd
create table worker(
id int,
fname varchar(255),
lname varchar(255),
dept varchar(255),
salary int,
email varchar(255),
jd datetime


)
select * from worker

INSERT INTO Worker Values(1,'Anand','Issac','Marketing', 40000, 'ananac@ineauron.com' , '2015-04-22')

INSERT INTO Worker Values(2,'Aayushi','Natarajan', 'Purchase', 35000, 'aayushan@gmail.com' , '2015-05-14')

INSERT INTO Worker Values(3,'Amitabh','Thej', 'Marketing', 10000, 'Amitabhthj@ineauron.com' , '2006-03-17')

INSERT INTO Worker Values(4,'Kajol','Behl', 'Finance', 45000, 'kajolhl@ineauron.com' , '2015-09-30')

INSERT INTO Worker Values(5,'Heena','Mangat', 'HR', 50000, 'heenamgat@ineauron.com' , '2016-12-10')

INSERT INTO Worker Values(6,'Vipul','Kapoor', 'Purchase', 30000, 'Vipulk@ineauron.com' , '2015-07-11')

INSERT INTO Worker Values(7,'Mohit','Bahl', 'Finance', 50000, 'mohitbhl@gmail.com' , '2017-02-16')

INSERT INTO Worker Values(8,'Pranay', 'Rastogi', 'Marketing', 45000, 'pranagi@ineauron.com' , '2014-02-12')

INSERT INTO Worker Values(9,'Sathish','Bhat', 'HR', 25000, 'Sathishbht@ineauron.com' , '2017-05-13')

INSERT INTO Worker Values(10,'Jatin', 'Gaba', 'Purchase', 45000, 'jatiaba@ineauron.com' , '2016-08-12')

INSERT INTO Worker Values(11,'Anil', 'Gobin', 'Finance', 30000, 'anilgoin@ineauron.com' , '2014-02-18')

INSERT INTO Worker Values(12,'Marlo', 'Sarin', 'Purchase', 25000, 'marlosrin@ineauron.com' , '2017-05-13')

INSERT INTO Worker Values(13,'Kajol','Behl', 'Finance', 45000, 'kajolhl@ineauron.com' , '2015-09-30')


select * from worker

##Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
 select fname as worker_name from worker
 #Write an SQL query to fetch unique values of DEPARTMENT from Worker table
 select distinct dept from worker
 #Write an SQL query to show the last 5 record from a table
 select * from worker
 order by id desc limit 5;