-- Get all students
SELECT * FROM Students;

-- Get students in Computer Science
SELECT * FROM Students WHERE department = 'Computer Science';

-- Get all courses
SELECT * FROM Courses;

-- Get student grades
SELECT Students.name, Courses.course_name, Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Courses ON Grades.course_id = Courses.course_id;
