-- Insert Departments
INSERT INTO departments (dept_name, dept_code) VALUES
('Computer Engineering', 'CE'),
('Information Technology', 'IT'),
('Electronics Engineering', 'EE'),
('Mechanical Engineering', 'ME'),
('Civil Engineering', 'CIV');

--------------------------------------------------

-- Insert Exam Rooms
INSERT INTO exam_rooms (room_no, capacity) VALUES
('A101', 30),
('A102', 30),
('B201', 25),
('B202', 25);

--------------------------------------------------

-- Insert Students
INSERT INTO students (roll_no, student_name, year, dept_id) VALUES
('CE2401', 'Aarav Shah', 1, 1),
('CE2402', 'Priya Mehta', 1, 1),
('CE2403', 'Rahul Patel', 1, 1),
('IT2401', 'Sneha Joshi', 1, 2),
('IT2402', 'Karan Desai', 1, 2),
('CE2301', 'Amit Verma', 2, 1),
('CE2302', 'Neha Singh', 2, 1),
('EE2301', 'Rohan Gupta', 2, 3),
('EE2302', 'Ananya Kumar', 2, 3),
('ME2201', 'Vikram Nair', 3, 4),
('ME2202', 'Divya Reddy', 3, 4),
('CE2201', 'Sanjay Iyer', 3, 1),
('CIV2101', 'Pooja Bhatt', 4, 5),
('CIV2102', 'Arjun Pandey', 4, 5),
('IT2101', 'Meera Kapoor', 4, 2),
('CSE126224', 'Kanishka Malpani', 1, 1),
('CSE126226', 'Shruti Kuril', 1, 1);

--------------------------------------------------

-- Insert Exams
INSERT INTO exams (exam_name, exam_date, exam_time, year, dept_id) VALUES
('Mid-Sem CE Y1',  '2025-11-10', '09:00:00', 1, 1),
('Mid-Sem IT Y1',  '2025-11-10', '09:00:00', 1, 2),
('End-Sem CE Y2',  '2025-11-12', '09:00:00', 2, 1),
('End-Sem EE Y2',  '2025-11-12', '11:00:00', 2, 3),
('Practical ME Y3','2025-11-14', '10:00:00', 3, 4),
('Final CIV Y4',   '2025-11-15', '09:00:00', 4, 5);

--------------------------------------------------
