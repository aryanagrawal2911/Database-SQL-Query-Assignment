--Q1.
SELECT Sub_Code, title, credit FROM Course WHERE Department IN('Physics', 'Music', 'Finance', 'Biology');

SELECT * FROM Faculty_Info WHERE salary > 65000 AND name LIKE 'K%';

SELECT name, Department, (salary + (salary * 1.05) + (salary * 0.2)) AS Gross_Salary, (salary + (salary * 1.05) + (salary * 0.2) - (salary * 0.3)) AS Net_Salary FROM Faculty_Info;

SELECT * FROM Faculty_Info WHERE salary BETWEEN 60000 AND 80000;

SELECT * FROM Faculty_Info WHERE name LIKE '_r%';

SELECT name FROM faculty_info WHERE Department = 'Comp. Sci.' ORDER BY salary DESC;

update faculty_info SET salary = salary * 1.15;
SELECT * FROM faculty_info;

update faculty_info SET salary = salary * 1.03 WHERE department = 'Comp. Sci.' AND salary < 70000;
SELECT * FROM faculty_info;

SELECT (salary * 12) AS Annual_Salary FROM faculty_info;

update course SET title = 'Game Theory' WHERE title = 'Game Design';
SELECT * FROM course;

DELETE FROM faculty_info WHERE department = 'History';
SELECT * FROM faculty_info;

DELETE FROM course WHERE Sub_Code LIKE 'BIO%';
SELECT * FROM course;


--Q2.
SELECT AVG(salary) AS avg_salary FROM faculty_info;

SELECT department, AVG(salary) AS AVG_salary FROM faculty_info GROUP BY department;

SELECT id, name, department FROM faculty_info WHERE salary = (SELECT MAX(salary) FROM faculty_info);

SELECT COUNT(*) AS num FROM faculty_info WHERE department = 'Comp. Sci.';

SELECT SUM(credit) AS sum FROM course WHERE department = 'Comp. Sci.';

SELECT department, COUNT(*) AS num, SUM(salary) AS total_salary FROM faculty_info WHERE department IN('Physics', 'Comp. Sci.') GROUP BY department;

SELECT department, SUM(credit) AS total_credits FROM course WHERE department IN('Comp. Sci.', 'Biology') GROUP BY department;

SELECT builder, SUM(budget) AS total_budget FROM department GROUP BY builder;

SELECT department, COUNT(*) AS num FROM faculty_info GROUP BY department;

SELECT department, COUNT(*) AS num FROM faculty_info GROUP BY department ORDER BY num DESC;

SELECT semester, COUNT(*) AS courses_per_semester FROM teaches GROUP BY semester;

SELECT department FROM faculty_info GROUP BY department HAVING COUNT(*) < 2;

SELECT department, COUNT(*) AS num FROM faculty_info WHERE department != 'Finance' GROUP BY department HAVING num >= 2 ORDER BY num DESC;

SELECT department FROM faculty_info GROUP BY department HAVING SUM(salary) > 50000;

SELECT SUM(budget) AS total_budget FROM department WHERE builder = 'Watson';

SELECT MAX(salary) AS max_salary FROM faculty_info WHERE department = 'Comp. Sci.';


--Q3.
SELECT initcap('aryan');

SELECT substr('Aryan Agrawal', 2, 5);

SELECT length('Siksha O Anusandhan');

SELECT initcap(name) AS upper_name FROM faculty_info;

SELECT name, upper(substr(Department, 1, 3)) AS dept FROM faculty_info;

SELECT name, strftime('%m', date_of_join) AS month FROM faculty_info;

SELECT (substr(date_of_join, -2) || '/' || substr(date_of_join, 6, 2) || '/' || substr(date_of_join, 3, 2)) AS formatted_date FROM faculty_info;

SELECT
    (strftime('%Y', date('now')) - strftime('%Y', date_of_join)) * 12 +
    (strftime('%m', date('now')) - strftime('%m', date_of_join)) AS months_between
FROM faculty_info;

SELECT date('now', '+15 day') AS future;

SELECT round(94204.27348, 2);

SELECT (5 + (8*8*8*8*8*8*8*8*8)) AS result;