CREATE TABLE DEPT
(
	dept_id 	bigint not null auto_increment primary key,
	code   		int(6)  NOT NULL UNIQUE,
	name   		VARCHAR(100) NOT NULL
);

insert into DEPT (code, name) values (10,'경제학과');
insert into DEPT (code, name) values (20,'컴퓨터공학과');
insert into DEPT (code, name) values (30,'영어영문학과');
insert into DEPT (code, name) values (40,'건축공학과');
commit;

CREATE TABLE STUDENT
(
	student_id bigint not null auto_increment primary key,
	code       int(6) NOT NULL UNIQUE,
	name       VARCHAR(100) NOT NULL,
	age        int(3) NOT NULL,
	grade      VARCHAR(50),
	daynight   VARCHAR(50),
	dept_id    bigint NOT NULL,
	FOREIGN KEY (dept_id) REFERENCES DEPT (dept_id)
);


insert into student(code, name, age, grade, daynight, dept_id) values (1002,'홍길동',20,'1학년','주간',1);
insert into student(code, name, age, grade, daynight, dept_id) values (1003,'둘리',21,'2학년','야간',4);
commit;


CREATE TABLE COURSE
(
	course_id     bigint not null auto_increment primary key,
	CODE   		  int(4) NOT NULL UNIQUE,
	name	   	  VARCHAR(100),
	instructor 	  VARCHAR(100)
);

insert into COURSE(code, name, instructor) values (1000,'자바프로그래밍','김자바');
insert into COURSE(code, name, instructor) values (2000,'파이썬프로그래밍','박파이썬');
insert into COURSE(code, name, instructor) values (3000,'영문학','최영어');
commit;

CREATE TABLE COURSE_STATUS
(
    status_id    bigint not null auto_increment primary key,
	student_id   bigint NOT NULL,
	course_id    bigint NOT NULL,
	score        int(4) NOT NULL,
	FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
	FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);

insert into COURSE_STATUS(student_id, course_id, score) values (1,1,90);
insert into COURSE_STATUS(student_id, course_id, score) values (1,2,80);
insert into COURSE_STATUS(student_id, course_id, score) values (2,3,93);
commit;