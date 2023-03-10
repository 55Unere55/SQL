CREATE DATABASE db_School

GO
BEGIN
CREATE PROCEDURE createSchoolDB

CREATE TABLE tbl_School (
School_Name VARCHAR(70) NOT NULL,
Students_Amount INT NOT NULL,
School_Adress VARCHAR(120) NOT NULL
);

INSERT INTO tbl_School
(School_Name, Students_Amount, School_Adress)
VALUES
('The Tech Academie', '6', '310 SW 4th Ave Suite 200, Portland, Oregon')
;
SELECT * FROM tbl_School;

CREATE TABLE tbl_Class (
Class_ID INT NOT NULL PRIMARY KEY IDENTITY (10,1),
Class_Name VARCHAR(70) NOT NULL
);

INSERT INTO tbl_Class 
(Class_Name)
VALUES
('Software Developer Boot Camp'),
('C# Boot Camp')
;
SELECT * FROM tbl_Class;

CREATE TABLE tbl_Instructors (
Class_ID INT NOT NULL,
Instructor_ID  INT NOT NULL PRIMARY KEY IDENTITY(20,1),
Instructor_Name VARCHAR(70) NOT NULL
);

INSERT INTO tbl_Instructors
(Class_ID, Instructor_ID, Instructor_Name)
VALUES
('11', '21' 'Ben Howard'),
('12', '22' 'Trisha Gibbs')
;
SELECT * FROM tbl_Instructors;

CREATE TABLE tbl_Students (
Student_ID INT NOT NULL PRIMARY KEY IDENTITY(30,1),
Student_Name VARCHAR(70) NOT NULL,
Class_ID INT NOT NULL,
Instructor_ID INT NOT NULL
);

INSERT INTO tbl_Students
(Student_ID, Student_Name, Class_ID, Instructor_ID)
Values
('31', 'Betty Eagle', '11', '21'),
('32', 'Mia Hunter', '11', '21'),
('33', 'Kevin Lossom', '11', '21'),
('34', 'Kathy Bernard', '12', '22'),
('35', 'Tamy Harisson', '12', '22'),
('36', 'Joe Foe', '12', '22')
;
SELECT * FROM tbl_Students;

SELECT * FROM tbl_Instructors WHERE Instructor_Name

SELECT * FROM (((tbl_Students.Student_Name ON Student_ID FULL INNER JOIN = StudentName.StudentID)FULL OUTER JOIN tbl_Instructors.Instructor_Name ON Instructor_ID = InstructorName.Instructor_ID) FULL OUTER JOIN = StudentName.StudentID + InstructorName.InstructorID);
USE db_School
EXECUTE [dbo].[createSchoolDB]
END 
