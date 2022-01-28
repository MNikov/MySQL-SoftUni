SELECT 
    employee_id, first_name, salary, `name` AS department_name
FROM
    employees
        JOIN
    departments ON employees.department_id = departments.department_id
WHERE
    salary > 15000
ORDER BY employees.department_id DESC
LIMIT 5