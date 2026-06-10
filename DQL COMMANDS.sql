#### DQL COMMANDS ####
create database DQL_SQL;
use DQL_SQL;
create table employee_info
(
    first_name varchar(30),
    last_name varchar(30),
    emp_id int not null,
    age int,
    city varchar(10),
    state varchar(20),
    primary key (emp_id)
);
desc employee_info;
select * from employee_info;
select count(emp_id) from employee_info;
select * from employee_info where age > 30;
select * from employee_info where  first_name like 'P%'; 
select * from employee_info where  first_name like '%r'; 
select * from employee_info where state like 'T%'; 
select * from employee_info where age =44 or age=27;
select * from employee_info where age in (44,27);
select * from employee_info where last_name like '%N';
select first_name,last_name from employee_info;
select * from employee_info where city like '%T%'; 


insert into employee_info values('SHARU','KHAN',01,24,'BANGLORE','KARNATAKA');
insert into employee_info values('AKBAR','ANTONY',02,22,'CHENNAI','TN');
insert into employee_info values('VARDHAN','KUMAR',03,21,'KADAPA','AP');
insert into employee_info values('ROHIT','SHARMA',04,28,'MUMBAI','MH');
insert into employee_info values('PRIYA','SINGH',05,25,'DELHI','DL');
insert into employee_info values('RAHUL','VERMA',06,30,'PUNE','MH');
insert into employee_info values('SNEHA','PATIL',07,26,'NAGPUR','MH');
insert into employee_info values('ARJUN','REDDY',08,27,'HYDERABAD','TS');
insert into employee_info values('KAVYA','NAIR',09,24,'KOCHI','KL');
insert into employee_info values('DEEPAK','JAIN',10,31,'JAIPUR','RJ');
insert into employee_info values('MEENA','IYER',11,29,'CHENNAI','TN');
insert into employee_info values('AMAN','KHAN',12,35,'KOLKATA','WB');
insert into employee_info values('POOJA','YADAV',13,23,'PATNA','BR');