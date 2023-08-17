--Drop the table 'Employees', departments, dept_emp, dept_manager, salaries , titles
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

--create table departments
create table departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

-- show table departments
SELECT * 
FROM departments;


--create table dept_emp
create table dept_emp(
	emp_no INT,
	dept_no VARCHAR
);
-- show table dept_emp
SELECT * 
FROM dept_emp;


--create table dept_manager
create table dept_manager(
	dept_no VARCHAR,
	emp_no INT
);


--create table employees
create table employees(
	emp_no INT,
	emp_title VARCHAR,
	birth_dat VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);
-- show table employees
SELECT * 
FROM employees;


--create table salaries
create table salaries(
	emp_no INT,
	salary INT
);
-- show table salaries
SELECT * 
FROM salaries;

--create table titles
create table titles(
	title_id VARCHAR,
	title VARCHAR
);
-- show table titles
SELECT * 
FROM titles;
