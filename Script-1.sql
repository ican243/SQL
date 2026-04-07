INSERT INTO student
VALUES ('1292002', '900305*1730021', '임진휘', 3, '서울', '921') 


DELETE --SELECT *
FROM PROFESSOR
WHERE name = '김태석'

SELECT * FROM professor

SELECT DISTINCT address
FROM student

SELECT name, 2026-year_emp
FROM professor

SELECT name, stu_id, dept_id
FROM student

SELECT dept_id, dept_name
FROM department

SELECT name, dept_name
FROM student, DEPARTMENt
WHERE student.dept_id = department.dept_id

SELECT * FROM department

SELECT * FROM student

SELECT *
FROM student, department

SELECT student.stu_id, name
FROM student, DEPARTMENT
WHERE student.dept_id = department.dept_id AND student.YEAR = 3 AND department.dept_name = '컴퓨터공학과'

SELECT name, stu_id
FROM STUDENT
WHERE YEAR = 3 OR YEAR = 4
ORDER BY name desc, stu_id 


SELECT s.name, d.dept_name
FROM STUDENT s, department d
WHERE s.dept_id = d.dept_id


SELECT address
FROM student
WHERE name = '김광식'

SELECT *
FROM STUDENT 
WHERE address = '서울'

SELECT s2.name 
FROM student s1, student s2
WHERE s1.address = s2.address AND s1.name = '김광식'

SELECT name, POSITION, 2025-year_emp
FROM professor

SELECT name 이름, POSITION 직위, 2026-year_emp AS 재직연수
FROM professor

 SELECT *
 FROM student
 WHERE resident_id LIKE '%*2%'
 
 SELECT name FROM student
 UNION all
 SELECT name FROM professor
 
 SELECT s.stu_id
 FROM student s, department d, takes t
 WHERE s.dept_id = d.dept_id
 AND t.stu_id = s.stu_id
 AND dept_name = '컴퓨터공학과'
 AND grade = 'A+'
 
 SELECT stu_id
 FROM student s, department d
 WHERE s.dept_id = d.dept_id AND dept_name = '컴퓨터공학과'
 INTERSECT
 SELECT stu_id
 FROM TAKES
 WHERE grade = 'A+'
 
 SELECT * FROM takes WHERE grade = 'A+';
 
 SELECT stu_id
 FROM student s,department d
 WHERE s.dept_id = d.dept_id
 AND dept_name ='산업공학과'
 MINUS
 SELECT stu_id
 FROM takes
 WHERE grade = 'A+'
 
 
 SELECT title, credit, YEAR, semester, division
 FROM course, class
 WHERE course.course_id = class.course_id
 
 SELECT *
 FROM class
 
 