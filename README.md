# Student Management Portal

A comprehensive Student Management System developed as a semester project for the Database Systems course (CS2005) at FAST NUCES, Islamabad.

## Project Overview

The **Student Management Portal** is an academic database management system modeled after FAST NUCES' internal FLEX portal. It handles course management, student enrollment, academic operations, and reporting for three core user roles:

- **Academic Office**
- **Faculty**
- **Students**

This system ensures data integrity, user-specific privileges, and report generation with a secure and scalable backend.

---

## Features

### Authentication & Authorization
- Role-based access for Academic Office, Faculty, and Students
- Secure login with credential validation
- Default password assignment with manual update option

### Academic Office Interface
- Course offering management (pre-requisites, student limits)
- Course allocation to faculty with workload constraints
- Section creation (10–50 students per section)
- Generate reports:
  - Offered Courses Report
  - Students Section Report
  - Course Allocation Report

### Faculty Interface
- View assigned courses and sections
- Set and validate marks distribution (total 100%)
- Manage attendance (P/A/L), evaluations, and grade generation
- Generate reports:
  - Attendance Sheet
  - Evaluation Report
  - Grade Report
  - Grade Count Report
  - Student Feedback Report

### Student Interface
- View attendance, marks, grades, and transcripts
- Compare CGPAs across semesters via graphs
- Submit course and instructor feedback via form interface

---

## Database Schema

The project uses Microsoft SQL Server and follows a normalized relational model. Major tables include:

- `users`: Student, Faculty, Academic Office metadata
- `course`: Course details with pre-requisites
- `attendance`: Attendance records for each lecture
- `marks`: Evaluations with statistical metrics
- `feedback`: Feedback per student-teacher-course
- `student_grade`, `transcript`: Academic performance data
- `semester`, `degree`, `section`: Structural data

The schema is defined in [`query.sql`](query.sql).

---

---

## Technologies Used

- **Front-end:** ASP.NET Web Forms (Visual Studio 2019)
- **Back-end:** Microsoft SQL Server
- **Language:** C#, SQL
- **Reports:** Generated through SQL queries and frontend rendering

---

## Setup Instructions

1. **Database Setup:**
   - Open `query.sql` in SQL Server Management Studio.
   - Run the script to create the database and tables.
   - Ensure the data sheets (`*.xlsx`) are imported correctly as per script instructions.

2. **Visual Studio Setup:**
   - Open the C# solution in Visual Studio 2019+.
   - Update the database connection string in `web.config`.
   - Build and run the project.

3. **Login Details:**
   - Users will login using their `id` and default password `12345`.
   - Password can be changed later from the UI.

---

## Reports

Reports are role-specific and generated based on dynamic data:

- 📄 Offered Courses Report
- 📄 Section-wise Student Report
- 📄 Instructor Allocation Report
- 📄 Attendance Sheets with % attendance
- 📄 Evaluation and Grade Sheets
- 📄 Feedback Reports with percentage ratings

---

## Security & Audit

- Password-protected access per user role
- Input validation and controlled operations per role
- Audit Trail implemented (Bonus: +20 marks criteria)

---

## Project Link

🔗 [Student Management Portal - GitHub Repository](https://github.com/faizandarr/Student-Management-Portal)



