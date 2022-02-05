SELECT 
    p.id,
    p.`date` AS date_and_time,
    `description`,
    COUNT(c.id) AS commentsCount
FROM
    photos AS p
        JOIN
    comments AS c ON p.id = c.photo_id
GROUP BY p.id
ORDER BY commentsCount DESC , id
LIMIT 5