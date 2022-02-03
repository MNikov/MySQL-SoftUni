SELECT 
    a.`name`,
    (CASE
        WHEN HOUR(`start`) BETWEEN 6 AND 20 THEN 'Day'
        WHEN HOUR(`start`) IN (0 , 1, 2, 3, 4, 5, 21, 22, 23, 24) THEN 'Night'
    END) AS day_time,
    bill,
    full_name,
    make,
    model,
    categories.`name` AS category_name
FROM
    addresses AS a
        JOIN
    courses ON a.id = courses.from_address_id
        JOIN
    clients ON courses.client_id = clients.id
        JOIN
    cars ON courses.car_id = cars.id
        JOIN
    categories ON cars.category_id = categories.id
ORDER BY courses.id