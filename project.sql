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
instructor_department varchar(10),
instructor_post varchar(50),
student_batch varchar(2),
student_degree varchar(10),
);

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
foreign key (course_id) references course(course_id) 
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
--course2_grade int not null,
--course3_grade int not null,
--course4_grade int not null,
--course5_grade int not null,
cgpa float not null,
sgpa float not null,
credit_hrs_att int not null,
credit_hrs_ernd int not null,
foreign key (semester_id) references semester(semester_id),
foreign key (student_id) references users(id),
);

