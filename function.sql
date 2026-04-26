

DELIMITER //

CREATE FUNCTION fn_seats_used(p_exam_id INT, p_room_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM seating_arrangement
    WHERE exam_id = p_exam_id AND room_id = p_room_id;

    RETURN total;
END //

DELIMITER ;


