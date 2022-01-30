DELIMITER $$;
CREATE PROCEDURE usp_get_employees_salary_above(salary_threshold DECIMAL(10, 4))
BEGIN
	SELECT first_name, last_name FROM employees
    WHERE salary >= salary_threshold
    ORDER BY first_name, last_name, employee_id;
END $$;
