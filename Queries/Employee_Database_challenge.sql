-- Deliverable 1
-- Create a table listing the number of retiring employees by title
SELECT e.emp_no, e.first_name, e.last_name,
	t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
	emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, 
		to_date DESC;

-- Retrieve # of employees by their most recent job titles who are about to retire
SELECT COUNT(title) AS title_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title_count DESC;

-- Deliverable 2
-- Create a mentorship eligibility table 
SELECT DISTINCT ON(e.emp_no) 
	e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de 
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Deliverable 3 summary 
-- Create a table of total retiring employees count
SELECT title, COUNT(emp_no) AS retire_count 
INTO ut
FROM unique_titles
GROUP BY title; 
-- Create a table of total eligible mentors count
SELECT title, COUNT(emp_no) AS mentor_count 
INTO me
FROM mentorship_eligibility
GROUP BY title;
-- Join the two tables of retire_count and mentor_count, and add a column of mentees_per_mentor
SELECT ut.title, ut.retire_count, me.mentor_count,
 (ut.retire_count / me.mentor_count) AS mentees_per_mentor
FROM ut
LEFT JOIN me
ON ut.title = me.title
ORDER BY ut.retire_count DESC


