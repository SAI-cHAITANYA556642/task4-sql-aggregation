# Task 4: SQL Aggregations and Grouping

>>This repository contains my solution for Task 4 of the SQL Developer Internship.<br>
I used aggregate functions such as SUM, COUNT, AVG, MAX, and GROUP BY/HAVING to summarize employee data.<br>

## Technologies Used
- MySQL Workbench or<br>

## Files
- schema.sql: Contains the table structure and sample data.<br>
- queries.sql: Contains all required aggregation queries.<br>

## Sample Queries
- Total salary by department<br>
- Average salary by job role<br>
- Highest salary in each department<br>
- Department-wise employee count<br>
- Departments with more than one employee<br>

## Tools Used
MySQL Workbench<br>
##Version Control System<br>
git<br>
##Key Concepts: Aggregation and Grouping<br>
1)Aggregation means summarizing or combining several values into one result.<br>
SQL offers built-in aggregate functions like:<br>
SUM(): Adds values<br>
COUNT(): Counts rows or non-null values<br>
AVG(): Calculates the average<br>
MAX(): Finds the highest value<br>
MIN(): Finds the lowest value<br>
example:<br>
>> SELECT AVG(salary) FROM employees; <br>

2)GROUP BY is used to arrange rows into groups that share the same value in one or more columns. <br>

 It is often used with aggregate functions to get summaries for each category, such as per department.<br>
example:
>> SELECT department, COUNT(*)<br>
>> FROM employees<br>
>>  GROUP BY department; <br>
3)Filtering Groups (HAVING)<br>

 HAVING is used to filter grouped records after aggregation (unlike WHERE which filters before grouping).<br>
 example:<br>
SELECT department, COUNT(*)<br>
FROM employees<br>
GROUP BY department<br>  
HAVING COUNT(*) > 2;<br>









