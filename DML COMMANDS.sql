#### DML COMMANDS ####
create database DML_SQL;
use DML_SQL;
create table employee_old
(
    first_name varchar(30),
    last_name varchar(30),
    designation varchar(25),
    emp_id int,
    age int,
    salary float
);
desc employee_old;

INSERT INTO employee_old VALUES('SHARU','JI','SECRAITARY',01,24,89000),
									('KAVYA','JI','DEVELOPER',02,28,80000),
                                    ('RAMYA','JI','TESTOR',03,21,64000),
                                    ('KEERTHI','JI','PROGRAMMER',04,29,90000),
                                    ('CHERRY','JI','MANAGER',05,24,72000);
select * from employee_old;
select first_name,age,salary from employee_old where designation='PROGRAMMER';
select first_name,age,salary from employee_old where designation like '%PROGRAMMER';
select first_name,age,salary from employee_old where designation='PROGRAMMER';
select first_name from employee_old where first_name like '%A';

set sql_safe_updates=0;

update employee_old set designation='DEVELOPER' where first_name='RAMYA';
update employee_old set salary=salary+1000 where designation='DEVELOPER';

UPDATE employee_old SET salary = salary + 1000, designation = 'DEVELOPER'  WHERE age = 28;

####### PROBLEMS ########

UPDATE employee_old SET designation = 'Administrative Assistant' WHERE designation = 'SECRETARY';
UPDATE employee_old SET designation = 'Programmer III' WHERE designation = 'Programmer II';
UPDATE employee_old SET designation = 'Programmer II' WHERE designation = 'Programmer I'; 
UPDATE employee_old SET salary = salary + 3500 WHERE salary < 30000; 
UPDATE employee_old SET salary = salary + 4500 WHERE salary > 33500; 
UPDATE employee_old SET age = age + 1 WHERE first_name = 'alice '   AND last_name = 'brown';
UPDATE employee_old SET last_name = 'alice-Williams' WHERE first_name = 'alice'   AND last_name = 'brown';
select * from employee_old;
update employee_old set designation='programmer III' where designation='programmerII';

update employee_old set salary=salary+1000  where emp_id=1;
