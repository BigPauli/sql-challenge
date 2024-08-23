# sql-challenge
This challenge mainly deals with working with groups of normalized tables and how one would structure and combine them to get desired information

### EmployeeSQL
#### ERD.png
Contains the physical model Entity Relationship Diagram of the 6 tables used in this project. The tables are employees, departments, salaries, titles, dept_emp, and dept_manager. This diagram was created using quickdatabasediagrams.com

#### schema.sql
Contains the schema for each table in the database. This code was generated directly from quickdatabasediagrams.com using its export function.

#### queries
Contains my original code in exploring the tables previously listed and outputting various combinations of them. I received some help from the internet, with the source being listed in the comments when relevant. Operations performed were:

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).