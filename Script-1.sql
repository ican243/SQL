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
 
 
 SELECT *
 FROM COURSE
 
 SELECT title, credit, YEAR, semester
 FROM course LEFT OUTER JOIN CLASS
 USING (course_id)
 
 SELECT title, credit, YEAR, semester
 FROM course, class
 WHERE course.course_id = class.course_id(+)
 
 SELECT title, credit, YEAR, semester
 FROM course RIGHT OUTER JOIN class
 USING (course_id)
 
 SELECT title, credit, YEAR, semester
 FROM course, class
 WHERE course.course_id(+) = class.course_id
 
 SELECT title, credit, YEAR, semester
 FROM course FULL OUTER JOIN CLASS
 USING (course_id)
 
 SELECT count(*)
 FROM STUDENT
 where YEAR = 3
 
 SELECT *--count(*)
 FROM EMP
 
 SELECT count(comm)
 FROM emp
 
 SELECT *
 FROM student
 
 SELECT count(distinct dept_id)
 FROM student
 
 SELECT count(*)
 FROM student s, department d
 WHERE s.dept_id = d.dept_id AND d.dept_name = '컴퓨터공학과'
 
 SELECT 2026 - year_emp
 FROM PROFESSOR 
 
 INSERT INTO PROFESSOR 
   values('92302','750728*1102458','김태석',923,'교수',1999);
 
 SELECT Ename, DNAME ,DNAME, LOC
 FROM emp, dept
 where emp.deptno = dept.deptno
 
 SELECT * FROM emp
 
 SELECT * FROM dept
 
 SELECT *
 FROM emp
 
 SELECT sum(SAL)
 FROM emp
 
 SELECT SUM(SAL)
 FROM EMP e 
 WHERE JOB = 'ANALYST'
 
 SELECT avg(2026 - YEAR_emp)
 FROM professor
 
 SELECT max(sal)
 FROM emp e, dept d
 WHERE e.deptno = d.deptno
 AND dname = 'ACCOUNTING'
 
 SELECT ENAME, MAX(SAL)
 FROM EMP
 GROUP BY ENAME
 
 SELECT DEPT_ID, count(*)
 FROM STUDENT
 GROUP BY DEPT_ID
 
 SELECT DEPT_NAME, COUNT(*)
 FROM STUDENT S, DEPARTMENT d
 WHERE S.DEPT_ID = D.DEPT_ID 
 GROUP BY d.DEPT_NAME
 
 SELECT DNAME, COUNT(*), AVG(SAL), MAX(SAL), MIN(SAL)
 FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO 
 GROUP BY DNAME
 
 SELECT  DEPT_NAME, COUNT(*), AVG(2026 - YEAR_EMP), MAX(2026 - YEAR_EMP)
 FROM PROFESSOR P, DEPARTMENT d
 WHERE P.DEPT_ID = D.DEPT_ID 
 GROUP BY DEPT_NAME
 
 SELECT DEPT_NAME, COUNT(*), AVG(2026 - YEAR_EMP), MAX(2026- YEAR_EMP)
 FROM PROFESSOR P, DEPARTMENT D
 WHERE P.DEPT_ID = D.DEPT_ID 
 GROUP BY D.DEPT_NAME 
 HAVING AVG(2026 - YEAR_EMP) >= 10
 
 SELECT DNAME, COUNT(*), AVG(SAL), MAX(SAL), MIN(SAL)
 FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO 
 GROUP BY DNAME
 HAVING COUNT(*) >= 5
 
 SELECT *
 FROM EMP
 WHERE COMM IS NOT NULL

 SELECT COUNT(*)
 FROM EMP
 
 SELECT *
 FROM CLASS
 
 SELECT TITLE
 FROM COURSE
 WHERE COURSE_ID IN
 	(SELECT DISTINCT COURSE_ID
	FROM CLASS
	WHERE CLASSROOM = '301호')
	
SELECT DISTINCT TITLE
FROM COURSE C1 , CLASS C2
WHERE C1.COURSE_ID = C2.COURSE_ID 
AND CLASSROOM = '301호'

SELECT TITLE
FROM COURSE
WHERE COURSE_ID NOT IN
(SELECT DISTINCT COURSE_ID
FROM CLASS
WHERE YEAR = 2012 AND SEMESTER = 2)


SELECT TITLE
FROM COURSE 
WHERE COURSE_ID 
MINUS
SELECT COUR

SELECT *
FROM TAKES

CREATE OR REPLACE VIEW V_TAKES AS
SELECT STU_ID, CLASS_ID
FROM TAKES

SELECT *
FROM V_TAKES

CREATE OR REPLACE VIEW CS_STUDENT AS
SELECT S.STU_ID, S.RESIDENT_ID, S.NAME, S.YEAR, S.ADDRESS, S.DEPT_ID
FROM STUDENT S, DEPARTMENT D
WHERE S.DEPT_ID = D.DEPT_ID 
AND D.DEPT_NAME = '컴퓨터공학과'

SELECT *
FROM CS_STUDENT

INSERT into V_TAKES s
VALUES('1292502','c101-01')

CREATE OR REPLACE VIES V_TAKES AS
SELECT STU_ID, CLASS_ID
FROM TAKES
WITH READ ONLY;

SELECT * FROM V_TAKES

INSERT into V_TAKES VALUES('1292502','c101-01') 