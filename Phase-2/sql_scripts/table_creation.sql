drop database dbms;
create database dbms;

\c dbms

drop table timetable;
drop table assign_to;
drop table lecturer;
drop table offers;
drop table sem_class;
drop table offered_during;
drop table course;

CREATE TABLE timetable
(	Day VARCHAR(15)  NOT NULL,
	PNo INT NOT NULL,
	Start_time TIME NOT NULL,
  End_time TIME NOT NULL,
	PRIMARY KEY (Day,PNo,Start_time,End_time));

CREATE TABLE sem_class
(	Sem INT NOT NULL,
  Section CHAR NOT NULL,
  Room_No VARCHAR(12) NOT NULL,
  Year INT NOT NULL,
	PRIMARY KEY (Sem,Section,Room_No));

CREATE TABLE course
(	C_Code VARCHAR(12) NOT NULL,
  C_Name VARCHAR(15) NOT NULL,
  Credits INT NOT NULL,
	PRIMARY KEY (C_Code),
  UNIQUE (C_Name));

CREATE TABLE lecturer
(	Initials VARCHAR(10) NOT NULL,
	Name VARCHAR(20) NOT NULL,
  Dept VARCHAR(15) NOT NULL,
  C_Code VARCHAR(12) NOT NULL,
	PRIMARY KEY (Initials,C_Code),
	FOREIGN KEY (C_Code) REFERENCES course(C_Code));

CREATE TABLE assign_to
(	Initials VARCHAR(10) NOT NULL ,
	C_Code VARCHAR(12) NOT NULL,
	Sem INT NOT NULL,
	Section CHAR NOT NULL,
	Room_No VARCHAR(12) NOT NULL,
  Day VARCHAR(15)  NOT NULL,
  PNo INT NOT NULL,
  Start_time TIME NOT NULL,
  End_time TIME NOT NULL,
	PRIMARY KEY (Initials,C_Code,Sem,Section,Room_No,Day,PNo,Start_time,End_time),
	FOREIGN KEY (Initials,C_Code) REFERENCES lecturer(Initials,C_Code),
  FOREIGN KEY (Sem,Section,Room_No) REFERENCES sem_class(Sem,Section,Room_No),
  FOREIGN KEY (Day,PNo,Start_time,End_time) REFERENCES timetable(Day,PNo,Start_time,End_time));

CREATE TABLE offers
(	Initials VARCHAR(10) NOT NULL,
	C_Code VARCHAR(12) NOT NULL,
  Sem INT NOT NULL,
	Section CHAR NOT NULL,
	Room_No VARCHAR(12) NOT NULL,
	PRIMARY KEY (Initials,C_Code,Sem,Section,Room_No),
	FOREIGN KEY (Initials,C_Code) REFERENCES lecturer(Initials,C_Code),
  FOREIGN KEY (C_Code) REFERENCES course(C_Code),
  FOREIGN KEY (Sem,Section,Room_No) REFERENCES sem_class(Sem,Section,Room_No));

CREATE TABLE offered_during
(	C_Code VARCHAR(12) NOT NULL,
  Sem INT NOT NULL,
  Section CHAR NOT NULL,
  Room_No VARCHAR(12) NOT NULL,
	PRIMARY KEY (C_Code,Sem,Section,Room_No),
  FOREIGN KEY (C_Code) REFERENCES course(C_Code),
  FOREIGN KEY (Sem,Section,Room_No) REFERENCES sem_class(Sem,Section,Room_No));
