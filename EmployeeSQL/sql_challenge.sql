-- Answer to question 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- Answer to question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%86';

-- Answer to question 3
SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments
ON (dept_manager.dept_no = departments.dept_no)
LEFT JOIN employees
ON (employees.emp_no = dept_manager.emp_no);

-- Answer to question 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS m
JOIN departments AS d
ON (m.dept_no = d.dept_no)
JOIN employees AS e
ON (m.emp_no = e.emp_no);

-- Answer to question 5
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE (e.first_name = 'Hercules' AND e.last_name LIKE 'B%');

-- Answer to question 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS m
JOIN departments AS d
ON (m.dept_no = d.dept_no)
JOIN employees AS e
ON (m.emp_no = e.emp_no)
AND (d.dept_name = 'Sales');

-- Answer to question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS m
JOIN departments AS d
ON (m.dept_no = d.dept_no)
JOIN employees AS e
ON (m.emp_no = e.emp_no)
AND (d.dept_name = 'Sales'
	OR d.dept_name = 'Development');

-- Answer to question 8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY 1;
