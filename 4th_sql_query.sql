create database example_trigger;
use example_trigger;

CREATE TABLE employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
salary DECIMAL(10,2),
department VARCHAR(50)
);

CREATE TABLE employee_log (
log_id INT AUTO_INCREMENT PRIMARY KEY,
emp_id INT,
action VARCHAR(50),
log_time DATETIME
);

delimiter //
CREATE PROCEDURE AddEmployee (
IN emp_name VARCHAR(100),
IN emp_salary DECIMAL(10,2),
IN emp_dept VARCHAR(50)
)
BEGIN
INSERT INTO employees (name, salary, department)
VALUES (emp_name, emp_salary, emp_dept);
END //
delimiter ;

delimiter //
CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
INSERT INTO employee_log (emp_id, action, log_time)
VALUES (NEW.employee_id, 'INSERTED', NOW());
END //
delimiter ;

CALL AddEmployee('John Doe', 55000.00, 'HR');
SELECT * FROM employees;
SELECT * FROM employee_log;







