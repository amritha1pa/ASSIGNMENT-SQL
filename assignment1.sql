SHOW DATABASES;
CREATE DATABASE EMPLOYEE;
USE employee;
show tables;

CREATE TABLE Departments(
			department_id INT PRIMARY KEY,
            department_name VARCHAR(100)
            );
            
CREATE TABLE Location(
			location_id INT PRIMARY KEY,
			location VARCHAR(30)
			);
            
CREATE TABLE employees(
			employee_id INT PRIMARY KEY,
            employee_name VARCHAR(50),
            gender ENUM('M','F'),
            age INT,
            hire_date DATE,
            designation VARCHAR(100),
            department_id INT,
            location_id INT,
            salary DECIMAL(10,2)
            );
		
           
DESC Departments;
DESC location;
DESC employees;

-- Table Alteration

ALTER TABLE employees ADD email VARCHAR(50);
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(250);
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

-- Table Renaming
RENAME TABLE departments to Departments_Info;
DESC Departments_Info;

RENAME TABLE location to locations;
DESC locations;

TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE Employee;

-- DATABASE RECREATION
DROP DATABASE IF EXISTS Employee;
CREATE DATABASE EMPLOYEE;
USE employee;
CREATE TABLE Departments(
			department_id INT PRIMARY KEY,
            department_name VARCHAR(100) NOT NULL UNIQUE
            );
            
CREATE TABLE Location(
			location_id INT AUTO_INCREMENT PRIMARY KEY,
			location VARCHAR(30) NOT NULL UNIQUE
			);
            
CREATE TABLE employees(
			employee_id INT PRIMARY KEY,
            employee_name VARCHAR(50) NOT NULL,
            gender ENUM('M','F'),
            age INT CHECK (age>=18),
            hire_date DATE DEFAULT (CURRENT_DATE),
            designation VARCHAR(100),
            department_id INT,
            location_id INT,
            salary DECIMAL(10,2),
		FOREIGN KEY(department_id)
           REFERENCES departments(department_id), 
		FOREIGN KEY(location_id)
           REFERENCES location(location_id)
           );






    

 
           
           
		
            
		