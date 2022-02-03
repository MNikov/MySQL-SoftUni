SELECT 
    full_name,
    COUNT(car_id) AS count_of_cars,
    SUM(bill) AS total_sum
FROM
    clients
        JOIN
    courses ON clients.id = courses.client_id
WHERE
    full_name LIKE '_a%'
GROUP BY client_id
HAVING count_of_cars > 1
ORDER BY full_name