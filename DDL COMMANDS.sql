##DDL COMMANDS   (CREATE,ALTER,DROP)
create database DDL_SQL;
use DDL_SQL;
create table employee
(
	first_name varchar(20),
    last_name varchar(10),
    tittle varchar(15),
    age int,
    salary int
);
desc employee;

alter table employee add Gender varchar(5);
alter table employee drop column performace;

### PROBLEM ######
create database PRBLM_SQL;
use PRBLM_SQL;
create table myemployees_vk2711
(
	emp_id int,
    emp_name varchar(20),
    salary int,
    gender varchar(5)
);
desc myemployees_vk2711;
## IN THESE WE CAN USE ALTER(ADD,DROP,MODIFY)
alter table myemployees_vk2711 add Bonus int;
alter table myemployees_vk2711 add increment int after Bonus;
alter table myemployees_vk2711 add performance int after Bonus ;
alter table myemployees_vk2711 drop column performance;

SET SQL_SAFE_UPDATES = 0;
RENAME TABLE myemployees_vk2711 TO myemployees_vk271104;
desc myemployees_vk271104;
