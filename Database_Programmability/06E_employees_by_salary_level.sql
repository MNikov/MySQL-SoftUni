DELIMITER $$;
CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	SELECT first_name, last_name FROM employees AS e1
    WHERE salary_level = (
		SELECT
			CASE 
            WHEN e2.salary < 30000 THEN 'Low'
            WHEN e2.salary BETWEEN 30000 AND 50000 THEN 'Average'
            ELSE 'High'
            END curr_salary_level
        FROM employees AS e2
        WHERE e1.employee_id = e2.employee_id
    )
    ORDER BY first_name DESC, last_name DESC;
END $$;
