# Exam Seating Arrangement System (DBMS)

This project is a DBMS-based Exam Seating Arrangement System with a Python GUI.
It automates student seating allocation using stored procedures and prevents scheduling conflicts using triggers.

The system also includes intelligent roll-number-based detection of student year and department, reducing manual input and improving accuracy.

## Features
- Department & student management
- Exam scheduling
- Automated seat allocation (Stored Procedure)
- Prevent double booking (Trigger)
- Seat tracking (Function)
- Automatic detection of student year and department from roll number

## Concepts Used
- SQL (DDL, DML)
- Joins
- Stored Procedures
- Functions
- Triggers
- Cursor-based allocation logic
- ReportLab (PDF generation)


## Auto Detection Logic

The system automatically derives student details from the roll number.

### Roll Number Format
Examples:
- CE26XX → 1st Year
- CE25XX → 2nd Year
- CE24XX → 3rd Year
- CE23XX → 4th Year

### Logic Used
The academic year is calculated using batch-based logic:

Year = CurrentBatch - StudentBatch + 1

Example:
- Roll: CE25XX  
- Current Batch: 26  
- Year = 26 - 25 + 1 = 2

### Benefits
- Eliminates manual input errors
- Ensures consistency in data
- Automatically aligns students with correct exams

## ▶️ How to Run

1. Install dependencies:
   pip install mysql-connector-python reportlab

2. Start MySQL and import:
   - schema.sql
   - data.sql
   - trigger.sql
   - procedure.sql

3. Run the application:
   python3 app/gui.py