UPDATE employees AS e
        JOIN
    stores AS s ON e.store_id = s.id 
SET 
    manager_id = 3,
    salary = salary - 500
WHERE
    YEAR(hire_date) > 2003
        AND s.`name` NOT IN ('Cardguard' , 'Veribet')