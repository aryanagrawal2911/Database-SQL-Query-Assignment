CREATE TABLE Course(course_id varchar(10), title varchar(30), dept_name varchar(20), credit numeric(2));
INSERT INTO Course VALUES('BIO-101', 'Intro. to Biology', 'Biology', 4);
INSERT INTO Course VALUES('BIO-301', 'Genetics', 'Biology', 4);
INSERT INTO Course VALUES('BIO-399', 'Computational Biology', 'Biology', 4);
INSERT INTO Course VALUES('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4);
INSERT INTO Course VALUES('CS-190', 'Game Design', 'Comp. Sci.', 4);
INSERT INTO Course VALUES('CS-315', 'Robotics', 'Comp. Sci.', 3);
INSERT INTO Course VALUES('CS-319', 'Image Processing', 'Comp. Sci.', 3);
INSERT INTO Course VALUES('CS-347', 'Database System Concepts', 'Comp. Sci.', 3);
INSERT INTO Course VALUES('EE-181', 'Intro. to Digital System', 'Elec. Eng.', 3);
INSERT INTO Course VALUES('FIN-201', 'Investment Banking', 'Finance', 3);
INSERT INTO Course VALUES('HIS-315', 'World History', 'History', 3);
INSERT INTO Course VALUES('MU-199', 'Music Video Production', 'Music', 3);
INSERT INTO Course VALUES('PHY-101', 'Physical Principles', 'Physics', 4);


CREATE TABLE Department(Dept_name varchar(20), Building varchar(20), Budget numeric(10));
INSERT INTO Department VALUES('Biology', 'Watson', 90000);
INSERT INTO Department VALUES('Comp. Sci.', 'Taylor', 100000);
INSERT INTO Department VALUES('Elec. Eng.', 'Taylor', 85000);
INSERT INTO Department VALUES('Finance', 'Painter', 120000);
INSERT INTO Department VALUES('History', 'Painter', 50000);
INSERT INTO Department VALUES('Music', 'Packard', 80000);
INSERT INTO Department VALUES('Physics', 'Watson', 70000);


CREATE TABLE Instructor(ID numeric(5), name varchar(30), dept_name varchar(20), salary numeric(6));
INSERT INTO Instructor VALUES(10101, 'Srinivasam', 'Comp. Sci.', 65000);
INSERT INTO Instructor VALUES(12121, 'Wu', 'Finance', 90000);
INSERT INTO Instructor VALUES(15151, 'Mozart', 'Music', 40000);
INSERT INTO Instructor VALUES(22222, 'Einstein', 'Physics', 95000);
INSERT INTO Instructor VALUES(32343, 'El Said', 'History', 60000);
INSERT INTO Instructor VALUES(33456, 'Gold', 'Physics', 87000);
INSERT INTO Instructor VALUES(45655, 'Katz', 'Comp. Sci.', 75000);
INSERT INTO Instructor VALUES(58583, 'califieri', 'History', 62000);
INSERT INTO Instructor VALUES(76543, 'Singh', 'Finance', 80000);
INSERT INTO Instructor VALUES(76766, 'Crick', 'Biology', 72000);
INSERT INTO Instructor VALUES(83821, 'Brandt', 'Comp. Sci.', 92000);
INSERT INTO Instructor VALUES(98345, 'Kim', 'Elec. Eng.', 80000);


CREATE TABLE Prereq(Course_id varchar(10), Prereq_id varchar(10));
INSERT INTO Prereq VALUES('BIO-301', 'BIO-101');
INSERT INTO Prereq VALUES('BIO-399', 'BIO-101');
INSERT INTO Prereq VALUES('CS-190', 'CS-101');
INSERT INTO Prereq VALUES('CS-315', 'CS-101');
INSERT INTO Prereq VALUES('CS-319', 'CS-101');
INSERT INTO Prereq VALUES('CS-347', 'CS-101');
INSERT INTO Prereq VALUES('EE-181', 'PHY-101');


CREATE TABLE Teaches(ID numeric(5), course_id varchar(10), sec_id numeric(2), semester varchar(10), year numeric(4));
INSERT INTO Teaches VALUES(10101, 'CS-101', 1, 'Fall', 2009);
INSERT INTO Teaches VALUES(10101, 'CS-315', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(10101, 'CS-347', 1, 'Fall', 2009);
INSERT INTO Teaches VALUES(12121, 'FIN-201', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(15151, 'MU-199', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(22222, 'PHY-101', 1, 'Fall', 2009);
INSERT INTO Teaches VALUES(32343, 'HIS-351', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(45565, 'CS-101', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(45565, 'CS-319', 1, 'Spring', 2010);
INSERT INTO Teaches VALUES(76766, 'BIO-101', 1, 'Summer', 2009);
INSERT INTO Teaches VALUES(76766, 'BIO-301', 1, 'Summer', 2010);
INSERT INTO Teaches VALUES(83821, 'CS-190', 1, 'Spring', 2009);
INSERT INTO Teaches VALUES(83821, 'CS-190', 2, 'Spring', 2009);
INSERT INTO Teaches VALUES(83821, 'CS-319', 2, 'Spring', 2010);
INSERT INTO Teaches VALUES(98345, 'EE-181', 1, 'Spring', 2009);