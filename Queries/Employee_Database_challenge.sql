-- Deliverable 1
-- #1 Retrieve the emp_no, first_name, and last_name columns from the Employees table
SELECT emp_no, first_name, last_name
FROM employees; 

-- # 2 Retrieve the title, from_date, and to_date columns from the Titles table
SELECT title, from_date, to_date 
FROM titles; 

-- #3 Create a new table using the INTO clause.
SELECT emp_no, first_name, last_name
INTO employee_namesnumber
FROM employees; 

SELECT * FROM employee_namesnumber

-- #3 Create a new table using the INTO clause.
SELECT title, from_date, to_date 
INTO employee_titledates
FROM titles;

SELECT * FROM employee_titledates

-- #4 Join both tables on the primary key.
SELECT titles.emp_no,
     employees.first_name,
     employees.last_name, 
	 employees.birth_date,
	 titles.title, 
	 titles.from_date, 
	 titles.to_date
INTO retirement_titles
FROM titles
INNER JOIN employees
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles2
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles2

-- Write another query to retrieve the number of employees by their most recent job title who are about to retire.
SELECT DISTINCT ON (count) COUNT(title), title
INTO retiring_titles2
FROM unique_titles2
GROUP BY title
ORDER BY count DESC; 

SELECT * FROM retiring_titles2

-- Deliverable #2
-- #1 Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table
-- #2 Retrieve the from_date and to_date columns from the Department Employee table
-- #3 Retrieve the title column from the Titles table
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	   employees.first_name, 
	   employees.last_name, 
	   employees.birth_date,
	   depart_emp.from_date, 
	   depart_emp.to_date,
	   titles.title
INTO mentorship_eligibilty3
FROM employees
INNER JOIN depart_emp
ON employees.emp_no = depart_emp.emp_no
LEFT JOIN titles 
ON titles.emp_no = employees.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
AND (depart_emp.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty3