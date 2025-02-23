create database try;
 use try;
 create table employees(
 employee_id int auto_increment primary key,
 namae varchar(100),
 position varchar(100),
 salary decimal(10,2),
 hire_date date);
 
 create table employee_audit(
 audit_is int auto_increment primary key,
 employee_id int,
 name varchar(100),
 position varchar(100),
 salary decimal(10,2),
 hire_date date,
 action_date timestamp default current_timestamp);
 
 
 insert into employees(name, position, hire_date) values
 ('john doe', 'software engineer', 80000.00, '2022-01-15'),
 ('jane smith', 'project manager', 90000.00, '2021-05-22'),
 ('alice johnson', 'ux designer', 75000.00, '2023-03-01');
 
 DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (employee_id, action)
    VALUES (NEW.employee_id, 'Employee added');
END //

DELIMITER ;