-- ============================================================================
-- Student Management System Database Schema
-- ============================================================================
-- Description: Database schema for a comprehensive student management portal
-- Version: 1.0
-- Date: Created for DBMS Project
-- ============================================================================

-- Create Database
CREATE DATABASE project;
GO

USE project;
GO

-- ============================================================================
-- TABLE CREATION SECTION
-- ============================================================================

-- Create Section Table (Referenced by Users)
CREATE TABLE section (
    section_id INT PRIMARY KEY,
    section_name CHAR(1) NOT NULL
);

-- Create Semester Table
CREATE TABLE semester (
    semester_id INT PRIMARY KEY,
    semester_name VARCHAR(10) NOT NULL
);

-- Create Course Table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credit_hrs INT NOT NULL,
    prereq VARCHAR(50) NULL
);

-- Create Users Table (Main entity for students, faculty, and staff)
CREATE TABLE users (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    contact VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cnic VARCHAR(15) NOT NULL,
    blood_group VARCHAR(2) NULL,
    nationality VARCHAR(50) NOT NULL,
    campus VARCHAR(50) NOT NULL,
    gender VARCHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
    dob DATE NOT NULL,
    job_type INT CHECK (job_type IN (0, 1, 2)),
    faculty_type CHAR(1) CHECK (faculty_type IN ('I', 'L')),
    office_num VARCHAR(5) NULL,
    instructor_department VARCHAR(20) NULL,
    instructor_post VARCHAR(50) NULL,
    student_batch VARCHAR(2) NULL,
    student_degree VARCHAR(10) NULL,
    section_id INT NULL,
    password VARCHAR(50) NOT NULL DEFAULT '12345',
    FOREIGN KEY (section_id) REFERENCES section(section_id)
);

-- Create Marks Table
CREATE TABLE marks (
    marks_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    obtained_marks FLOAT NULL,
    total_marks INT NOT NULL,
    average FLOAT NOT NULL,
    weightage FLOAT NOT NULL,
    maximum FLOAT NOT NULL,
    minimum FLOAT NOT NULL,
    standard_deviation FLOAT NOT NULL,
    flag VARCHAR(2) CHECK (flag IN ('Q', 'A', 'F', 'S1', 'S2')),
    student_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES users(id)
);

-- Create Attendance Table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    attendance_date DATE NOT NULL,
    duration FLOAT NOT NULL,
    [lecture#] INT NOT NULL, -- Using square brackets for column with special character
    attendance CHAR(1) CHECK (attendance IN ('P', 'A', 'L')),
    section_id INT NOT NULL,
    course_id INT NOT NULL,
    student_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (section_id) REFERENCES section(section_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES users(id)
);

-- Create Feedback Table
CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY,
    student_id VARCHAR(50) NOT NULL,
    teacher_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    rating VARCHAR(5) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES users(id),
    FOREIGN KEY (teacher_id) REFERENCES users(id)
);

-- Create Student Grade Table
CREATE TABLE student_grade (
    student_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    grade VARCHAR(2) CHECK (grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'F')),
    grade_point FLOAT NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- Create Transcript Table
CREATE TABLE transcript (
    transcript_id INT PRIMARY KEY,
    semester_id INT NULL,
    student_id VARCHAR(50) NOT NULL,
    course1_grade VARCHAR(50) NOT NULL,
    course1_id INT NOT NULL,
    course2_grade INT NOT NULL,
    course2_id INT NOT NULL,
    course3_grade INT NOT NULL,
    course3_id INT NOT NULL,
    course4_grade INT NOT NULL,
    course4_id INT NOT NULL,
    course5_grade INT NOT NULL,
    course5_id INT NOT NULL,
    cgpa FLOAT NOT NULL,
    sgpa FLOAT NOT NULL,
    credit_hrs_att INT NOT NULL,
    credit_hrs_ernd INT NOT NULL,
    FOREIGN KEY (semester_id) REFERENCES semester(semester_id),
    FOREIGN KEY (student_id) REFERENCES users(id),
    FOREIGN KEY (student_id, course1_id) REFERENCES student_grade(student_id, course_id),
    FOREIGN KEY (student_id, course2_id) REFERENCES student_grade(student_id, course_id),
    FOREIGN KEY (student_id, course3_id) REFERENCES student_grade(student_id, course_id),
    FOREIGN KEY (student_id, course4_id) REFERENCES student_grade(student_id, course_id),
    FOREIGN KEY (student_id, course5_id) REFERENCES student_grade(student_id, course_id)
);

-- Create Semester Course Table
CREATE TABLE semester_course (
    semester_no INT PRIMARY KEY,
    course1_id INT NULL,
    course2_id INT NULL,
    course3_id INT NULL,
    course4_id INT NULL,
    course5_id INT NULL,
    FOREIGN KEY (course1_id) REFERENCES course(course_id),
    FOREIGN KEY (course2_id) REFERENCES course(course_id),
    FOREIGN KEY (course3_id) REFERENCES course(course_id),
    FOREIGN KEY (course4_id) REFERENCES course(course_id),
    FOREIGN KEY (course5_id) REFERENCES course(course_id)
);

-- Create Degree Table
CREATE TABLE degree (
    degree_id INT PRIMARY KEY,
    semester1 INT NULL,
    semester2 INT NULL,
    semester3 INT NULL,
    semester4 INT NULL,
    semester5 INT NULL,
    semester6 INT NULL,
    semester7 INT NULL,
    semester8 INT NULL,
    FOREIGN KEY (semester1) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester2) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester3) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester4) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester5) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester6) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester7) REFERENCES semester_course(semester_no),
    FOREIGN KEY (semester8) REFERENCES semester_course(semester_no)
);

-- Create Student Course Junction Table
CREATE TABLE student_course (
    student_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- Create Faculty Course Junction Table
CREATE TABLE faculty_course (
    faculty_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (faculty_id, course_id),
    FOREIGN KEY (faculty_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- ============================================================================
-- DATA POPULATION SECTION
-- ============================================================================

-- Insert data into Section table
INSERT INTO section (section_id, section_name)
SELECT * FROM dbo.section$;

-- Insert data into Semester table
INSERT INTO semester (semester_id, semester_name)
SELECT * FROM dbo.semester$;

-- Insert data into Course table
INSERT INTO course (course_id, course_name, credit_hrs, prereq)
SELECT * FROM dbo.course$;

-- Insert data into Users table
INSERT INTO users (
    id, name, contact, email, cnic, blood_group, nationality, 
    campus, gender, dob, job_type, faculty_type, office_num, 
    instructor_department, instructor_post, student_batch, 
    student_degree, section_id
)
SELECT * FROM dbo.user$;

-- Insert data into Feedback table
INSERT INTO feedback (feedback_id, student_id, teacher_id, course_id, rating)
SELECT * FROM dbo.feedback$;

-- Insert data into Attendance table
INSERT INTO attendance (
    attendance_id, attendance_date, duration, [lecture#], 
    attendance, section_id, course_id, student_id
)
SELECT * FROM dbo.attendence$;

-- Insert data into Marks table
INSERT INTO marks (
    marks_id, course_id, obtained_marks, total_marks, average, 
    weightage, maximum, minimum, standard_deviation, flag, student_id
)
SELECT * FROM dbo.marks$;

-- Insert data into Student Grade table
INSERT INTO student_grade (student_id, course_id, grade, grade_point)
SELECT * FROM dbo.student_grade$;

-- Insert data into Transcript table
INSERT INTO transcript (
    transcript_id, semester_id, student_id, course1_grade, course1_id,
    course2_id, course2_grade, course3_id, course3_grade, course4_id,
    course4_grade, course5_id, course5_grade, cgpa, sgpa,
    credit_hrs_att, credit_hrs_ernd
)
SELECT * FROM dbo.transcript$;

-- ============================================================================
-- JUNCTION TABLE POPULATION
-- ============================================================================

-- Populate Faculty Course relationships
INSERT INTO faculty_course (faculty_id, course_id)
SELECT DISTINCT u.id, c.course_id
FROM users u
CROSS JOIN course c
WHERE u.id NOT IN ('I-1', 'I-2') 
  AND u.job_type != 2;

-- Populate Student Course relationships
INSERT INTO student_course (student_id, course_id)
SELECT DISTINCT u.id, c.course_id
FROM users u
CROSS JOIN course c
WHERE u.id NOT IN ('I-1', 'I-2');

-- ============================================================================
-- VERIFICATION QUERIES
-- ============================================================================

-- Verify Users table
SELECT COUNT(*) AS total_users FROM users;

-- Verify table relationships
SELECT 
    t.TABLE_NAME,
    COUNT(*) AS row_count
FROM INFORMATION_SCHEMA.TABLES t
LEFT JOIN sys.tables st ON t.TABLE_NAME = st.name
WHERE t.TABLE_TYPE = 'BASE TABLE'
  AND t.TABLE_SCHEMA = 'dbo'
GROUP BY t.TABLE_NAME
ORDER BY t.TABLE_NAME;

-- ============================================================================
-- END OF SCRIPT
-- ============================================================================