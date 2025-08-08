create database company;
use company;
/* here iam writing the employee table */
CREATE TABLE employees (
id INTEGER PRIMARY KEY auto_increment,
name TEXT NOT NULL,
department TEXT NOT NULL,
job_role TEXT NOT NULL,
salary INTEGER NOT NULL
);
/*here iam insert the employee table database*/

INSERT INTO employees (name, department, job_role, salary) VALUES
('Amit', 'HR', 'Manager', 50000),
('Sara', 'IT', 'Developer', 70000),
('John', 'IT', 'Developer', 72000),
('Kavya', 'Finance', 'Analyst', 65000),
('Kiran', 'HR', 'Executive', 40000),
('Ravi', 'Finance', 'Manager', 80000),
('Neha', 'IT', 'Tester', 55000);

/*Total Salary by Department*/
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

/*Average Salary by Job Role*/
SELECT job_role, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_role;

/* Count of Employees per Department*/
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

/*Departments with more than 1 employee*/
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

/*Highest Salary in Each Department*/
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

/*ROUNDing off Average Salary*/
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department; 

select* from employees;


  
