SELECT 
    employee_id,
    first_name,
    last_name,
    `name` AS department_name
FROM
    employees
        JOIN
    departments ON employees.department_id = departments.department_id
WHERE
    `name` REGEXP '^s*Sales\s*$'
ORDER BY employee_id DESC