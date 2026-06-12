create database dat_fun;
use vardhan;
show tables;
select*from index_1;
select coffee_name,cash_type, DATEDIFF(sysdate(),datetime) as datedifference from index_1;
select date_format('2020-06-15','%y');
select date_format('2020-06-15','%m');
select date_format('2020-06-15','%d');
select day(date), date from index_1;
select month(date), date from index_1;
select year(date), date from index_1;

select adddate('2026-06-12',interval(15)day);

select adddate('2004-11-27',interval(20)year);

select adddate('2026-06-12',interval(5)month);

select adddate('2026-06-12',interval(9) quarter);

select adddate('2026-06-12',interval(9) quarter);

##### REGEX FUNCTIONS ########
USE JOINS_SQL;

SELECT *FROM cust_info;
SELECT COUNT(*) FROM cust_info WHERE COUNTRY LIKE '%INDIA';
SELECT COUNT(*) FROM CUST_INFO WHERE COUNTRY  REGEXP'^IND';
 
 SELECT COUNT(*) FROM CUST_INFO WHERE CUST_NAME LIKE 'V%' OR CUST_NAME LIKE'A%' OR CUST_NAME LIKE 'K%';

SELECT COUNT(*) FROM CUST_INFO WHERE CUST_NAME REGEXP '[AKR]';

SELECT COUNT(*) FROM CUST_INFO WHERE CUST_NAME REGEXP '[U-V]';

SELECT COUNT(*) FROM CUST_INFO WHERE ADDRESS LIKE 'B%';

SELECT COUNT(*) FROM CUST_INFO WHERE CUST_NAME REGEXP '^K';

SELECT COUNT(*) FROM CUST_INFO WHERE ADDRESS REGEXP 'A$';




