DELIMITER $$;
CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50)) 
BEGIN
	UPDATE employees
    JOIN departments USING(department_id)
    SET salary = salary * 1.05
    WHERE departments.`name` = department_name;
END $$;