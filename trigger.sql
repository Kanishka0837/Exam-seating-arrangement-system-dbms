DELIMITER //

CREATE TRIGGER trg_prevent_double_booking
BEFORE INSERT ON seating_arrangement
FOR EACH ROW
BEGIN
    DECLARE cnt INT;

    SELECT COUNT(*) INTO cnt
    FROM seating_arrangement sa
    JOIN exams e1 ON sa.exam_id = e1.exam_id
    JOIN exams e2 ON e2.exam_id = NEW.exam_id
    WHERE sa.student_id = NEW.student_id
    AND e1.exam_date = e2.exam_date
    AND e1.exam_time = e2.exam_time;

    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Student already has exam at same time';
    END IF;
END //

DELIMITER ;