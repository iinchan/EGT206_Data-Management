/*------------------Week 5----------------------*/
/* Activity 2: Create a Table for the chosen database using SQL */
CREATE DATABASE egt206_StudentDB;

USE egt206_StudentDB; 

CREATE TABLE studentInfo_2
(
ID varchar(10) NOT NULL, -- ID specify with 10 characters with values 
Name varchar(50) NOT NULL -- Name specify with 50 characters with values 
);


/* Activity 3: Remove Table and Database using SQL */
DROP TABLE studentInfo_2;
DROP DATABASE egt206_StudentDB;


/* Activity 4: Create a New Database and its Table using SQL */
CREATE DATABASE egt206_prac5DB;

USE egt206_prac5DB;

CREATE TABLE StudentDetails
(
AdmNo varchar(10) NOT NULL,
Name varchar(50) NOT NULL,
Gender varchar(20) NOT NULL,
Address varchar(255) NOT NULL,
HandPhoneNo INT NOT NULL,
DateOfBirth DATE NOT NULL,
NumOfSiblings INT NOT NULL,
PRIMARY KEY(AdmNo)
);


/* Activity 5: Insert values into Table using SQL */
INSERT INTO StudentDetails(AdmNo, Name, Gender, Address, HandPhoneNo, DateOfBirth, NumOfSiblings)
VALUES("224416M", "Mock Ying Jing", "Female", "Blk 300 Canberra Road", 88120971, "2003-09-12", 1);

INSERT INTO StudentDetails(AdmNo, Name, Gender, Address, HandPhoneNo, DateOfBirth, NumOfSiblings)
VALUES("224499M", "Milo Oreo Milk", "Female", "Clementi West", 97546789, "2005-09-12", 1);

INSERT INTO StudentDetails(AdmNo, Name, Gender, Address, HandPhoneNo, DateOfBirth, NumOfSiblings)
VALUES("222213Y", "Tan Ah Kow", "Male", "Jurong West Road", 86543789, "1997-07-24", 2);

SELECT *
FROM StudentDetails;

DELETE FROM StudentDetails WHERE AdmNo="224416M"; /* cus primary key u set */

SELECT *
FROM StudentDetails;

CREATE DATABASE egt206_prac6DB;


/*------------------Week 6----------------------*/
/* Activity 1: Create Database and Table using SQL */
USE egt206_prac6DB;

CREATE TABLE AllStudentInfo
(
school varchar(4) NOT NULL,
name varchar(100) NOT NULL,
gender varchar(1) NOT NULL,
birthDate date NOT NULL,
hobbies varchar(100) NULL,
description varchar(100) NULL,
collectedBy varchar(10) NOT NULL,
PRIMARY KEY(school, name, birthDate)
);


/* Activity 2: Insertion of the data from csv file */
-- done configuration
SELECT * FROM AllStudentInfo;


/* Activity 3: SELECT only certain columns of the rows */
-- Question 1 --
SELECT school, name, gender FROM AllStudentInfo; 

-- Question 2 --
SELECT gender, name, school FROM AllStudentInfo;

-- Question 3 --
SELECT name as StudentName FROM AllStudentInfo;

-- Question 4 --
SELECT DISTINCT(school) FROM AllStudentInfo; 

SELECT school FROM AllStudentInfo; 


/* Activity 4: Using the WHERE condition */
-- Question 1 --
SELECT gender, birthDate, hobbies, description FROM AllStudentInfo
WHERE school="SBM";

-- Question 2 --
SELECT name, birthDate, hobbies, description FROM AllStudentInfo
WHERE gender="F";

-- Question 3 --
SELECT name, birthDate, hobbies, description FROM AllStudentInfo
WHERE gender="F" AND school="SIT";

-- Question 4 --
SELECT name, birthDate, hobbies, description FROM AllStudentInfo
WHERE gender="M" AND school!="SEG";

-- Question 5 --
SELECT * FROM AllStudentInfo
WHERE birthDate LIKE "1995%";

-- Question 6 --
SELECT * FROM AllStudentInfo
WHERE hobbies="Gaming";

-- Question 7 --
SELECT * FROM AllStudentInfo
WHERE description
IN ("Friendly" OR description="Cheerful" OR description="Brave");


/* Activity 5: Deletion of records using WHERE */
-- Question 1 --
DELETE FROM AllStudentInfo 
WHERE school="SIDM";

SELECT * FROM AllStudentInfo;

-- Question 2 --
DELETE FROM AllStudentInfo 
WHERE gender="F" AND school="SHS";


/* Activity 6: Ordering of Output */
-- Question 1 --
SELECT * FROM AllStudentInfo;

SELECT name FROM AllStudentInfo 
WHERE gender="F" AND school="SEG"
ORDER BY name;

-- Question 2 --
SELECT * FROM AllStudentInfo
ORDER BY school DESC, name;

/* Activity 7: GROUP BY */
SELECT school, COUNT(*) FROM AllStudentInfo
WHERE gender = 'F'
GROUP BY school;


/*------------------Week 7----------------------*/
/* Activity 1: Create Database and Table using SQL */
CREATE DATABASE egt206_prac7DB;

USE egt206_prac7DB;

-- Create books table --
CREATE TABLE books
(
	id int NOT NULL,
    title varchar(50) NOT NULL,
    booktype varchar(30) NOT NULL,
    author_id int NOT NULL,
    editor_id int NOT NULL,
    translator_id int,
    PRIMARY KEY(id)
);

-- Insert values into books table --
INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(1, "Time to Grow Up!", "original", 11, 21, NULL);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(2, "Your Trip", "translated", 15, 22, 32);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(3, "Lovely Love", "original", 14, 24, NULL);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(4, "Dream Your Life", "original", 11, 24, NULL);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(5, "Oranges", "translated", 12, 25, 31);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(6, "Your Happy Life", "translated", 15, 22, 33);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(7, "Applied AI", "translated", 13, 23, 34);

INSERT INTO books(id, title, booktype, author_id, editor_id, translator_id)
VALUES(8, "My Last Book", "original", 11, 28, NULL);

SELECT * FROM books;


-- Create authors table --
CREATE TABLE authors
(
	id int NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    PRIMARY KEY(id)
);

-- Insert values into authors table --
INSERT INTO authors(id, first_name, last_name)
VALUES(11, "Ellen", "Writer");

INSERT INTO authors(id, first_name, last_name)
VALUES(12, "Olga", "Savelleva");

INSERT INTO authors(id, first_name, last_name)
VALUES(13, "Jack", "Smart");

INSERT INTO authors(id, first_name, last_name)
VALUES(14, "Donald", "Brain");

INSERT INTO authors(id, first_name, last_name)
VALUES(15, "Yao", "Dou");

SELECT * FROM authors;


-- Create editors table --
CREATE TABLE editors
(
	id int NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    PRIMARY KEY(id)
);

-- Insert values into editors table --
INSERT INTO editors(id, first_name, last_name)
VALUES(21, "Daniel", "Brown");

INSERT INTO editors(id, first_name, last_name)
VALUES(22, "Mark", "Johnson");

INSERT INTO editors(id, first_name, last_name)
VALUES(23, "Maria", "Evans");

INSERT INTO editors(id, first_name, last_name)
VALUES(24, "Cathrine", "Roberts");

INSERT INTO editors(id, first_name, last_name)
VALUES(25, "Sebastian", "Wright");

INSERT INTO editors(id, first_name, last_name)
VALUES(26, "Barbara", "Jones");

INSERT INTO editors(id, first_name, last_name)
VALUES(27, "Matthew", "Smart");

SELECT * FROM editors;


-- Create translators table --
CREATE TABLE translators
(
	id int NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    PRIMARY KEY(id)
);

-- Insert values into translators table --
INSERT INTO translators(id, first_name, last_name)
VALUES(31, "Ira", "Davies");

INSERT INTO translators(id, first_name, last_name)
VALUES(32, "Ling", "Weng");

INSERT INTO translators(id, first_name, last_name)
VALUES(33, "Kristian", "Green");

INSERT INTO translators(id, first_name, last_name)
VALUES(34, "Roman", "Edwards");

SELECT * FROM translators;


/* Activity 2: Inner Joins / Join */
SELECT a.id, a.title, b.first_name, b.last_name
FROM books AS a
INNER JOIN editors AS b
ON a.editor_id = b.id;


/* Activity 3: Left Outer Join */
SELECT a.id, a.title, b.first_name, b.last_name
FROM books AS a
LEFT OUTER JOIN editors AS b
ON a.editor_id = b.id;

-- Yes, there is a difference. --
-- Activity 2 (Inner Join) shows from ID 1-7 but Activity 3 (Left Outer Join) shows from ID 1-8 --


/* Activity 4: Right Outer Join */
SELECT a.id, a.first_name, a.last_name, b.title
FROM editors AS a
RIGHT OUTER JOIN books as b
ON a.id = b.editor_id;


/* Activity 5: Full Outer Join */
SELECT a.id, a.title, a.booktype, b.first_name, b.last_name
FROM books AS a
LEFT OUTER JOIN editors as b
ON a.editor_id = b.id
UNION
SELECT a.id, a.title, a.booktype, b.first_name, b.last_name
FROM books AS a
RIGHT OUTER JOIN editors as b
ON a.editor_id = b.id;