USE VARDHAN;
CREATE TABLE Employeee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employeee
VALUES
(1, 'John', 50000),
(2, 'Alice', 60000),
(3, 'Bob', 45000),
(4, 'David', 70000),
(5, 'Emma', 55000),
(6, 'Ravi', 40000),
(7, 'Priya', 65000),
(8, 'Kiran', 48000),
(9, 'Anu', 52000),
(10, 'Rahul', 75000);


CREATE TABLE Employee_Audit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    ActionType VARCHAR(20),
    ActionDate DATETIME
);

DELIMITER //

CREATE TRIGGER trg_employee_insert
AFTER INSERT
ON EmployeeE
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit
    (EmpID, ActionType, ActionDate)
    VALUES
    (NEW.EmpID, 'INSERT', NOW());
END //

DELIMITER ;

INSERT INTO Employeee
VALUES (101, 'John', 50000);

DELIMITER //

CREATE TRIGGER trg_employee_update
AFTER UPDATE
ON Employeee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit
    (EmpID, ActionType, ActionDate)
    VALUES
    (NEW.EmpID, 'UPDATE', NOW());
END //

DELIMITER ;

UPDATE Employeee
SET Salary = 60000
WHERE EmpID = 101;

DELIMITER //
CREATE TRIGGER trg_employee_delete
AFTER DELETE
ON Employeee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit
    (EmpID, ActionType, ActionDate)
    VALUES
    (OLD.EmpID, 'DELETE', NOW());
END //
DELIMITER ;

DELETE FROM Employeee
WHERE EmpID = 101;

SELECT*FROM EMPLOYEEE;
SELECT * FROM Employee_Audit;

DELIMITER //

CREATE TRIGGER trg_employee_insertt
AFTER INSERT
ON Employeee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit
    (EmpID, ActionType, ActionDate)
    VALUES
    (NEW.EmpID, 'INSERT', NOW());
END //

DELIMITER ;

UPDATE EMPLOYEEE
SET SALARY=70000
WHERE EMPID=1;