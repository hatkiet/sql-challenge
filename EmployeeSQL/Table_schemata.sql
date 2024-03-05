/*** DATA MODELING -- CREATE TABLES 
-- Set CONSTRAINT to ensure that no two rows have the same value for the specific column 
-- NOT NULL: means this column CAN'T contain the NULL value ***/

--[Step 1] Create table of the Department Information. 
	-- "dept_no" is the primary key (pk_) and it's also found (foreign key fk_) in dept_emp and dept_manager lists
CREATE TABLE departments (
	dept_no VARCHAR(255) NOT NULL, 
	dept_name VARCHAR(255),
	CONSTRAINT pk_dept PRIMARY KEY (dept_no) /*Set constraint to the dept_no to ensure that no duplicates*/
); 
-- Viewing the table
SELECT * FROM departments;


--[Step 2] Create the table of the Title Information
CREATE TABLE  titles (
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR(255),
	CONSTRAINT pk_titles PRIMARY KEY (title_id)
);
-- Viewing the table
SELECT * FROM titles;


--[Step 3] Create the table of the Employee Information
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(255) NOT NULL, -- Also found in titles(title_id)
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT pk_employees PRIMARY KEY (emp_no),
	CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
-- Viewing the table
SELECT * FROM employees;


--[Step 4] Create the table of the Department Employment Information - Junction with Employees and Department Tables 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 	-- Also found in employees(emp_no)
	dept_no VARCHAR(255) NOT NULL, 	-- Also found in departments(dept_no)
	CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no), 
	CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);	
-- Viewing the table
SELECT * FROM dept_emp;


--[Step 5] Create the table of the Department Managers Information
CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL, 	-- Also found in departments(dept_no)
	emp_no INT NOT NULL, 	-- Also found in employees(emp_no)
	CONSTRAINT pk_dept_manager PRIMARY KEY (emp_no, dept_no), 
	CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Viewing the table
SELECT * FROM dept_manager;


--[Step 6] Create the table of the Salaries Information
CREATE TABLE salaries (
	emp_no INT NOT NULL, 	-- Also found in employees(emp_no)
	salary INT NOT NULL,
	CONSTRAINT pk_salaries PRIMARY KEY (emp_no),
	CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Viewing the table
SELECT * FROM salaries;