SELECT 
    employee_id, job_title, e.address_id, address_text
FROM
    employees AS e
        JOIN
    addresses ON e.address_id = addresses.address_id
ORDER BY address_id
LIMIT 5