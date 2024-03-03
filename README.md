# sql-challenge

**Background**
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

**Data Modeling**
After inspected the CSV files, I've used the QuickDBD tool to sketch an Entity Relationship Diagram of the tables. 

![QuickDBD](https://github.com/hatkiet/sql-challenge/assets/154276115/bc5e79ef-ce12-464b-88bb-450ca5458c19)

**Data Engineering**

Used the provided information to create table schema for each of six CSV data files and then import each CSV file into its corresponding SQL table. I have:
- defined correct data type for each column.
- set primary keys for each table and use CONSTRANT to ensure that the column value is unique
- created tables in the correct order to avoid errors and also handles the foreign keys with corrected references
- used NOT NULL in the columns which CAN'T contain the NULL value

Data Analysis

[1] List the employee number, last name, first name, sex, and salary of each employee.
[2] List the first name, last name, and hire date for the employees who were hired in 1986.
[3] List the manager of each department along with their department number, department name, employee number, last name, and first name.
[4] List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
[5] List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
[6] List each employee in the Sales department, including their employee number, last name, and first name.
[7] List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
[8] List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

(Note: I've the solutions of the examples and activities in class to work on this SQL-challenge, and refine with ChatGPT for optimize the answer.) 
