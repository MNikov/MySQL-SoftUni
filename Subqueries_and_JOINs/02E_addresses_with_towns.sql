SELECT 
    first_name, last_name, `name`, address_text
FROM
    employees
        JOIN
    addresses ON employees.address_id = addresses.address_id
        JOIN
    towns ON towns.town_id = addresses.town_id
ORDER BY first_name , last_name
LIMIT 5