SELECT 
    first_name, last_name, make, model, mileage
FROM
    drivers AS d
        JOIN
    cars_drivers AS cd ON d.id = cd.driver_id
        JOIN
    cars AS c ON cd.car_id = c.id
WHERE
    mileage IS NOT NULL
ORDER BY mileage DESC , first_name