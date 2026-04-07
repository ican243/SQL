create table department(
dept_id varchar2(10),
dept_name varchar2(20) NOT null,
office varchar2(20),
CONSTRAINT pk_department PRIMARY key(dept_id)
);


CREATE table student(
stu_id varchar2(10),
resident_id varchar2(14) NOT null,
name varchar2(10) NOT null,
YEAR int,
address varchar2(10),
dept_id varchar2(10),
CONSTRAINT pk_student PRIMARY KEY(stu_id),
CONSTRAINT fk_student FOREIGN key(dept_id) REFERENCES department(dept_id)
);



CREATE TABLE professor
(
prof_id varchar2(10),
resident_id varchar(14) NOT NULL,
name varchar2(10) NOT NULL,
dept_id varchar2(10),
POSITION varchar2(10),
year_emp int,
CONSTRAINT pk_professor PRIMARY key(prof_id),
CONSTRAINT fk_professor FOREIGN KEY(dept_id) 
REFERENCES department(dept_id)
);


CREATE TABLE course
(
course_id varchar2(10),
title varchar2(14) NOT NULL,
credit int,
CONSTRAINT pk_course PRIMARY KEY(course_id)
);


CREATE TABLE class
(
class_id varchar2(10),
course_id varchar(10),
YEAR int,
semester int,
division char(1),
prof_id varchar2(10),
classroom varchar2(9),
enroll int,
CONSTRAINT pk_class PRIMARY key(class_id),
CONSTRAINT fk_class FOREIGN key(course_id)
REFERENCES course(course_id),
CONSTRAINT fk_calss2 FOREIGN key(prof_id)
REFERENCES professor(prof_id)
);


CREATE TABLE takes
( 
stu_id varchar2(10),
class_id varchar2(10),
grade char(5),
CONSTRAINT pk_takes PRIMARY key(stu_id, class_id),
CONSTRAINT fk_takes1 FOREIGN KEY(stu_id)
references student(stu_id),
CONSTRAINT fk_takes2 FOREIGN KEY(class_id)
REFERENCES class(class_id)
);




ALTER TABLE STUDENT 
ADD age int;


ALTER TABLE STUDENT 
DROP COLUMN age;

insert into department values('920', '컴퓨터공학과', '201호');
insert into department values('923', '산업공학과', '207호');
insert into department values('925', '전자공학과', '308호');
	
insert into student values('1292001', '900424*1825409', '김광식', 3, '서울', 920);
insert into student values('1292002', '900305*1730021', '김정현', 3, '서울', 920);
insert into student values('1292003', '891021*2308302', '김현정', 4, '대전', 920);
insert into student values('1292301', '890902*2704012', '김현정', 2, '대구', 923);
insert into student values('1292303', '910715*1524390', '박광수', 3, '광주', 923);
insert into student values('1292305', '921011*1809003', '김우주', 4, '부산', 923);
insert into student values('1292501', '900825*1506390', '박철수', 3, '대전', 925);
insert into student values('1292502', '911011*1809003', '백태성', 3, '서울', 925);
 	
insert into professor values('92001', '590327*1839240', '이태규', '920', '교수', 1997);
insert into professor values('92002', '690702*1350026', '고희석', '920', '부교수', 2003);
insert into professor values('92301', '741011*2765501', '최성희', '923', '부교수', 2005);
insert into professor values('92302', '750728*1102458', '김태석', '923', '교수', 1999);
insert into professor values('92501', '620505*1200546', '박철재', '925', '조교수', 2007);
insert into professor values('92502', '740101*1830264', '장민석', '925', '부교수', 2005);

insert into course values('C101', '전산개론', 3);
insert into course values('C102', '자료구조', 3);
insert into course values('C103', '베이스', 4);
insert into course values('C301', '운영체제', 3);
insert into course values('C302', '컴퓨터', 3);
insert into course values('C303', '이산수학', 4);
insert into course values('C304', '객체지향', 4);
insert into course values('C501', '인공지능', 3);
insert into course values('C502', '알고리즘', 2);

insert into class values('C101-01', 'C101', 2012, 1, 'A', '92301', '301호', 40);
insert into class values('C102-01', 'C102', 2012, 1, 'A', '92001', '209호', 30);
insert into class values('C103-01', 'C103', 2012, 1, 'A', '92501', '208호', 30);
insert into class values('C103-02', 'C103', 2012, 1, 'B', '92301', '301호', 30);
insert into class values('C501-01', 'C501', 2012, 1, 'A', '92501', '103호', 45);
insert into class values('C501-02', 'C501', 2012, 1, 'B', '92502', '204호', 25);
insert into class values('C301-01', 'C301', 2012, 2, 'A', '92502', '301호', 30);
insert into class values('C302-01', 'C302', 2012, 2, 'A', '92501', '209호', 45);
insert into class values('C502-01', 'C502', 2012, 2, 'A', '92001', '209호', 30);
insert into class values('C502-02', 'C502', 2012, 2, 'B', '92301', '103호', 26);


insert into takes values('1292001', 'C101-01', 'B+');
insert into takes values('1292001', 'C103-01', 'A+');
insert into takes values('1292001', 'C301-01', 'A');
insert into takes values('1292002', 'C102-01', 'A');
insert into takes values('1292002', 'C103-01', 'B+');
insert into takes values('1292002', 'C502-01', 'C+');
insert into takes values('1292003', 'C103-02', 'B');
insert into takes values('1292003', 'C501-02', 'A+');
insert into takes values('1292301', 'C102-01', 'C+');
insert into takes values('1292303', 'C102-01', 'C');
insert into takes values('1292303', 'C103-02', 'B+');
insert into takes values('1292303', 'C501-01', 'A+');

SELECT * FROM takes;