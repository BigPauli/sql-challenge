-- view all tables
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees
LIMIT 100;
SELECT * FROM salaries;
SELECT * FROM titles;

-- 1) List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.
-- help from https://learnsql.com/cookbook/how-to-compare-date-values-in-sql/#:~:text=To%20compare%20dates%20in%20SQL,than%202022%2D01%2D10.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

-- 3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- join dept_manager and departments on dept_no. join dept_manager and employees on emp_no
SELECT  t1.dept_no, t2.dept_name, t1.emp_no, t3.last_name, t3.first_name  
FROM dept_manager AS t1
JOIN departments AS t2 ON t1.dept_no = t2.dept_no
JOIN employees AS t3 ON t1.emp_no = t3.emp_no;

-- 4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- join dept_emp and departments on dept_no. join dept_emp and employees on emp_no
SELECT t1.dept_no, t1.emp_no, t3.first_name, t3.last_name, t2.dept_name
FROM dept_emp AS t1
JOIN departments AS t2 ON t1.dept_no = t2.dept_no
JOIN employees AS t3 ON t1.emp_no = t3.emp_no;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6) List each employee in the Sales department, including their employee number, last name, and first name.
-- join dept_emp and departments on dept_no. join dept_emp and employees on emp_no
SELECT t1.emp_no, t3.last_name, t3.first_name
FROM dept_emp AS t1
JOIN departments AS t2 ON t1.dept_no = t2.dept_no
JOIN employees AS t3 ON t1.emp_no = t3.emp_no
WHERE t2.dept_name = 'Sales';

-- 7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- join dept_emp and departments on dept_no. join dept_emp and employees on emp_no
SELECT t1.emp_no, t3.last_name, t3.first_name, t2.dept_name
FROM dept_emp AS t1
JOIN departments AS t2 ON t1.dept_no = t2.dept_no
JOIN employees AS t3 ON t1.emp_no = t3.emp_no
WHERE t2.dept_name = 'Sales' or t2.dept_name = 'Development';

-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "last_name frequencies"
FROM employees
GROUP BY last_name
ORDER BY "last_name frequencies" DESC;