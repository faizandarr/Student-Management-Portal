create database project

use  project


create table users(
id varchar(50) primary key,
name varchar(50) not null,
contact varchar(11) not null,
email varchar(50) not null,
cnic varchar (15) not null,
blood_group varchar(2) ,
nationality varchar(50) not null ,
campus varchar(50) not null,
gender varchar(1) not null,
dob date not null,
job_type int check(job_type=0 OR job_type=1 or job_type=2),
faculty_type char check ( faculty_type='I' or faculty_type='L'),
office_num varchar(5),
instructor_department varchar(20),
instructor_post varchar(50),
student_batch varchar(2),
student_degree varchar(10),
section_id int,
foreign key (section_id) references section(section_id)
);
ALTER TABLE users ADD password VARCHAR(50) NULL;
UPDATE users SET password = '12345';

select* from users

ALTER TABLE users ALTER COLUMN password VARCHAR(50) NOT NULL;


create table marks(
marks_id varchar (50) not null,
course_id int not null,
obtained_marks float , 
total_marks int not null,
average float not null,
weightage float not null,
maximum float not null,
minimum float not null,
standard_deviation float not null,
flag varchar(2) check ( flag='Q' or flag='A' or flag='F' or flag='S1' or flag='S2'),
foreign key (course_id) references course(course_id) ,
student_id varchar(50) not null,
foreign key (student_id) references users(id)
);

create table attendance(
attendance_id int primary key,
attendance_date date not null,
duration float not null,
lecture# int not null,
attendance char check ( attendance='P' or attendance='A' or attendance='L'),
section_id int not null,
foreign key (section_id) references section(section_id),
course_id int not null,
student_id varchar(50) not null,
foreign key (course_id) references course(course_id),
foreign key (student_id) references users(id)
);

create table section(
section_id int primary key,
section_name char,
);

create table semester(
semester_id int primary key,
semester_name varchar(10),
);

create table feedback(
feedback_id int primary key,
student_id varchar(50) not null,
teacher_id varchar(50) not null,
course_id int not null,
rating varchar(5) not null,
foreign key (course_id) references course(course_id),
foreign key (student_id) references users(id),
foreign key (teacher_id) references users(id)
);

create table course(
course_id int primary key,
course_name varchar(50) not null,
credit_hrs int not null,
prereq varchar(50) 
);

create table student_grade(
student_id varchar(50) not null,
course_id int not null,
grade varchar(2) check (grade='A+' or grade='A'  or grade='A-' or grade='B+' or grade='B' or grade='B-' or grade='C+' or grade='C' or grade='C-' or grade='D+' or grade='D' or grade='F'),
grade_point float not null,
primary key (student_id,course_id),
foreign key (student_id) references users(id),
foreign key (course_id) references course(course_id)

);

create table transcript(
transcript_id int primary key,
semester_id int ,
student_id varchar(50) not null,
course1_grade varchar(50) not null,
course1_id int not null,
foreign key (student_id,course1_id) references student_grade(student_id,course_id),
course2_grade int not null,
course2_id int not null,
foreign key (student_id,course2_id) references student_grade(student_id,course_id),
course3_grade int not null,
course3_id int not null,
foreign key (student_id,course3_id) references student_grade(student_id,course_id),
course4_grade int not null,
course4_id int not null,
foreign key (student_id,course4_id) references student_grade(student_id,course_id),
course5_grade int not null,
course5_id int not null,
foreign key (student_id,course5_id) references student_grade(student_id,course_id),
cgpa float not null,
sgpa float not null,
credit_hrs_att int not null,
credit_hrs_ernd int not null,
foreign key (semester_id) references semester(semester_id),
foreign key (student_id) references users(id),
);


create table semester_course(
semester_no int primary key,
course1_id int,
foreign key (course1_id) references course(course_id),
course2_id int,
foreign key (course2_id) references course(course_id),
course3_id int,
foreign key (course3_id) references course(course_id),
course4_id int,
foreign key (course4_id) references course(course_id),
course5_id int,
foreign key (course5_id) references course(course_id),
);

create table degree(
degree_id int primary key,

semester1 int,
foreign key (semester1) references semester_course(semester_no),
semester2 int,
foreign key (semester2) references semester_course(semester_no),
semester3 int,
foreign key (semester3) references semester_course(semester_no),
semester4 int,
foreign key (semester4) references semester_course(semester_no),
semester5 int,
foreign key (semester5) references semester_course(semester_no),
semester6 int,
foreign key (semester6) references semester_course(semester_no),
semester7 int,
foreign key (semester7) references semester_course(semester_no),
semester8 int,
foreign key (semester8) references semester_course(semester_no)
);

create table student_course
(
  student_id varchar(50),
  course_id int,
  foreign key(student_id) references users(id),
  foreign key(course_id) references course(course_id)
);

create table faculty_course
(
  student_id varchar(50),
  course_id int,
  foreign key(student_id) references users(id),
  foreign key(course_id) references course(course_id)
);




insert into users(id,name,contact,email,cnic,blood_group,nationality,campus,gender,dob,job_type,faculty_type,office_num,instructor_department,instructor_post,student_batch,student_degree,section_id)
select* from dbo.user$


insert into section ( section_id,section_name)
select*from dbo.section$

insert into semester(semester_id,semester_name)
select* from dbo.semester$

insert into course(course_id,course_name,credit_hrs,prereq)
select* from dbo.course$

insert into feedback(feedback_id,student_id,teacher_id,course_id,rating)
select* from feedback$

insert into attendance(attendance_id,attendance_date,duration,lecture#,attendance,section_id,course_id,student_id)
select* from dbo.attendence$

insert into marks(marks_id,course_id,obtained_marks,total_marks,average,weightage,maximum,minimum,standard_deviation,flag,student_id)
select* from dbo.marks$

insert into student_grade(student_id,course_id,grade,grade_point)
select* from dbo.student_grade$

insert into transcript(transcript_id,semester_id,student_id,course1_grade,course1_id,course2_id,course2_grade,course3_id,course3_grade,course4_id,course4_grade,course5_id,course5_grade,cgpa,sgpa,credit_hrs_att,credit_hrs_ernd)
select* from dbo.transcript$


insert into faculty_course(student_id,course_id) 
select id,course_id
from users
where id!='I-1' and id !='I-2' and job_type !=2


insert into student_course(student_id,course_id)
select id,course_id
from users
where id!='I-1' and id !='I-2'


