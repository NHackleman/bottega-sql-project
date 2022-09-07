USE sql_project_schema;

BEGIN;
INSERT INTO grades(grades_number, grades_courses_id, grades_professors_id, grades_students_id)
VALUES (FLOOR((RAND()*(100-40+1)+40)), FLOOR(RAND()*(5-1+1))+1, FLOOR(RAND()*(10-1+1))+1, FLOOR(RAND()*(30-1+1))+1);

ROLLBACK;

DELETE FROM courses
WHERE courses_id > 5;


-- AVERAGE GRADE BY PROFESSOR
SELECT professors_name AS "Professor", AVG(grades_number) AS "Average Grade" FROM grades g
JOIN professors p
ON g.grades_professors_id = p.professors_id
GROUP BY professors_name;

-- TOP GRADES BY STUDENT
SELECT students_name AS "Student", MAX(grades_number) AS "Grade" FROM grades g
LEFT JOIN students s
ON g.grades_students_id = s.students_id
GROUP BY s.students_id;

-- GROUP STUDENTS BY COURSES ENROLLED
SELECT students_name AS "Student", courses_name AS "Course" FROM grades g
JOIN students s
ON g.grades_students_id = s.students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY courses_id;

-- REPORT OF AVERAGE GRADES FROM MOST CHALLENGING TO EASIEST
SELECT courses_name AS "Course", AVG(grades_number) AS "Grade Average" FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
GROUP BY courses_id;

-- FIND WHICH STUDENT AND PROFESSOR HAVE THE MOST COURSES IN COMMON
SELECT courses_name, students_name, professors_name from grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN students s
ON g.grades_students_id = s.students_id
JOIN professors p
ON g.grades_professors_id = p.professors_id;



SELECT * FROM students;
SELECT * FROM grades;
SELECT * FROM courses;
SELECT * FROM professors;

SELECT 
	grades_number,
    courses_name,
    students_name,
    professors_name
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN students s
ON g.grades_students_id = s.students_id
JOIN professors p
ON g.grades_professors_id = p.professors_id;