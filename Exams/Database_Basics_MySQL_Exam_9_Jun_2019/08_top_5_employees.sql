SELECT 
    CONCAT(first_name, ' ', last_name) AS `name`,
    started_on,
    COUNT(client_id) AS count_of_clients
FROM
    employees AS e
        JOIN
    employees_clients AS ec ON e.id = ec.employee_id
GROUP BY e.id
ORDER BY count_of_clients DESC , e.id
LIMIT 5