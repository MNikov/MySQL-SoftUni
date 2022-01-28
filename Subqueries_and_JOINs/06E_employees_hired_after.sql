SELECT 
    first_name, last_name, hire_date, `name`
FROM
    employees
        JOIN
    departments ON employees.department_id = departments.department_id
WHERE
    hire_date > '1999-01-01'
        AND `name` REGEXP '^s*(?:Sales|Finance)s*$'
ORDER BY hire_date