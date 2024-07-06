SELECT * FROM instructor;
SELECT * FROM teaches;
SELECT * FROM course;
SELECT * FROM prereq;
SELECT * FROM department;

DESC instructor;
DESC course;
DESC teaches;
DESC department;
DESC prereq;

SELECT name, dept_name FROM instructor;

SELECT name, salary FROM instructor WHERE dept_name = 'Comp. Sci.';

SELECT * FROM instructor WHERE dept_name = 'Physics' AND salary < 90000;

SELECT name FROM instructor WHERE dept_name != 'Comp. Sci.';

SELECT DISTINCT dept_name FROM instructor;

SELECT course_id FROM teaches WHERE semester = 'Spring' AND year = 2009;

SELECT title FROM course WHERE credit != 3 AND dept_name = 'Comp. Sci.';

SELECT * FROM course ORDER BY dept_name DESC;

ALTER TABLE instructor ADD date_of_join date;
SELECT * FROM instructor;

update instructor SET DATE_of_join = '2021-11-09';
SELECT * FROM instructor;

ALTER TABLE instructor rename column dept_name TO Department;
SELECT * FROM instructor;
ALTER TABLE course rename column dept_name TO Department;
SELECT * FROM course;
ALTER TABLE department rename column dept_name TO Department;
SELECT * FROM department;

ALTER TABLE prereq rename TO Prerequired;
SELECT * FROM Prerequired;
 
ALTER TABLE course rename column course_id TO Sub_Code;
ALTER TABLE prerequired rename column course_id TO Sub_Code;
ALTER TABLE teaches rename column course_id TO Sub_Code;
SELECT * FROM course;
SELECT * FROM Prerequired;
SELECT * FROM teaches;
 
ALTER TABLE instructor MODIFY name varchar(50);
SELECT * FROM instructor;

ALTER TABLE instructor rename TO Faculty_Info;
SELECT * FROM Faculty_Info;

ALTER TABLE course MODIFY Sub_Code varchar(8);

drop TABLE prerequired;
SELECT * FROM prerequired;

ALTER TABLE Department rename column building TO Builder;
SELECT * FROM Department;