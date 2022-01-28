SELECT 
    mountain_range, peak_name, elevation AS peak_elevation
FROM
    peaks
        JOIN
    mountains ON peaks.mountain_id = mountains.id
WHERE
    mountain_range REGEXP '^s*Rilas*$'
ORDER BY peak_elevation DESC