SELECT 
    `name`,
    price,
    best_before,
    CONCAT(SUBSTRING(`description` FROM 1 FOR 10),
            '...') AS short_description,
    url
FROM
    products AS pr
        JOIN
    pictures AS pi ON pr.picture_id = pi.id
WHERE
    LENGTH(`description`) > 100
        AND YEAR(added_on) < 2019
        AND price > 20
ORDER BY price DESC