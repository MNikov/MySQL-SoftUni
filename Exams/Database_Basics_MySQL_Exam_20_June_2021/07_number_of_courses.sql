SELECT 
    cars.id AS car_id,
    make,
    mileage,
    COUNT(courses.id) AS count_of_courses,
    ROUND(AVG(bill), 2) AS avg_bill
FROM
    cars
        LEFT JOIN
    courses ON cars.id = courses.car_id
GROUP BY cars.id
HAVING count_of_courses != 2
ORDER BY count_of_courses DESC , cars.id