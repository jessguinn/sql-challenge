CREATE TABLE employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(20),
	birth_date VARCHAR(10),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no VARCHAR(5),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(20)
);

CREATE TABLE salaries (
	emp_no int,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE title (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(20)
);

SELECT *FROM title;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM dept_manager;