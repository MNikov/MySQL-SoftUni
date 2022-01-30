DELIMITER $$;
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN 
	DECLARE count INT;
    SET count := (SELECT COUNT(*) FROM employees 
    JOIN addresses USING(address_id) 
    JOIN towns USING(town_id) 
    WHERE towns.`name` = town_name);
    RETURN count;
END $$;