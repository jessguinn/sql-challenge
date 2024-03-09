--List the employee number, last name, first name, sex, and salary of each employee.

SELECT i.emp_no, i.last_name, i.first_name, i.sex, f.salary
FROM employees i
JOIN salaries f
ON (i.emp_no = f.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT i.dept_no, l.dept_name, f.emp_no, f.last_name, f.first_name
FROM dept_manager i
JOIN departments l
ON (i.dept_no = l.dept_no)
JOIN employees f
ON (i.emp_no = f.emp_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT i.dept_no, i.emp_no, f.last_name, f.first_name, l.dept_name
FROM dept_emp i
JOIN employees f
ON (i.emp_no = f.emp_no)
JOIN departments l
ON (i.dept_no = l.dept_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT i.emp_no, f.last_name, f.first_name, l.dept_name
FROM dept_emp i
JOIN employees f
ON (i.emp_no = f.emp_no)
JOIN departments l
ON (i.dept_no = l.dept_no)
WHERE 
	dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT i.emp_no, f.last_name, f.first_name, l.dept_name
FROM dept_emp i
JOIN employees f
ON (i.emp_no = f.emp_no)
JOIN departments l
ON (i.dept_no = l.dept_no)
WHERE 
	dept_name = 'Sales'
	OR dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT * FROM employees;

SELECT COUNT(emp_no) FROM employees;

SELECT COUNT(emp_no) AS "Same Name"
FROM employees;

SELECT last_name, COUNT(emp_no) AS "Same Name"
FROM employees
GROUP BY last_name
ORDER BY "last_name" DESC;

