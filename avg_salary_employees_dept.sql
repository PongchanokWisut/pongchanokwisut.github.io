/*Find the average salary of the male and female employees in each department*/
USE employees_mod;
SELECT
	d.dept_name,
	e.gender,
    Round(AVG(s.salary),2) as salary
FROM t_employees e
JOIN t_salaries s
	ON 	e.emp_no = s.emp_no
JOIN t_dept_emp de
	ON	s.emp_no = de.emp_no
JOIN t_departments d
	ON de.dept_no = d.dept_no
GROUP BY  d.dept_no,e.gender
ORDER By d.dept_no;
    
    
    