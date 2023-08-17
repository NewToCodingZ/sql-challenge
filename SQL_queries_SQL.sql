-- create table with employee number, last name, first name, sex, and salary of each employee.
-- We do this with a inner JOIN on emp_no
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emo_no;

--list the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE SUBSTRING(hire_date, 7, 4) = '1986';
---


--list manager of the departments, department name, employee number, last name, and first name.
--use 'd', 'e' and 'dm' as aliases 
SELECT
    d.dept_name,
    e.first_name AS manager_first_name,
    e.last_name AS manager_last_name,
    e.emp_no AS manager_emp_no
FROM
    departments d
INNER JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
INNER JOIN
    employees e ON dm.emp_no = e.emp_no;

--list of Employeese department number, department name, employee number, last, first for 
--use 'd', 'e' and 'dm' as aliases 
SELECT
    d.dept_name,
	d.dept_no,
    e.first_name AS employeese_first_name,
    e.last_name AS employeese_last_name,
    e.emp_no AS employeese_emp_no
FROM
    departments d
INNER JOIN
    dept_emp dm ON d.dept_no = dm.dept_no
INNER JOIN
    employees e ON dm.emp_no = e.emp_no;

-- list the sex of people whos first name is hercules and last name begians with a 'b'

SELECT sex, first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--list each employees in the sales department, with their employees number, last and frist name
-- dept_no for sales os 'd007' 
SELECT
	d.dept_no,
    e.first_name AS employeese_first_name,
    e.last_name AS employeese_last_name,
    e.emp_no AS employeese_emp_no
FROM
    departments d
INNER JOIN
    dept_emp dm ON d.dept_no = dm.dept_no
INNER JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE 
	d.dept_no = 'd007';

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
-- dept_no for sales os 'd007' and development departments is 'd005'
SELECT
	d.dept_no,
    e.first_name AS employeese_first_name,
    e.last_name AS employeese_last_name,
    e.emp_no AS employeese_emp_no
FROM
    departments d
INNER JOIN
    dept_emp dm ON d.dept_no = dm.dept_no
INNER JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE 
	d.dept_no = 'd007' or d.dept_no = 'd005';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
