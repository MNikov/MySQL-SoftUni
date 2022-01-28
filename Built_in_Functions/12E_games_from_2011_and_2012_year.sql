SELECT 
    `name`, DATE_FORMAT(`start`, '%Y-%m-%d') AS `start`
FROM
    games
WHERE
    SUBSTRING(`start`, 1, 4) IN (2011 , 2012)
ORDER BY `start` , `name`
LIMIT 50;