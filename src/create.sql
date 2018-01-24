create table Address
(
	zip varchar(5) primary key,
	street varchar(30),
	city varchar(30),
	state varchar(20)
);

create table Person
(
	ssn varchar(10) primary key,
	firstName varchar(20) not null,
	middleName char(20),
	lastName varchar(20) not null,Gender varchar(1),
	dob date,
	zip varchar(5),
	phone varchar(10),
	FOREIGN KEY (zip) REFERENCES Address (zip)
);

create table employee
(
	ssn varchar(10) not null,
	FOREIGN KEY (ssn) REFERENCES Person (ssn)
 );

 create table Dependent
(
	name varchar(20) not null,
	essn varchar(10) not null,
	relation varchar(20),
	constraint depPK primary key (name,essn)
);

create table Department
(
	dno varchar(10) primary key,
	dname varchar(10) not null,
	college varchar(10),
	officeNo varchar(10),
	chairperson varchar(10),
	constraint dnameUK unique (dname)
);

create table Staff
(
	sn varchar(10) primary key,
	title varchar(10),
	deptno varchar(10),
	FOREIGN KEY (ssn) REFERENCES Employee (ssn),
	FOREIGN KEY (deptno) REFERENCES Department (dno)
 );

create table Faculty
(
	ssn varchar(10) primary key,
	degree varchar(10),
	rank varchar(20),
	EmpType varchar(10),
	deptNo varchar(10),
	FOREIGN KEY (ssn) REFERENCES Employee (ssn)
);

create table Student
(
	ssn varchar(10) primary key,
	studentNo varchar(10) not null,
	degreeProg varchar(5),
	minorDept varchar(10),
	majorDept varchar(10),
	class varchar(10),
	FOREIGN KEY (ssn) REFERENCES Person(ssn),
	FOREIGN KEY (minorDept) REFERENCES Department (dno),
	FOREIGN KEY (majorDept) REFERENCES Department (dno),
	constraint snoUK unique (studentNo)
);

create table Works_For
(
	facSSN varchar(10) not null,
	deptNo varchar(10) not null,
	constraint worksForPK primary key (facSSN,deptNo),
	FOREIGN KEY (facSSN) REFERENCES Faculty (ssn),
	FOREIGN KEY (deptNO) REFERENCES DEpartment (dno)
 );

create table Course
(
	cno varchar2(10) not null,
	cname varchar2(50),
	credits number(5),
	deptNo varchar(10) not null,
	FOREIGN KEY (deptNo) REFERENCES Department (dno)
);

create table Study_Plan
(
	stuSSN varchar(10) not null,
	courseNo varchar(10) not null,
	constraint studyplanPK primary key (stuSSN,courseNO),
	FOREIGN KEY (stuSSN) REFERENCES Student (ssn),
	FOREIGN KEY (courseNO) REFERENCES Course(cno)
);

create table Transcript
(
	stuSSN varchar(10) not null,
	courseNo varchar(10) not null,
	grade varchar(2) not null,
	constraint transcriptPK primary key (stuSSN,courseNo),
	FOREIGN KEY (stuSSN) REFERENCES Student(ssn),
	FOREIGN KEY (courseNo) REFERENCES Course (cno)
);

create table Section
(
	sno varchar(10) not null,
	semester varchar(10) not null,
	year number(4) not null,
	meetingDay varchar(10),
	meetingTime varchar(10),
	meetingRoom varchar(10),
	instructor varchar(10),
	courseNo varchar(10) not null,
	constraint sectionPK primary key (sno,semester,year,courseNo),
	FOREIGN KEY (instructor) REFERENCES Faculty (ssn),
	FOREIGN KEY (courseNo) REFERENCES Course (cno)
);

create table Grade_Report
(
	stuSSN varchar(10) not null,
	sno varchar(10) not null,
	semester varchar(10) not null,
	year number(4) not null,
	courseNo varchar(10) not null,
	grade varchar(2),
	constraint gradereportPK primary key (stuSSN,sno,semester,year,courseNo),
	FOREIGN KEY (stuSSN) REFERENCES Student (ssn),
	FOREIGN KEY (sno,semester,year,courseNo) REFERENCES Section (sno,semester,year,courseNo)
);

create table Salary_Scale
 (
	rank varchar(20) not null,
	empType varchar(9) not null,
	salary number(8,2),
	constraint ssPK primary key (rank,empType)
);

create table Grad_Student
(
	stuSSN varchar(10) primary key,
	facSSN varchar(10) not null,
	FOREIGN KEY (stuSSN) REFERENCES Faculty (ssn),
	FOREIGN KEY (facSSN) REFERENCES Student (ssn)
);

 create table Course_Prerequisite
(
	cno varchar(10) not null,
	precno varchar(10) not null,
	constraint cprPK primary key (cno,precno),
	FOREIGN KEY (cno) REFERENCES Course (cno),
	FOREIGN KEY (precno) REFERENCES Course (cno)
);

