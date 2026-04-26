DELIMITER //

CREATE PROCEDURE sp_assign_seats(IN p_exam_id INT)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_student_id INT;
    DECLARE v_room_id INT;
    DECLARE v_capacity INT;
    DECLARE v_seat_no INT DEFAULT 1;

    DECLARE cur_students CURSOR FOR
        SELECT s.student_id
        FROM students s
        JOIN exams e 
        ON s.year = e.year AND s.dept_id = e.dept_id
        WHERE e.exam_id = p_exam_id
        ORDER BY s.roll_no;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    DELETE FROM seating_arrangement WHERE exam_id = p_exam_id;

    SELECT room_id, capacity INTO v_room_id, v_capacity
    FROM exam_rooms
    LIMIT 1;

    OPEN cur_students;

    read_loop: LOOP
        FETCH cur_students INTO v_student_id;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO seating_arrangement 
        (exam_id, student_id, room_id, seat_no)
        VALUES 
        (p_exam_id, v_student_id, v_room_id, CONCAT('S', v_seat_no));

        SET v_seat_no = v_seat_no + 1;

    END LOOP;

    CLOSE cur_students;

END //

DELIMITER ;