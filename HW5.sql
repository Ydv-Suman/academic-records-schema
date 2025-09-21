CREATE TABLE STUDENT(
       Name VARCHAR(20) NOT NULL,
       Student_number INT,
       Class INT NOT NULL,
       Major CHAR(4) NOT NULL,
       PRIMARY KEY(Student_number)
);

CREATE TABLE COURSE(
	Course_name VARCHAR(50) NOT NULL,
	Course_number CHAR(8),
	Credit_hours INT NOT NULL,
	Department VARCHAR(4) NOT NULL,
	PRIMARY KEY(Course_number)
);

CREATE TABLE SECTION(
	Section_identifier INT,
	Course_number CHAR(8) NOT NULL,
	Semester VARCHAR(8) NOT NULL,
	Year CHAR(2) NOT NULL,
	Instructor VARCHAR(30) NOT NULL,
	PRIMARY KEY(Section_identifier)
);

CREATE TABLE GRADE_REPORT(
	Student_number INT,
	Section_identifier INT,
	Grade CHAR(1) NOT NULL,
	PRIMARY KEY(Student_number, Section_identifier)
);

CREATE TABLE PREREQUISITE(
	Course_number CHAR(8),
	Prerequisite_number CHAR(8),
	PRIMARY KEY(Course_number, Prerequisite_number)
);

INSERT INTO STUDENT
VALUES
	('smith', 17, 1,'CSCI'),
	('Brown', 8, 2, 'CSCI');

INSERT INTO COURSE
VALUES
	('Into to Computer Science', 'CSCI1310', 4, 'CSCI'),
	('Data Structure', 'CSCI3320', 4, 'CSCI'),
	('Discrete Mathematics', 'MATH2410', 3, 'CSCI'),
	('Database', 'CSCI3380', 3, 'CSCI');

INSERT INTO SECTION
VALUES
	(85, 'MATH2410', 'Fall', '07', 'King'),
	(92, 'CSCI1310', 'Fall', '07', 'Andrewson'),
	(102, 'CSCI3320', 'Spring', '08', 'knuth'),
	(112, 'MATH2410', 'Fall', '08', 'Chang'),
	(119, 'CSCI1310', 'Fall', '08', 'Andrewson'),
	(135, 'CSCI3380', 'Fall', '08', 'Stone');

INSERT INTO GRADE_REPORT
VALUES
	(17, 112, 'B'),
	(17, 119, 'C'),
	(8, 85, 'A'),
	(8, 92, 'A'),
	(8, 102, 'B'),
	(8, 135, 'A');

INSERT INTO PREREQUISITE
VALUES
	('CSCI3380', 'CSCI3320'),
	('CSCI3380', 'MATH2410'),
	('CSCI3320', 'CSCI1310');

ALTER TABLE SECTION
ADD CONSTRAINT fk_section_course
FOREIGN KEY(Course_number) REFERENCES COURSE(Course_number);

ALTER TABLE GRADE_REPORT
ADD CONSTRAINT fk_grade_student
FOREIGN KEY(Student_number) REFERENCES STUDENT(Student_number);

ALTER TABLE GRADE_REPORT
ADD CONSTRAINT fk_grade_section
FOREIGN KEY(Section_identifier) REFERENCES SECTION(Section_identifier);

ALTER TABLE PREREQUISITE
ADD CONSTRAINT fk_prerequisite_course
FOREIGN KEY(Prerequisite_number) REFERENCES COURSE(Course_number);
	
