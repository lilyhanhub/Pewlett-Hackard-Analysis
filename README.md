# Pewlett-Hackard-Analysis

## Overview of the Analysis
The purpose of this project is to analyze the human resource data of a tech giant company Pewlett Hackard to prepare for the “silver tsunami” as many current employees reach retirement age. So after creating an employee database with SQL schema, the goal of the analysis is twofold: (1) determine the number of retiring employees and their position titles, and (2) identify employees who are eligible to participate in a mentorship program. 

## Results
1. Number of retiring employees by title
[retiring_titles](Data/retiring_titles.csv)
![retiring_titles](Data/retiring_titles.png)
*

2. Table of total 133,776 retiring employees who was born between 1952 and 1955 with the following info: first name, last name, title, title from date, and title to date.
* Data sample of the [mentorship_eligibility.csv](Data/mentorship_eligibility.csv)
![Data sample](Data/mentorship_eligibility.png) 

72,458 retiring 
1549 mentors

## Summary
The analysis will help future approval of Pewlett-Hackard by generating a list of all employees eligible for the retirement package.  

The total number of positions that need to be filled as the "silver tsunami" begins to make an impact.

`SELECT COUNT(emp_no) AS total_positions_to_be_filled
FROM unique_titles;`
![positions_to_be_filled](Data/positions_to_be_filled.png)

Number of qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.

`SELECT COUNT(emp_no) AS total_mentors
FROM mentorship_eligibility;`

![total_mentors](Data/total_mentors.png)

## Resources
Software:
* PostgreSQL 12
* pgAdmin 4
 
