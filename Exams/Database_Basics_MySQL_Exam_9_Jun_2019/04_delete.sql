DELETE FROM employees 
WHERE
    employees.id NOT IN (SELECT 
        employee_id
    FROM
        employees_clients)