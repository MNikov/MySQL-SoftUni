DELIMITER $$;
CREATE PROCEDURE usp_get_towns_starting_with(start_string VARCHAR(20))
BEGIN
	SELECT `name` AS town_name FROM towns
    WHERE `name` LIKE CONCAT(start_string, '%')
    ORDER BY `name`;
END $$;
