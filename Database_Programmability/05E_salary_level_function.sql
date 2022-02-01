DELIMITER $$;
CREATE FUNCTION ufn_get_salary_level(emp_salary DOUBLE(10,4))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
	DECLARE salary_level VARCHAR(10);
    
    IF (emp_salary < 30000) THEN SET salary_level = 'Low';
    ELSEIF (emp_salary BETWEEN 30000 AND 50000) THEN SET salary_level = 'Average';
    ELSE SET salary_level = 'High';
    END IF;
    
    RETURN salary_level;
END $$;
