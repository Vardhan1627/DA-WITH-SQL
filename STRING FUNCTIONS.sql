###### STRING FUNCTIONS  ######
CREATE DATABASE STRNG_FUN;
USE STRNG_FUN;

CREATE TABLE Employee_String (
    EmpID INT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Email VARCHAR(50),
    City VARCHAR(30),
    Department VARCHAR(20)
);
INSERT INTO Employee_String VALUES
(101,'Vardhan','Kumar','vardhan@gmail.com','Hyderabad','IT'),
(102,'Sharu','Khan','sharu@yahoo.com','Bangalore','HR'),
(103,'Akbar','Ali','akbar@gmail.com','Chennai','Finance'),
(104,'Ramya','Devi','ramya@outlook.com','Kadapa','IT'),
(105,'Keerthi','Reddy','keerthi@gmail.com','Vijayawada','HR'),
(106,'Cherry','Kumar','cherry@yahoo.com','Hyderabad','Finance'),
(107,'Kavya','Sharma','kavya@gmail.com','Bangalore','IT'),
(108,'Sai','Teja','sai@outlook.com','Chennai','HR'),
(109,'Anu','Priya','anu@gmail.com','Kadapa','Finance'),
(110,'Raju','Varma','raju@yahoo.com','Vijayawada','IT');
SELECT * FROM EMPLOYEE_STRING;

SELECT CONCAT(FirstName,LastName) FROM EMPLOYEE_STRING;
SELECT TRIM(CONCAT(FirstName,LastName)) FROM EMPLOYEE_STRING;
SELECT substring('CherryKumar',7,5) AS EXTRACTSTRING;
SELECT CONCAT(FIRSTNAME), UPPER( FIRSTNAME) FROM EMPLOYEE_STRING;
SELECT CONCAT(FIRSTNAME), LOWER (FIRSTNAME) FROM EMPLOYEE_STRING;
SELECT FirstName, CHAR_LENGTH(FirstName) AS LENGTH_OF_FIRST_NAME FROM Employee_String;
SELECT length("vardhankumar") AS COUNT;
SELECT MID("VARDHANKUMAR",2,5) AS MID_ELEMENT FROM EMPLOYEE_STRING;
SELECT MID(FirstName,1,4) FROM Employee_String;
SELECT REVERSE(FirstName) FROM Employee_String;


