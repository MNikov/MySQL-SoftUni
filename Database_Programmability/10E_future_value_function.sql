DELIMITER $$;
CREATE FUNCTION ufn_calculate_future_value (curr_sum DECIMAL(20 , 4), int_rate DOUBLE(4 , 2), years INT)
RETURNS DECIMAL (20 , 4)
DETERMINISTIC
BEGIN
	DECLARE future_value DECIMAL(20 , 4);
	
    SET future_value := curr_sum * POW((1 + int_rate), years);
    
    RETURN future_value;
END $$;
