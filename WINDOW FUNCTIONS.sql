USE VARDHAN;
SELECT*FROM  churn;
SELECT churn,
       salary,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM churn;

select distinct 
coffee_name,sum(money) over (partition by coffee_name) 
as total_money from index_1; 

### ROW NUMBER ###
select row_number() 
over(order by coffee_name) as cash_type,money 
from index_1 order by coffee_name;

#### RANK #####
SELECT SURNAME,CREDITSCORE, 
RANK() OVER(ORDER BY CREDITSCORE ASC) AS 
CREDIT_RANK FROM CHURN;

SELECT SURNAME,
       CREDITSCORE,
       ROW_NUMBER() OVER(ORDER BY CREDITSCORE ASC) AS CREDIT_RANK
FROM CHURN;

SELECT emp_name,
       salary,
       RANK() OVER(ORDER BY salary DESC) AS rank_no
FROM employee;