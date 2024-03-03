/*-- [Data Analysis 1] List the employee number, last name, first name, sex, and salary of each employee 
	-- Query to display the relationships [Ref: Data_Relationships_Day3]*/
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM public.employees AS emp
JOIN public.salaries AS sal
ON emp.emp_no = sal.emp_no;

/*-- [Data Analysis 2] List the first name, last name, and hire date for the employees who were hired in 1986*/
SELECT first_name, last_name, hire_date
FROM public.employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/*-- [Data Analysis 3] List the manager of each department along with their 
	   department number, department name, employee number, last name, and first name*/
SELECT dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM public.departments AS dept
JOIN public.dept_manager AS dept_man
ON dept.dept_no = dept_man.dept_no
JOIN public.employees as emp
ON dept_man.emp_no = emp.emp_no;

/*-- [Data Analysis 4] List the department number for each employee along with that 
employee’s employee number, last name, first name, and department name*/
SELECT dept.dept_no, emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM public.departments AS dept
JOIN public.dept_emp as demp
ON dept.dept_no = demp.dept_no
JOIN public.employees as emp
ON emp.emp_no = demp.emp_no

/*-- [Data Analysis 5] List first name, last name, and sex of each employee whose first name is Hercules 
and whose last name begins with the letter B */
SELECT emp.first_name, emp.last_name, emp.sex
FROM public.employees AS emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';

/*[Data Analysis 6] List each employee in the Sales department, including their employee number, last name, and first name*/ 
SELECT demp.emp_no, emp.last_name, emp.first_name --, dept.dept_name
FROM public.dept_emp AS demp
JOIN public.employees AS emp
ON demp.emp_no = emp.emp_no
JOIN public.departments AS dept
ON demp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales';

/* -- [Data Analysis 7] List each employee in the Sales and Development departments, including their employee number, 
last name, first name, and department name*/
SELECT demp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM public.dept_emp AS demp
JOIN public.employees AS emp
ON demp.emp_no = emp.emp_no
JOIN public.departments AS dept
ON demp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'; 

/*-- [Data Analysis 8] List the frequency counts, in descending order, of all the employee last names 
(that is, how many employees share each last name)*/
SELECT last_name, COUNT(last_name) AS "frequency_counts"
FROM public.employees
GROUP BY last_name
ORDER BY frequency_counts DESC;