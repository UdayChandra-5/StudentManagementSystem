🎓 Student Management System (SQL Project)
By: G. Uday Chandra

A clean and beginner-friendly SQL-based Student Management System designed to demonstrate real-world database modeling and query handling. This project simulates how educational institutions store and manage student information, course details, and academic performance.

🚀 Project Overview

This project includes a fully designed relational database capable of managing:

Student information

Course details

Enrollment records

Student grades

Department-level organization

It is an ideal SQL project for learning database design and showcasing analytical SQL skills.

🎯 Objectives

Build a normalized database for academic record management

Use SQL to create, modify, and query relational data

Practice JOINs, GROUP BY, constraints, and data relationships

Replicate a real-world student record management workflow

Strengthen SQL skills for Data Analyst / Developer roles

🏗️ Database Structure

The system includes these core tables:

1. Students

Stores personal and academic details of students.

Column	Description
student_id	Unique ID (Primary Key)
name	Student full name
age	Age
gender	Gender
department	Department/Branch
email	Contact email
2. Courses
Column	Description
course_id	Unique ID
course_name	Subject name
department	Related department
credits	Course credit value
3. Enrollments

Represents which student took which course.

Column	Description
enrollment_id	Unique ID
student_id	FK → Students
course_id	FK → Courses
semester	Semester enrolled
4. Grades
Column	Description
grade_id	Unique ID
student_id	FK → Students
course_id	FK → Courses
grade	Letter grade (A, B, C, etc.)
📂 Project Structure
📦 student-management-system
 ┣ 📄 README.md
 ┣ 📄 schema.sql
 ┣ 📄 data.sql
 ┣ 📄 queries.sql
 ┗ 📁 assets/
      ┗ 🖼️ ERD.png

🧱 SQL Schema (Sample)
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    department VARCHAR(50),
    credits INT
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

🧪 Sample Data Inserts
INSERT INTO Students (name, age, gender, department, email) VALUES
('Aarav Reddy', 20, 'Male', 'Computer Science', 'aarav@example.com'),
('Megha Sharma', 21, 'Female', 'Electronics', 'megha@example.com');

INSERT INTO Courses (course_name, department, credits) VALUES
('Database Management Systems', 'Computer Science', 3),
('Digital Electronics', 'Electronics', 4);

INSERT INTO Enrollments (student_id, course_id, semester) VALUES
(1, 1, 'Semester 3'),
(2, 2, 'Semester 3');

INSERT INTO Grades (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B');

🔍 Analysis Queries
✔ List all students
SELECT * FROM Students;

✔ Students belonging to Computer Science
SELECT * 
FROM Students 
WHERE department = 'Computer Science';

✔ Fetch each student's grades
SELECT s.name, c.course_name, g.grade
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id;

✔ Count students in each department
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department;

✔ Courses taken by each student
SELECT s.name, c.course_name, e.semester
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

📘 What I Learned

Designing relational databases from scratch

Implementing primary & foreign keys

Using JOINs for relational data queries

Building reusable SQL scripts

Representing real-world student data flows

Writing analytical queries for reporting
