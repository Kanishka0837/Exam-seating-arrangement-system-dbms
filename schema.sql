CREATE DATABASE exam_seating_db;
USE exam_seating_db;

CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) UNIQUE,
    dept_code VARCHAR(10) UNIQUE
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no VARCHAR(20) UNIQUE,
    student_name VARCHAR(100),
    year INT,
    dept_id INT
);

CREATE TABLE exam_rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_no VARCHAR(20) UNIQUE,
    capacity INT
);

CREATE TABLE exams (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    exam_name VARCHAR(100),
    exam_date DATE,
    exam_time TIME,
    year INT,
    dept_id INT
);

CREATE TABLE seating_arrangement (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    exam_id INT,
    student_id INT,
    room_id INT,
    seat_no VARCHAR(10),
    UNIQUE (exam_id, student_id),
    UNIQUE (exam_id, room_id, seat_no)
);