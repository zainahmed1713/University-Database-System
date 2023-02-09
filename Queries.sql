-- Showing Students with their relevant depts
SELECT s.std_id, s.f_name, s.l_name, d.dept_id, d.dept_name 
FROM student s, department d 
WHERE s.dept_id = d.dept_id;

-- Showing courses each student takes
SELECT s.std_id, s.f_name, s.l_name, t.course_id, t.semester, c.title, c.cred_hrs 
FROM student s, takes t, course c 
WHERE s.std_id = t.std_id AND t.course_id = c.course_id;

-- Showing Students with Advisors
SELECT s.std_id, s.f_name, s.l_name, a.inst_id, i.f_name, i.l_name 
FROM student s, advisor a, instructor i 
WHERE a.std_id = s.std_id AND a.inst_id = i.inst_id;

-- Showing Grades obtained by students
SELECT s.std_id, s.f_name, s.l_name, c.title, t.semester, t.grade 
FROM student s, takes t, course c
WHERE s.std_id = t.std_id AND t.course_id = c.course_id;

-- Showing Instructor with relevant depts
SELECT i.inst_id, i.f_name, i.l_name, i.dept_id, d.dept_name, d.hod 
FROM instructor i, department d
WHERE i.dept_id = d.dept_id;

-- Showing courses taught by instructors
SELECT i.inst_id, i.f_name, i.l_name, t.course_id, t.semester, c.title 
FROM instructor i, teaches t, course c 
WHERE t.inst_id = i.inst_id AND t.course_id = c.course_id;

-- Showing instructors who are also advisors
SELECT a.inst_id, i.f_name, i.l_name FROM instructor i, advisor a 
WHERE a.inst_id = i.inst_id;

-- Showing Every instructor who is not an advisor
SELECT i.inst_id, i.f_name, i.l_name FROM instructor i 
EXCEPT 
SELECT a.inst_id, i.f_name, i.l_name FROM advisor a, instructor i;

--Showing courses that are not yet assigned to any instructor
SELECT c.course_id, c.title FROM course c 
EXCEPT 
SELECT t.course_id, c.title FROM teaches t, course c;

-- Using INNER JOIN on student and dept table
SELECT * FROM student 
INNER JOIN department 
ON student.dept_id = department.dept_id;

--Finding total number of students in each department
SELECT COUNT(s.std_id) AS Number_Of_Students, d.dept_name FROM student s 
JOIN department d 
ON s.dept_id=d.dept_id 
GROUP BY d.dept_name 
ORDER BY COUNT(s.std_id) DESC;

--Checking if ANY student is in IT dept
SELECT * FROM student
JOIN department
ON student.dept_id=department.dept_id
WHERE dept_name = ANY(SELECT dept_name FROM department WHERE dept_name='IT');

-- Creating views so that only specific info of faculty can be shown
CREATE VIEW fac_bu
AS
SELECT inst_id, f_name, l_name FROM instructor;
-- Altering view to enter another tuple
INSERT INTO fac_bu VALUES(9011, 'John', 'Snow');

SELECT * FROM fac_bu;

GO
-- Showing Instructors with Max salary by making a procedure
CREATE PROCEDURE max_salary
AS
SELECT inst_id, f_name, l_name, salary 
FROM instructor 
WHERE salary = (SELECT MAX(salary) FROM instructor);
GO

EXEC max_salary;

GO
-- Showing Instructors with Min salary by making a procedure
CREATE PROCEDURE min_salary
AS
SELECT inst_id, f_name, l_name, salary 
FROM instructor 
WHERE salary = (SELECT MIN(salary) FROM instructor);
GO

EXEC min_salary;

GO
--Checking if a student record exists
CREATE PROCEDURE check_record @student_id INT
AS
IF EXISTS(SELECT std_id FROM student WHERE std_id = @student_id)
    BEGIN
        PRINT 'Student Exists'
    END
    ELSE
        BEGIN
        PRINT 'Student doesnt Exist'
    END
GO

EXEC check_record @student_id = 11;